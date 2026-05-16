#!/bin/bash
# link-validator.sh — Valida links internos em arquivos Markdown
# Verifica que todos os links relativos (prev/next, pré-requisitos, cruzados)
# resolvem para arquivos existentes no sistema de arquivos.
#
# Uso: ./scripts/link-validator.sh [diretório]
#   Se nenhum diretório for informado, usa o diretório atual.
#
# Saída:
#   - Lista de links quebrados com arquivo de origem, linha, texto e destino
#   - Resumo com total de links verificados e quantidade de quebrados
#
# Exit codes:
#   0 — Nenhum link quebrado encontrado
#   1 — Um ou mais links quebrados encontrados

set -uo pipefail

# Determinar diretório raiz para busca
SEARCH_DIR="${1:-.}"

# Arquivo temporário para contadores (subshells não propagam variáveis)
tmp_total=$(mktemp)
tmp_broken=$(mktemp)
echo "0" > "$tmp_total"
echo "0" > "$tmp_broken"

# Limpar arquivos temporários ao sair
cleanup() {
    rm -f "$tmp_total" "$tmp_broken"
}
trap cleanup EXIT

# Função para remover conteúdo dentro de backticks inline (code spans)
strip_inline_code() {
    # Remove trechos entre backticks para evitar falsos positivos
    # Trata backticks duplos (``...``) e simples (`...`)
    local line="$1"
    # Remover code spans com backticks duplos primeiro
    line=$(echo "$line" | sed 's/``[^`]*``//g')
    # Remover code spans com backtick simples
    line=$(echo "$line" | sed 's/`[^`]*`//g')
    echo "$line"
}

# Função para extrair e verificar links de uma linha
check_links_in_line() {
    local mdfile="$1"
    local line_num="$2"
    local line="$3"
    local file_dir
    file_dir=$(dirname "$mdfile")

    # Remover inline code spans antes de processar
    line=$(strip_inline_code "$line")

    # Processar a linha iterativamente para extrair todos os links [text](path)
    local remaining="$line"
    while true; do
        # Verificar se existe um padrão de link
        case "$remaining" in
            *\[*\]\(*\)*)
                # Extrair texto do link: tudo entre [ e ](
                local after_bracket="${remaining#*\[}"
                local link_text="${after_bracket%%\](*}"

                # Verificar se realmente temos o padrão ](
                local check="${after_bracket#*\](}"
                if [ "$check" = "$after_bracket" ]; then
                    break
                fi

                # Extrair caminho: tudo entre ]( e )
                local after_paren="${after_bracket#*\](}"
                local link_path="${after_paren%%)*}"

                # Avançar remaining para depois deste link
                remaining="${after_paren#*\)}"

                # Ignorar links externos
                case "$link_path" in
                    http://*|https://*|mailto:*) continue ;;
                esac

                # Remover fragmentos (#secao) do caminho
                local link_path_clean="${link_path%%#*}"

                # Ignorar links que são apenas fragmentos internos
                if [ -z "$link_path_clean" ]; then
                    continue
                fi

                # Incrementar total
                local current_total
                current_total=$(cat "$tmp_total")
                echo "$((current_total + 1))" > "$tmp_total"

                # Resolver caminho relativo ao diretório do arquivo fonte
                local resolved_path="$file_dir/$link_path_clean"

                # Verificar se o arquivo de destino existe
                if [ ! -e "$resolved_path" ]; then
                    local current_broken
                    current_broken=$(cat "$tmp_broken")
                    echo "$((current_broken + 1))" > "$tmp_broken"
                    echo "BROKEN: $mdfile:$line_num"
                    echo "  Texto: [$link_text]"
                    echo "  Destino: $link_path_clean"
                    echo ""
                fi
                ;;
            *)
                break
                ;;
        esac
    done
}

# Encontrar todos os arquivos .md recursivamente e processar cada um
find "$SEARCH_DIR" -name '*.md' -print0 | while IFS= read -r -d '' mdfile; do
    line_num=0
    in_code_block=0

    while IFS= read -r line || [ -n "$line" ]; do
        line_num=$((line_num + 1))

        # Detectar início/fim de blocos de código fenced (```)
        case "$line" in
            '```'*)
                if [ "$in_code_block" -eq 0 ]; then
                    in_code_block=1
                else
                    in_code_block=0
                fi
                continue
                ;;
        esac

        # Pular linhas dentro de blocos de código
        if [ "$in_code_block" -eq 1 ]; then
            continue
        fi

        # Só processar linhas que contêm padrão de link
        case "$line" in
            *\[*\]\(*\)*)
                check_links_in_line "$mdfile" "$line_num" "$line"
                ;;
        esac
    done < "$mdfile"
done

# Ler contadores finais
total_links=$(cat "$tmp_total")
broken_links=$(cat "$tmp_broken")

# Resumo
echo "========================================"
echo "Resumo da validação de links"
echo "========================================"
echo "Total de links internos verificados: $total_links"
echo "Links quebrados encontrados: $broken_links"
echo "========================================"

# Exit code
if [ "$broken_links" -gt 0 ]; then
    exit 1
else
    exit 0
fi
