<!-- 
  FIXTURE: fixture-valid-topic.md
  TESTA: TODOS os scripts (16.1–16.7)
  OBJETIVO: Tópico VÁLIDO que deve passar em TODAS as verificações:
  - Navegação prev/next correta conforme fixture-TOC.md
  - Introdução presente
  - Exemplo Java compilável com saída esperada
  - Seção 📌 Resumo presente
  - Exercícios presentes (3+, ≥1 conceitual, ≥1 codificação)
  - Contagem de palavras entre 400 e 2000
  - Todos os termos em negrito existem no glossario.md
  - Código compila com JDK 21
  - Sem sequências longas copiadas
  RESULTADO ESPERADO: Nenhum script deve reportar erro neste arquivo.
-->

# Encapsulamento em Java

← [Índice da Seção](./index.md) | [Próximo](./fixture-toc-inconsistency.md) →

**Pré-requisitos:** [O que é uma Classe](../concepts/class.md), [O que é um Objeto](../concepts/object.md)

---

## Introdução

O **Encapsulamento** é um dos pilares fundamentais da programação orientada a objetos. Ele consiste em ocultar os detalhes internos de implementação de um objeto, expondo apenas uma interface pública controlada para interação com o mundo externo. Em termos práticos, encapsulamento significa proteger os atributos de uma classe contra acesso direto, fornecendo métodos públicos (getters e setters) para leitura e modificação controlada desses atributos.

## Conceito Principal

O encapsulamento em Java é implementado através dos **Modificador de acesso**: `private`, `protected`, `public` e package-private (sem modificador). O modificador `private` restringe o acesso ao atributo apenas à própria classe, forçando que qualquer interação externa ocorra através de métodos públicos. Isso permite que a classe valide dados antes de aceitá-los e mantenha seu estado interno consistente.

A principal vantagem do encapsulamento é a separação entre interface e implementação. O código externo depende apenas da interface pública da classe — se a implementação interna mudar, o código cliente não precisa ser alterado, desde que a interface permaneça a mesma. Isso facilita a manutenção e evolução do software ao longo do tempo.

Outra vantagem importante é a validação de dados. Quando um atributo é acessado diretamente, qualquer valor pode ser atribuído a ele, incluindo valores inválidos. Com encapsulamento, o método setter pode verificar se o valor é válido antes de aceitá-lo, lançando uma **Exceção** caso contrário.

### Exemplo Básico

```java
public class ContaBancaria {
    // Atributos privados — encapsulados
    private String titular;
    private double saldo;

    // Construtor
    public ContaBancaria(String titular, double saldoInicial) {
        this.titular = titular;
        if (saldoInicial < 0) {
            throw new IllegalArgumentException("Saldo inicial não pode ser negativo");
        }
        this.saldo = saldoInicial;
    }

    // Getter — acesso controlado ao saldo
    public double getSaldo() {
        return this.saldo;
    }

    // Getter — acesso ao titular
    public String getTitular() {
        return this.titular;
    }

    // Método de negócio — depositar com validação
    public void depositar(double valor) {
        if (valor <= 0) {
            throw new IllegalArgumentException("Valor de depósito deve ser positivo");
        }
        this.saldo += valor;
    }

    // Método de negócio — sacar com validação
    public boolean sacar(double valor) {
        if (valor <= 0 || valor > this.saldo) {
            return false;
        }
        this.saldo -= valor;
        return true;
    }

    public static void main(String[] args) {
        ContaBancaria conta = new ContaBancaria("Maria Silva", 1000.0);
        System.out.println("Titular: " + conta.getTitular());
        System.out.println("Saldo inicial: R$ " + conta.getSaldo());

        conta.depositar(500.0);
        System.out.println("Após depósito: R$ " + conta.getSaldo());

        boolean sacou = conta.sacar(200.0);
        System.out.println("Saque realizado: " + sacou);
        System.out.println("Saldo final: R$ " + conta.getSaldo());
    }
}
```

### Saída Esperada

```text
Titular: Maria Silva
Saldo inicial: R$ 1000.0
Após depósito: R$ 1500.0
Saque realizado: true
Saldo final: R$ 1300.0
```

## Variações e Casos Avançados

### Encapsulamento com Records

A partir do Java 16, **Records** oferecem uma forma concisa de criar classes imutáveis com encapsulamento automático. Os componentes de um record são automaticamente privados e acessíveis apenas através de métodos de acesso gerados pelo compilador.

```java
public record Ponto(double x, double y) {
    // Construtor compacto com validação
    public Ponto {
        if (Double.isNaN(x) || Double.isNaN(y)) {
            throw new IllegalArgumentException("Coordenadas não podem ser NaN");
        }
    }

    // Método calculado — não expõe implementação interna
    public double distanciaOrigem() {
        return Math.sqrt(x * x + y * y);
    }

    public static void main(String[] args) {
        Ponto p = new Ponto(3.0, 4.0);
        System.out.println("Ponto: (" + p.x() + ", " + p.y() + ")");
        System.out.println("Distância da origem: " + p.distanciaOrigem());
    }
}
```

### Saída Esperada

```text
Ponto: (3.0, 4.0)
Distância da origem: 5.0
```

### Encapsulamento e Imutabilidade

Uma prática avançada de encapsulamento é tornar objetos completamente imutáveis — uma vez criados, seu estado não pode ser alterado. Isso elimina problemas de concorrência e torna o código mais previsível. Em Java, isso é alcançado declarando atributos como `final`, não fornecendo setters, e retornando cópias defensivas de coleções internas.

A combinação de encapsulamento com imutabilidade é particularmente poderosa em ambientes multi-thread, onde objetos imutáveis podem ser compartilhados entre **Virtual Threads** sem necessidade de sincronização.

⚠️ **Armadilha comum**: Expor referências mutáveis através de getters quebra o encapsulamento. Se um getter retorna uma referência direta a uma lista interna, código externo pode modificar essa lista sem passar pela validação da classe. Sempre retorne cópias defensivas (`List.copyOf()`) ou use coleções imutáveis.

## 📌 Resumo

- Encapsulamento oculta detalhes internos e expõe interface pública controlada
- Modificadores de acesso (`private`, `public`, `protected`) controlam visibilidade
- Getters e setters permitem validação de dados antes de aceitar valores
- Records (Java 16+) oferecem encapsulamento automático para dados imutáveis
- Cópias defensivas previnem vazamento de referências mutáveis

## Exercícios

1. **Conceitual:** Explique por que expor atributos como `public` viola o princípio de encapsulamento, mesmo que o programa funcione corretamente.
2. **Codificação:** Crie uma classe `Temperatura` encapsulada que armazena o valor em Celsius internamente, mas oferece métodos para obter o valor em Celsius, Fahrenheit e Kelvin. Valide que a temperatura não pode ser inferior ao zero absoluto (-273.15°C).
3. **Codificação:** Refatore a classe abaixo para aplicar encapsulamento adequado, incluindo validação no setter:
   ```java
   public class Produto {
       public String nome;
       public double preco;
       public int estoque;
   }
   ```
4. **Conceitual:** Compare o encapsulamento de uma classe tradicional com o de um Record. Em quais cenários cada abordagem é mais adequada?
