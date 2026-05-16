<!-- 
  FIXTURE: fixture-toc-inconsistency.md
  TESTA: toc-nav-checker.sh (task 16.5)
  OBJETIVO: Contém links prev/next que CONTRADIZEM a ordem definida em fixture-TOC.md.
  No fixture-TOC.md, a ordem é: fixture-valid-topic.md → fixture-toc-inconsistency.md → fixture-missing-structure.md
  Mas este arquivo declara prev/next invertidos (aponta para arquivos fora de ordem).
  RESULTADO ESPERADO: O script deve reportar inconsistência entre TOC e navegação deste arquivo.
-->

# Fixture — Inconsistência de Navegação com TOC

← [Anterior](./fixture-missing-structure.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-valid-topic.md) →

<!-- 
  ERRO DELIBERADO: Segundo fixture-TOC.md, o anterior deveria ser fixture-valid-topic.md
  e o próximo deveria ser fixture-missing-structure.md. Os links acima estão INVERTIDOS.
-->

---

## Introdução

Este tópico possui links de navegação que não correspondem à ordem definida na tabela de conteúdo. O script `toc-nav-checker.sh` deve detectar essa inconsistência.

## Conceito Principal

A navegação prev/next em cada tópico deve seguir estritamente a ordem definida no arquivo TOC.md. Quando um tópico declara um link "Anterior" ou "Próximo" que não corresponde à sequência do TOC, isso indica um erro de manutenção que pode confundir o leitor.

O script de validação compara a posição de cada arquivo no TOC com os links declarados no cabeçalho de navegação. Se o arquivo na posição N do TOC declara como "Próximo" um arquivo que está na posição N-1 (em vez de N+1), isso é uma inconsistência que deve ser reportada.

```java
public class NavegacaoExemplo {
    public static void main(String[] args) {
        System.out.println("Navegação deve seguir a ordem do TOC");
    }
}
```

## 📌 Resumo

- Links prev/next devem corresponder à ordem do TOC.md
- Inconsistências indicam erros de manutenção
- O script toc-nav-checker.sh automatiza essa verificação

## Exercícios

1. Por que a consistência entre TOC e navegação é importante?
2. Descreva um cenário onde inconsistências podem surgir naturalmente.
3. Como automatizar a correção de links de navegação?
