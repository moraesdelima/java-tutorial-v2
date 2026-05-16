<!-- 
  FIXTURE: fixture-word-count-long.md
  TESTA: word-count.sh (task 16.3)
  OBJETIVO: Contém 2100+ palavras de texto explicativo (acima do máximo de 2000).
  O script deve reportar este arquivo como acima do limite máximo.
  RESULTADO ESPERADO: O script deve reportar este arquivo como excedendo 2000 palavras de texto.
-->

# Fixture — Tópico Longo Demais

← [Anterior](./fixture-word-count-short.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-broken-link.md) →

---

## Introdução

Este tópico contém texto explicativo em excesso, ultrapassando o limite máximo de 2000 palavras definido para tópicos do tutorial. Ele serve como fixture para validar que o script de contagem de palavras detecta corretamente arquivos que excedem o limite superior.

## Conceito Principal — Parte 1

A programação orientada a objetos é um paradigma de desenvolvimento de software que organiza o código em torno de objetos, que são instâncias de classes. Cada objeto encapsula dados (atributos) e comportamentos (métodos) relacionados, formando uma unidade coesa de funcionalidade. Este paradigma surgiu como resposta à crescente complexidade dos sistemas de software, oferecendo mecanismos para gerenciar essa complexidade de forma estruturada e reutilizável.

Em Java, tudo gira em torno de classes e objetos. Uma classe define a estrutura e o comportamento que seus objetos terão. Quando criamos um objeto a partir de uma classe, estamos instanciando essa classe — ou seja, criando uma cópia concreta que existe na memória do programa e pode interagir com outros objetos. Cada objeto mantém seu próprio estado interno, representado pelos valores de seus atributos, e pode executar operações definidas pelos métodos da classe.

O conceito de encapsulamento é fundamental neste paradigma. Ele permite que os detalhes internos de implementação de um objeto fiquem ocultos do mundo externo, expondo apenas uma interface pública bem definida. Isso significa que outros objetos não precisam conhecer como um objeto funciona internamente — apenas precisam saber quais operações ele oferece e como invocá-las. Essa separação entre interface e implementação facilita a manutenção e evolução do código.

A herança é outro pilar da orientação a objetos. Ela permite que uma classe (subclasse) herde atributos e métodos de outra classe (superclasse), estabelecendo uma relação hierárquica entre tipos. Isso promove a reutilização de código e permite criar especializações de comportamento. Em Java, uma classe pode herdar de apenas uma superclasse direta, mas pode implementar múltiplas interfaces, oferecendo flexibilidade na modelagem de tipos.

## Conceito Principal — Parte 2

O polimorfismo permite que objetos de diferentes classes sejam tratados de forma uniforme através de uma interface comum. Quando um método é invocado em uma referência polimórfica, o comportamento executado depende do tipo real do objeto em tempo de execução, não do tipo da referência em tempo de compilação. Isso é conhecido como despacho dinâmico de métodos e é um dos mecanismos mais poderosos da orientação a objetos.

Interfaces em Java definem contratos que classes devem cumprir. Uma interface declara um conjunto de métodos que qualquer classe implementadora deve fornecer. Desde o Java 8, interfaces podem conter métodos default com implementação padrão, e desde o Java 9, podem conter métodos privados auxiliares. Isso ampliou significativamente o papel das interfaces na arquitetura de sistemas Java.

Classes abstratas ocupam um espaço intermediário entre classes concretas e interfaces. Elas podem conter tanto métodos abstratos (sem implementação) quanto métodos concretos (com implementação). Uma classe abstrata não pode ser instanciada diretamente — ela serve como base para subclasses que fornecem implementações para os métodos abstratos. Esse mecanismo é útil quando queremos definir um comportamento parcial que será completado por subclasses específicas.

O sistema de tipos de Java é estaticamente tipado, o que significa que o compilador verifica a compatibilidade de tipos em tempo de compilação. Isso previne muitos erros que só seriam detectados em tempo de execução em linguagens dinamicamente tipadas. O sistema de generics, introduzido no Java 5, ampliou essa segurança de tipos ao permitir parametrizar classes e métodos com tipos, eliminando a necessidade de casts inseguros.

## Conceito Principal — Parte 3

O tratamento de exceções em Java fornece um mecanismo estruturado para lidar com condições excepcionais que podem ocorrer durante a execução de um programa. Quando uma exceção é lançada, o fluxo normal de execução é interrompido e o controle é transferido para o bloco catch mais próximo que pode tratar aquele tipo de exceção. Isso separa o código de tratamento de erros do código de lógica principal, melhorando a legibilidade e manutenibilidade.

A hierarquia de exceções em Java é organizada a partir da classe Throwable, que tem duas subclasses principais: Error (para condições irrecuperáveis da JVM) e Exception (para condições que o programa pode tratar). Dentro de Exception, temos exceções verificadas (checked) que devem ser declaradas ou tratadas, e exceções não verificadas (unchecked) que estendem RuntimeException e não exigem tratamento explícito.

O mecanismo try-with-resources, introduzido no Java 7, simplifica o gerenciamento de recursos que precisam ser fechados após o uso. Qualquer objeto que implemente a interface AutoCloseable pode ser declarado no bloco try e será automaticamente fechado ao final do bloco, mesmo que uma exceção ocorra. Isso elimina a necessidade de blocos finally verbosos para fechar recursos manualmente.

Coleções em Java são estruturas de dados que agrupam múltiplos elementos e fornecem operações para manipulá-los. A Collections Framework define interfaces como List, Set, Map e Queue, cada uma com semânticas diferentes para armazenamento e acesso aos elementos. Implementações concretas como ArrayList, HashSet, HashMap e LinkedList oferecem diferentes características de desempenho para diferentes cenários de uso.

## Conceito Principal — Parte 4

A Stream API, introduzida no Java 8, revolucionou a forma como processamos coleções de dados em Java. Streams permitem expressar operações complexas de transformação e filtragem de dados de forma declarativa, usando uma cadeia de operações intermediárias e terminais. Operações como map, filter, reduce e collect substituem loops imperativos por expressões funcionais mais concisas e legíveis.

O sistema de módulos do Java, introduzido no Java 9 pelo Project Jigsaw, adicionou uma camada de encapsulamento acima dos pacotes. Um módulo define explicitamente quais pacotes exporta e de quais outros módulos depende. Isso permite que a JVM verifique dependências em tempo de compilação e inicialização, detectando problemas que antes só apareceriam em tempo de execução como ClassNotFoundException.

Records, introduzidos no Java 16, são um tipo especial de classe projetado para transportar dados imutáveis. Um record gera automaticamente construtor, métodos de acesso, equals, hashCode e toString a partir dos componentes declarados. Isso elimina grande parte do código boilerplate associado a classes de dados tradicionais, tornando o código mais conciso e menos propenso a erros.

Sealed classes, introduzidas no Java 17, permitem restringir quais classes podem estender uma determinada classe ou implementar uma interface. Usando a cláusula permits, o autor de uma classe pode enumerar explicitamente as subclasses permitidas. Isso é particularmente útil em combinação com pattern matching, pois o compilador pode verificar que todos os casos possíveis foram tratados em uma expressão switch.

## Conceito Principal — Parte 5

Virtual Threads, introduzidas no Java 21 pelo Project Loom, são threads leves gerenciadas pela JVM que permitem alta concorrência sem o custo de threads de sistema operacional. Enquanto threads de plataforma são mapeadas diretamente para threads do SO (com custo de memória de cerca de 1MB cada), virtual threads são multiplexadas sobre um pool menor de threads de plataforma, permitindo criar milhões de threads concorrentes.

Pattern Matching para switch, estabilizado no Java 21, permite usar padrões de tipo e guardas em expressões switch. Isso elimina cadeias de if-else com instanceof e casts, substituindo-as por uma construção mais declarativa e segura. O compilador verifica a exaustividade dos padrões, garantindo que todos os casos possíveis sejam tratados.

Sequenced Collections, introduzidas no Java 21, adicionam interfaces que definem ordem de encontro para coleções. As interfaces SequencedCollection, SequencedSet e SequencedMap fornecem métodos uniformes para acessar o primeiro e último elemento, reverter a ordem e adicionar elementos em posições específicas. Isso resolve uma lacuna histórica onde diferentes implementações de coleções ofereciam APIs inconsistentes para essas operações.

A inferência de tipo local com var, introduzida no Java 10, permite omitir o tipo explícito de variáveis locais quando o compilador pode deduzi-lo do inicializador. Isso reduz a verbosidade do código sem sacrificar a segurança de tipos, pois o compilador ainda verifica e atribui um tipo concreto à variável. No entanto, var deve ser usado com moderação — em casos onde o tipo não é óbvio pelo contexto, declarar o tipo explicitamente melhora a legibilidade.

## Conceito Principal — Parte 6

Text Blocks, introduzidos no Java 15, são literais de string multilinha delimitados por três aspas duplas. Eles preservam a formatação e indentação do texto, eliminando a necessidade de concatenação de strings e caracteres de escape para quebras de linha. Text blocks são particularmente úteis para SQL, JSON, HTML e outros formatos de texto estruturado embutidos no código Java.

Switch Expressions, estabilizadas no Java 14, transformam o switch de uma instrução em uma expressão que produz um valor. A nova sintaxe com seta elimina o fall-through acidental e a necessidade de break em cada caso. A palavra-chave yield permite retornar valores de blocos mais complexos dentro de um case. O compilador verifica a exaustividade, garantindo que todos os valores possíveis do seletor sejam cobertos.

A API de HTTP Client, introduzida no Java 11, substitui a antiga HttpURLConnection por uma API moderna, fluente e com suporte nativo a HTTP/2 e WebSocket. O HttpClient suporta tanto operações síncronas quanto assíncronas, usando CompletableFuture para chamadas não bloqueantes. A API é projetada com builders imutáveis que facilitam a configuração e reutilização de clientes HTTP.

Melhorias na Stream API foram introduzidas progressivamente desde o Java 9. Os métodos takeWhile e dropWhile permitem processar elementos enquanto uma condição é verdadeira. O método ofNullable cria um stream de zero ou um elemento a partir de um valor possivelmente nulo. No Java 16, o método toList() foi adicionado como atalho para Collectors.toUnmodifiableList(), simplificando uma das operações terminais mais comuns.

## Conceito Principal — Parte 7

O gerenciamento de memória em Java é realizado automaticamente pelo Garbage Collector, que identifica e libera memória ocupada por objetos que não são mais referenciados. Diferentes algoritmos de GC estão disponíveis na JVM, cada um otimizado para diferentes cenários: G1 (padrão desde Java 9) oferece bom equilíbrio entre throughput e latência, ZGC e Shenandoah minimizam pausas para aplicações sensíveis à latência.

A modularização do código é essencial para sistemas de grande porte. Pacotes organizam classes relacionadas em namespaces lógicos, prevenindo conflitos de nomes e controlando visibilidade. Módulos adicionam uma camada superior de organização, agrupando pacotes e definindo fronteiras claras entre componentes. Essa estrutura hierárquica facilita a compreensão, manutenção e evolução de sistemas complexos ao longo do tempo.

Anotações em Java são metadados associados a elementos do código-fonte que podem ser processados em tempo de compilação ou execução. Anotações predefinidas como Override, Deprecated e SuppressWarnings comunicam intenções ao compilador. Anotações customizadas permitem criar frameworks declarativos onde o comportamento é configurado por metadados em vez de código imperativo, como vemos em frameworks como Spring e JPA.

O sistema de tipos genéricos permite escrever código que opera sobre diferentes tipos de forma segura. Bounded type parameters restringem os tipos aceitos, wildcards expressam flexibilidade na relação entre tipos, e type erasure garante compatibilidade com código legado. Compreender generics profundamente é essencial para usar efetivamente a Collections Framework e criar APIs reutilizáveis e type-safe.

## Conceito Principal — Parte 8

A programação funcional em Java ganhou força significativa com a introdução de expressões lambda e a Stream API no Java 8. Antes dessas adições, Java era considerada uma linguagem puramente orientada a objetos, mas a incorporação de conceitos funcionais trouxe novas possibilidades para escrever código mais conciso e expressivo. Interfaces funcionais como Predicate, Function, Consumer e Supplier formam a base do suporte funcional em Java.

O conceito de imutabilidade, central na programação funcional, também se tornou mais acessível em Java com a introdução de Records no Java 16. Records incentivam a criação de objetos imutáveis por padrão, reduzindo bugs relacionados a estado compartilhado mutável. Combinados com Sealed Classes, Records permitem modelar domínios de forma segura e expressiva, onde o compilador garante que todos os casos possíveis são tratados.

A evolução do Java demonstra um compromisso com a retrocompatibilidade enquanto incorpora paradigmas modernos. Cada nova versão adiciona funcionalidades sem quebrar código existente, permitindo que projetos migrem gradualmente para as novas features. Essa abordagem conservadora mas progressiva é uma das razões pela longevidade e relevância contínua da plataforma Java no desenvolvimento de software empresarial e de sistemas de grande escala. O ecossistema de ferramentas, bibliotecas e frameworks construído ao redor da linguagem continua crescendo e se adaptando às demandas modernas de desenvolvimento.

## 📌 Resumo

- A orientação a objetos organiza código em classes e objetos
- Java oferece encapsulamento, herança, polimorfismo e abstração
- Features modernas do Java 9 ao 21 expandem significativamente a linguagem
- O sistema de tipos estático previne erros em tempo de compilação

## Exercícios

1. Explique a diferença entre classe abstrata e interface no Java moderno.
2. Implemente um exemplo usando records e sealed classes juntos.
3. Compare o uso de threads de plataforma com virtual threads em um cenário de alta concorrência.
