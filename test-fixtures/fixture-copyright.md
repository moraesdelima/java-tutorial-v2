<!-- 
  FIXTURE: fixture-copyright.md
  TESTA: copyright-checker.sh (task 16.1)
  OBJETIVO: Contém uma sequência de 12+ palavras consecutivas que simula conteúdo copiado.
  O script deve detectar n-grams de 10+ palavras que coincidam com corpus de referência.
  RESULTADO ESPERADO: O script deve reportar este arquivo como possível violação de copyright.
-->

# Fixture — Teste de Detecção de Copyright

← [Anterior](./fixture-valid-topic.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-compile-fail.md) →

---

## Introdução

Este arquivo contém texto sintético para testar o script de verificação de copyright.

## Conteúdo com Possível Violação

O parágrafo abaixo simula uma sequência longa de palavras que poderia ser encontrada em documentação externa:

The Java programming language is a general-purpose concurrent class-based object-oriented programming language designed to have as few implementation dependencies as possible so that application developers can write once and run anywhere without recompilation.

Esse trecho acima contém mais de 12 palavras consecutivas que simulam conteúdo copiado de uma fonte externa. O script `copyright-checker.sh` deve identificar essa sequência como potencial violação.

## 📌 Resumo

- Este arquivo serve exclusivamente como fixture de teste
- O script de copyright deve detectar a sequência longa acima
- Nenhum conteúdo real do tutorial deve conter sequências assim
