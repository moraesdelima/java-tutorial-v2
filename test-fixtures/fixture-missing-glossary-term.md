<!-- 
  FIXTURE: fixture-missing-glossary-term.md
  TESTA: glossary-checker.sh (task 16.7)
  OBJETIVO: Usa os termos **Coroutine** e **Fiber** em negrito (primeira menção) — 
  termos que NÃO existem no glossario.md. O script deve detectar que esses termos
  em negrito não possuem entrada correspondente no glossário.
  RESULTADO ESPERADO: O script deve reportar "Coroutine" e "Fiber" como termos sem entrada no glossário.
-->

# Fixture — Termos sem Entrada no Glossário

← [Anterior](./fixture-missing-structure.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-valid-topic.md) →

---

## Introdução

Este tópico discute conceitos de concorrência leve em linguagens de programação modernas, incluindo termos que não estão definidos no glossário do tutorial.

## Conceito Principal

A concorrência em linguagens modernas evoluiu significativamente. Além das **Virtual Threads** do Java 21, outras linguagens implementam mecanismos similares com nomes diferentes.

Uma **Coroutine** é uma generalização de sub-rotinas que permite suspender e retomar a execução em pontos específicos. Diferente de threads, coroutines são cooperativas — elas cedem o controle explicitamente em vez de serem preemptadas pelo escalonador do sistema operacional. Linguagens como Kotlin e Python utilizam coroutines extensivamente para programação assíncrona.

O conceito de **Fiber** é similar ao de virtual thread — trata-se de uma unidade leve de execução gerenciada pelo runtime da linguagem, não pelo sistema operacional. Fibers permitem alta concorrência com baixo custo de memória, pois compartilham threads de plataforma subjacentes. O Project Loom do Java inicialmente usou o termo "fiber" antes de adotar "virtual thread" como nomenclatura oficial.

A diferença fundamental entre esses mecanismos está no modelo de escalonamento: **Coroutine** usa escalonamento cooperativo (a própria coroutine decide quando ceder), enquanto **Fiber** e **Virtual Threads** podem usar escalonamento preemptivo gerenciado pelo runtime.

```java
public class ConcorrenciaModerna {
    public static void main(String[] args) throws InterruptedException {
        // Virtual Threads — a abordagem Java para concorrência leve
        Thread vt = Thread.ofVirtual().start(() -> {
            System.out.println("Executando em virtual thread");
        });
        vt.join();
        System.out.println("Concluído");
    }
}
```

### Saída Esperada

```text
Executando em virtual thread
Concluído
```

## 📌 Resumo

- **Coroutine** e **Fiber** são conceitos de concorrência leve de outras linguagens
- Java adotou o termo Virtual Threads para seu mecanismo de threads leves
- O glossário deve conter todos os termos técnicos usados em negrito no tutorial

## Exercícios

1. Qual a diferença entre escalonamento cooperativo e preemptivo?
2. Por que o Java escolheu o termo "virtual thread" em vez de "fiber"?
3. Implemente um exemplo que cria 10.000 virtual threads simultâneas.
