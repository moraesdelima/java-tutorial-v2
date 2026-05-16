<!-- 
  FIXTURE: fixture-word-count-short.md
  TESTA: word-count.sh (task 16.3)
  OBJETIVO: Contém apenas ~100 palavras de texto explicativo (abaixo do mínimo de 400).
  Inclui blocos de código que NÃO devem ser contados na contagem de palavras.
  RESULTADO ESPERADO: O script deve reportar este arquivo como abaixo do limite mínimo (400 palavras).
-->

# Fixture — Tópico Curto Demais

← [Anterior](./fixture-compile-fail.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-word-count-long.md) →

---

## Introdução

Este tópico tem pouco texto explicativo. Serve para testar a detecção de arquivos curtos.

## Conceito Principal

Variáveis armazenam valores na memória. Em Java, toda variável tem um tipo definido em tempo de compilação. O compilador verifica a compatibilidade de tipos automaticamente.

```java
public class VariavelCurta {
    public static void main(String[] args) {
        int numero = 10;
        double decimal = 3.14;
        String texto = "Java";
        System.out.println(numero + " " + decimal + " " + texto);
    }
}
```

```text
10 3.14 Java
```

## 📌 Resumo

- Variáveis têm tipo definido
- O compilador verifica tipos

## Exercícios

1. O que acontece ao atribuir um valor incompatível?
2. Declare três variáveis de tipos diferentes.
3. Explique a diferença entre tipo primitivo e referência.
