<!-- 
  FIXTURE: fixture-compile-fail.md
  TESTA: compile-examples.sh (task 16.2)
  OBJETIVO: Contém DOIS blocos de código Java — um válido (compila) e um com erro deliberado
  (falta de ponto-e-vírgula). O script deve reportar o bloco com erro e aceitar o válido.
  RESULTADO ESPERADO: O script deve reportar erro de compilação no segundo bloco.
-->

# Fixture — Teste de Compilação de Exemplos

← [Anterior](./fixture-copyright.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-word-count-short.md) →

---

## Introdução

Este arquivo contém dois exemplos Java para testar o script de compilação.

## Exemplo Válido (deve compilar)

```java
public class ExemploValido {
    public static void main(String[] args) {
        String mensagem = "Olá, mundo!";
        System.out.println(mensagem);
    }
}
```

### Saída Esperada

```text
Olá, mundo!
```

## Exemplo com Erro (NÃO deve compilar)

```java
public class ExemploComErro {
    public static void main(String[] args) {
        // ERRO DELIBERADO: falta ponto-e-vírgula na linha abaixo
        int valor = 42
        System.out.println("Valor: " + valor);
    }
}
```

O bloco acima possui um erro de compilação intencional: a variável `valor` não termina com ponto-e-vírgula. O script `compile-examples.sh` deve detectar esse erro e reportar a localização.

## 📌 Resumo

- O primeiro bloco Java compila corretamente
- O segundo bloco possui erro deliberado (falta `;`)
- O script deve reportar apenas o segundo bloco como falha
