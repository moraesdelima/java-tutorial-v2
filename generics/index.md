# Seção: Generics

← [Voltar ao Índice](../index.md) | [TOC](../TOC.md)

---

## Visão Geral

Esta seção apresenta o sistema de tipos genéricos do Java, que permite escrever código reutilizável e seguro em relação a tipos. Você aprenderá a criar classes e métodos genéricos, aplicar restrições com bounded types, utilizar wildcards para flexibilidade e entender como o mecanismo de type erasure funciona internamente. Generics são essenciais para trabalhar com coleções e APIs modernas do Java.

## Tópicos

- [Por que Generics?](./why.md) — Motivação, benefícios e problemas que generics resolvem
- [Tipos Genéricos](./types.md) — Declaração de classes e interfaces genéricas
- [Métodos Genéricos](./methods.md) — Métodos com parâmetros de tipo próprios
- [Bounded Type Parameters](./bounded.md) — Restrições de tipo com extends e super
- [Herança com Generics](./inheritance.md) — Subtipos e compatibilidade entre tipos genéricos
- [Wildcards](./wildcards.md) — Curingas para flexibilidade em parâmetros de tipo
- [Type Erasure](./erasure.md) — Como o compilador remove informações de tipo genérico
