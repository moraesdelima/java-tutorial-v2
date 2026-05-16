<!-- 
  FIXTURE: fixture-missing-structure.md
  TESTA: structure-checker.sh (task 16.6)
  OBJETIVO: Arquivo de tópico que está FALTANDO a seção obrigatória "📌 Resumo" e 
  a seção de exercícios. Possui introdução e código Java, mas não possui os elementos
  obrigatórios definidos no template de tópico.
  RESULTADO ESPERADO: O script deve reportar ausência de "📌 Resumo" e de "Exercícios".
-->

# Fixture — Tópico com Estrutura Incompleta

← [Anterior](./fixture-toc-inconsistency.md) | [Índice da Seção](./index.md) | [Próximo](./fixture-missing-glossary-term.md) →

---

## Introdução

Este tópico demonstra o uso de variáveis em Java. Variáveis são espaços nomeados na memória que armazenam valores durante a execução do programa. Cada variável possui um tipo que determina quais valores ela pode conter e quais operações podem ser realizadas sobre ela.

## Conceito Principal

Em Java, existem três categorias de variáveis: variáveis locais (declaradas dentro de métodos), variáveis de instância (declaradas na classe, fora de métodos) e variáveis de classe (declaradas com o modificador static). Cada categoria tem escopo e ciclo de vida diferentes.

A declaração de uma variável em Java segue o formato: tipo nome = valor. O tipo pode ser um tipo primitivo (int, double, boolean, etc.) ou um tipo de referência (String, List, etc.). A partir do Java 10, podemos usar var para inferência de tipo local.

```java
public class VariaveisExemplo {
    // Variável de classe (estática)
    static int contador = 0;
    
    // Variável de instância
    String nome;
    
    public static void main(String[] args) {
        // Variável local
        int idade = 25;
        var mensagem = "Olá, Java 21!";
        
        System.out.println(mensagem + " Idade: " + idade);
        contador++;
        System.out.println("Contador: " + contador);
    }
}
```

### Saída Esperada

```text
Olá, Java 21! Idade: 25
Contador: 1
```

## Variações

Variáveis finais não podem ter seu valor alterado após a inicialização. Isso é útil para constantes e para garantir imutabilidade em contextos onde a segurança de thread é importante.

<!-- 
  NOTA: Este arquivo DELIBERADAMENTE não possui as seções:
  - 📌 Resumo (obrigatória)
  - Exercícios (obrigatória, mín. 3)
  O script structure-checker.sh deve detectar essas ausências.
-->
