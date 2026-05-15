# Glossário do Tutorial Java

Este glossário centraliza as definições de termos técnicos utilizados ao longo do tutorial. Ele serve como referência canônica para resolução de conflitos de terminologia — todos os arquivos do tutorial devem usar os mesmos termos definidos aqui.

---

## Termos em Português

| Termo | Definição |
|-------|----------|
| Classe | Modelo ou molde que define a estrutura e o comportamento de objetos, contendo atributos e métodos. |
| Objeto | Instância de uma classe, com estado (valores dos atributos) e comportamento (métodos). |
| Herança | Mecanismo pelo qual uma classe (subclasse) adquire atributos e métodos de outra classe (superclasse). |
| Interface | Contrato que define um conjunto de métodos que uma classe deve implementar, sem fornecer implementação padrão (exceto métodos default). |
| Polimorfismo | Capacidade de um objeto assumir múltiplas formas, permitindo que referências de um tipo mais genérico apontem para objetos de tipos mais específicos. |
| Encapsulamento | Princípio de ocultar os detalhes internos de implementação, expondo apenas uma interface pública controlada. |
| Abstração | Processo de representar conceitos essenciais sem incluir detalhes de implementação. |
| Pacote | Agrupamento lógico de classes e interfaces relacionadas, usado para organização e controle de acesso. |
| Módulo | Unidade de encapsulamento introduzida no Java 9 que agrupa pacotes e define dependências explícitas entre componentes. |
| Exceção | Evento que interrompe o fluxo normal de execução de um programa, representado por um objeto da hierarquia de `Throwable`. |
| Coleção | Estrutura de dados que agrupa múltiplos elementos, fornecendo operações para inserção, remoção, busca e iteração. |
| Genérico (Generic) | Mecanismo que permite parametrizar classes, interfaces e métodos com tipos, garantindo segurança de tipos em tempo de compilação. |
| Anotação | Metadado associado a elementos do código-fonte (classes, métodos, campos) que pode ser processado em tempo de compilação ou execução. |
| Tipo primitivo | Tipo de dado básico da linguagem (byte, short, int, long, float, double, char, boolean) que não é um objeto. |
| Autoboxing | Conversão automática entre tipos primitivos e suas classes wrapper correspondentes (ex.: int → Integer). |
| Unboxing | Conversão automática de uma classe wrapper para o tipo primitivo correspondente (ex.: Integer → int). |
| Sobrescrita (Override) | Redefinição de um método herdado em uma subclasse, mantendo a mesma assinatura. |
| Sobrecarga (Overload) | Definição de múltiplos métodos com o mesmo nome mas assinaturas diferentes na mesma classe. |
| Construtor | Método especial invocado na criação de um objeto, responsável por inicializar seu estado. |
| Modificador de acesso | Palavra-chave que controla a visibilidade de classes, métodos e campos (public, protected, private, package-private). |
| Classe abstrata | Classe que não pode ser instanciada diretamente e pode conter métodos abstratos (sem implementação). |
| Classe interna | Classe definida dentro de outra classe, com acesso aos membros da classe externa. |
| Expressão lambda | Função anônima que pode ser passada como argumento ou atribuída a uma variável de interface funcional. |
| Referência de método | Sintaxe abreviada para expressões lambda que invocam um método existente (ex.: `String::toUpperCase`). |
| Enumeração (Enum) | Tipo especial de classe que define um conjunto fixo de constantes nomeadas. |
| Wildcard | Caractere curinga (`?`) usado em generics para representar um tipo desconhecido. |
| Type Erasure | Processo pelo qual o compilador Java remove informações de tipo genérico em tempo de compilação, substituindo por tipos brutos. |
| Inferência de tipo | Capacidade do compilador de deduzir automaticamente o tipo de uma variável ou expressão a partir do contexto. |
| Bloco de inicialização | Bloco de código executado durante a criação de um objeto (instância) ou carregamento da classe (estático). |
| Iterador | Objeto que permite percorrer os elementos de uma coleção sequencialmente. |
| Interface funcional | Interface com exatamente um método abstrato, podendo ser usada como alvo de expressões lambda. |
| Tratamento de exceções | Mecanismo de captura e resposta a condições excepcionais usando try-catch-finally. |
| Recurso gerenciado | Objeto que implementa `AutoCloseable` e pode ser usado com try-with-resources para liberação automática. |

---

## Termos Mantidos em Inglês

Os termos abaixo são mantidos em inglês por não possuírem tradução consolidada em português na comunidade Java. Na primeira menção em cada tópico, devem aparecer em itálico com explicação em português.

| Termo (EN) | Explicação (PT-BR) |
|------------|--------------------|
| Records | Tipo especial de classe imutável introduzido no Java 16 que gera automaticamente construtor, getters, `equals()`, `hashCode()` e `toString()` a partir dos componentes declarados. |
| Sealed Classes | Classes seladas introduzidas no Java 17 que restringem quais outras classes podem estendê-las, usando a cláusula `permits`. |
| Virtual Threads | Threads leves gerenciadas pela JVM, introduzidas no Java 21, que permitem alta concorrência sem o custo de threads de sistema operacional. |
| Pattern Matching | Mecanismo que permite testar a estrutura de um valor e extrair seus componentes em uma única operação, disponível para `instanceof` (Java 16) e `switch` (Java 21). |
| Switch Expressions | Evolução do `switch` tradicional introduzida no Java 14 que permite usar `switch` como expressão (com valor de retorno) usando sintaxe de seta (`->`) e `yield`. |
| Text Blocks | Literais de string multilinha delimitados por `"""`, introduzidos no Java 15, que preservam formatação e indentação. |
| Sequenced Collections | Interfaces introduzidas no Java 21 (`SequencedCollection`, `SequencedSet`, `SequencedMap`) que definem ordem de encontro e acesso ao primeiro/último elemento. |
| Stream | Sequência de elementos que suporta operações de processamento funcional (map, filter, reduce) sobre coleções de dados. |
| var | Palavra reservada para inferência de tipo local introduzida no Java 10, usada em variáveis locais onde o compilador deduz o tipo. |
| Preview | Recurso da linguagem disponibilizado em versão preliminar para avaliação da comunidade antes de se tornar estável (GA). |
| Garbage Collector | Mecanismo automático da JVM responsável por liberar memória ocupada por objetos que não são mais referenciados. |
| Bounded Type Parameter | Parâmetro de tipo genérico restrito a um supertipo específico usando `extends` (ex.: `<T extends Comparable<T>>`). |
| Wildcard | Caractere curinga (`?`) em generics que representa um tipo desconhecido, podendo ser limitado com `extends` ou `super`. |
| Type Erasure | Processo de remoção de informações de tipo genérico pelo compilador, garantindo compatibilidade com código pré-generics. |
| Autoboxing | Conversão automática realizada pelo compilador entre tipos primitivos e suas classes wrapper. |
| Override | Anotação e mecanismo de redefinição de método herdado em uma subclasse. |
| Default Method | Método com implementação definido em uma interface usando a palavra-chave `default`, introduzido no Java 8. |
| Try-with-Resources | Construção `try` que declara recursos `AutoCloseable` e garante seu fechamento automático ao final do bloco. |
| Structured Concurrency | Modelo de programação concorrente que trata grupos de tarefas relacionadas como uma unidade, facilitando cancelamento e tratamento de erros. |
| Project Loom | Projeto do OpenJDK que introduziu Virtual Threads e Structured Concurrency no Java 21. |
| Project Jigsaw | Projeto do OpenJDK que introduziu o sistema de módulos no Java 9. |
