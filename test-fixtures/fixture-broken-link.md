<!-- 
  FIXTURE: fixture-broken-link.md
  TESTA: link-validator.sh (task 16.4)
  OBJETIVO: Contém links internos que apontam para arquivos inexistentes.
  O script deve detectar que os destinos dos links não existem no sistema de arquivos.
  RESULTADO ESPERADO: O script deve reportar pelo menos 2 links quebrados neste arquivo.
-->

# Fixture — Teste de Links Quebrados

← [Anterior](./fixture-word-count-long.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-toc-inconsistency.md) →

**Pré-requisitos:** [Tópico Inexistente](./nonexistent.md), [Outro Tópico](../fake/path.md)

---

## Introdução

Este arquivo contém links internos deliberadamente quebrados para testar o script de validação de links.

## Links Quebrados

Os links abaixo apontam para arquivos que não existem:

- [Tópico](./nonexistent.md) — este arquivo não existe no diretório
- [Anterior](../fake/path.md) — este caminho não existe na estrutura

## Links Adicionais Quebrados

Veja também:
- [Conceitos Avançados](../avancado/topico-fantasma.md)
- [Referência Cruzada](../../outro-projeto/arquivo.md)

## Conceito

O validador de links deve percorrer todos os links em formato Markdown `[texto](caminho)` e verificar se o arquivo de destino existe. Links para URLs externas (http/https) podem ser ignorados, mas links relativos internos devem sempre resolver para um arquivo existente.

```java
public class LinkExample {
    public static void main(String[] args) {
        System.out.println("Este exemplo compila normalmente");
    }
}
```

## 📌 Resumo

- Links internos devem sempre apontar para arquivos existentes
- O script link-validator.sh verifica a existência dos destinos
- Este arquivo contém 4 links quebrados deliberados

## Exercícios

1. Por que links quebrados são problemáticos em documentação?
2. Como um validador de links pode diferenciar links internos de externos?
3. Implemente uma verificação simples de links em um script shell.
