<!-- 
  FIXTURE: fixture-TOC.md
  TESTA: toc-nav-checker.sh (task 16.5)
  OBJETIVO: Define a ordem canônica de navegação para os arquivos de fixture.
  O script toc-nav-checker.sh usa este arquivo para verificar se os links prev/next
  nos tópicos correspondem à ordem aqui definida.
  ORDEM DEFINIDA: fixture-valid-topic.md → fixture-toc-inconsistency.md → fixture-missing-structure.md
  RESULTADO ESPERADO: fixture-toc-inconsistency.md deve ser reportado como inconsistente
  (seus links prev/next não correspondem a esta ordem).
-->

# Tabela de Conteúdo — Fixtures de Teste

Esta tabela define a ordem canônica de navegação para os arquivos de fixture usados nos testes de validação.

---

## 1. Tópicos de Teste (`test-fixtures/`)

- [Encapsulamento em Java](./fixture-valid-topic.md)
- [Inconsistência de Navegação com TOC](./fixture-toc-inconsistency.md)
- [Tópico com Estrutura Incompleta](./fixture-missing-structure.md)
