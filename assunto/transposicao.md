# Lista de transposição

## Em um relacionamento binário `1:1`  

- quando duas entidades são **obrigatórias** cada entidade se torna uma tabela, e a `pk` de qualquer entidade pode aparecer na tabela da outra entidade como `fk`.
- é mais eficiente colocar a `fk` na tabela com menos linhas;
- quando, em uma das entidades, o relacionamento é **opcional** deve conter a `fk` da outra entidade em sua tabela transformada.
- quando as duas entidades são **opcionais** qualquer entidade pode conter a `fk` embutida da outra entidade, com `null` permitido na `fk`.
 
## Em relacionamento binário `1:m`

- esse tipo de relacionamento poderá ser **opcional** ou **obrigatório** no lado `m`, sem afetar a tranformação.
- no lado `1` ele pode ser **obrigatório** ou **opcional**.
- em todos os casos a `fk` deverá ficar no lado `m`, que representa a entidade filha
- com `null` permitido para `fk` nos casos em que no lado `1` for opcional.

## Em relacionamentos binário `m:n`

- em sendo **opcional** para as duas entidades uma nova tabela será criada com a `pk` de cada entidade;
- a mesma regra para os casos onde o condição for **obrigatório**;
- a cláusula `not null` deverá aparecer para as `fk's` nos dois casos, a cima;
- sem afetar as definições de `null` ou `not null`, a tebela `SQL` derivada de uma entidade **opcional** pode ter `0` linhas;
- não usa `unique`;

As regras de restrição para a `fk` sobre `update` e `delete` para relacionamento `m:n`, `ternários` e `generalização` transformados em tabelas `SQL` sempre precisam ser propagadas, pois cada valor da tabela depende da existência da `pk` referenciada.

## Relacionamento ternário e n-ário

Nesse tipo de relacionamento não é permitida a `opcionalidade` e a restrição `unique` não pode ser usada para atributos individuais.

### Tipos de ternários

- n-ários possuem `n + 1` variações possíveis de conectividade;
- existem `4` variações possíveis em um relacionamento **ternário**;
- todas as variações são transpostas para uma tabela `SQL` que deve conter as `pk’s` de todas as entidades: declaração das `fk's`.

### quando cada relacionamento tem cardinalidade `1:1:1` a tabela **resultante** tem:

- todas os atributos `pk's` das entidades `pais` são declarados como `chave candidata` na entidade resultante `filha`;
- têm-se `3` `pk’s` distintas possíveis;
- `2` `chaves candidatas`: `pk's` das tabelas `pais`, são declaradas como `pk` da tabela `filha`;
- cada `uma` das entidades declaradas como `pk` fará par com a `chave candidata` que não foi declarada como `pk`, por meio de `2` regras `unique`: uma `unique` para cada;
- são `3` as dependências funcionais - `Df’s`;
- não existe **opcionalidade**. pois todas as `n` entidades precisam de cada instância do relacionamento;
- o `n.º` de relacionamentos define o limite inferior sobre o `n.º` de `DF’s`;
    
### quando cada relacionamento tem cardinalidade `1:1:m` a tabela **resultante** tem:

- todas os atributos `pk's` das entidades `pais` são declarados como `chave candidata` na entidade resultante `filha`;
- `2` `chaves candidatas`, `pk's` das tabelas `pais`, são declaradas como `pk` da tabela `filha`: uma com grau de cardinalidade `1` e a outra com grau de cardinalidade `m`;
- as entidades declaradas como `pk` que tem grau cardinalidade `m` fará par com a `chave candidata` que não foi declarada como `pk`, por meio de `1` regras `unique`;
- `2` `pk’s` distintas possíveis entre `1` e `1`;
- são `2` as dependências funcionais - `Df’s`;
    
### quando cada relacionamento tem cardinalidade `1:m:n` a tabela **resultante** tem:

- todas os atributos `pk's` das entidades `pais` são declarados como `chave candidata` na entidade resultante `filha`;
- `2` `chaves candidatas`, `pk's` das tabelas `pais`, são declaradas como `pk` da tabela `filha`: as `2` `chaves candidatas` com grau de cardinalidade `m` e `n`;
- `1` `pk` possíveis entre `m` e `n`;
- é `1` a dependência funcional - `Df`.
    
### quando cada relacionamento tem cardinalidade `m:m:n` a tabela **resultante** tem: 

todas os atributos `pk's` das entidades `pais` são declarados como `chave candidata` na entidade resultante `filha`;
- têm-se `1` `pk` possíveis;
- `3` `chaves candidatas`, `pk's` das tabelas `pais`, são declaradas como `pk` da tabela `filha`;
- `uma` única `pk` composta, sem considerar os atributos próprios do relacionamento;
- é `0` a dependência funcional - `Df`.

### n-ário generalização

A transformação de uma abstração **generalizada** pode produzir tabelas `SQL` separadas para entidades genéricas ou `supertipos` para cada um dos subtipos.

Imagine que um `indivíduo` pode ser considerado `funcionário` ou um `cliente` ou `ambos` ou até mesmo `nada`

Para essas situação, temos:

- cada entidade terá seu conjunto de atributos e regras, a saber: `chave candidata`, `atributos não chave` e `pk`;
- a entidade pai passa a ser chamada de `supertipo` e as entidades filhas de `subtipo`;
- os atributos `não chave` da entidade `supertipo` são comuns aos `subtipos`;
- as entidades `subtipos`, neste caso `funcionário` e `cliente`, terão as `fk's` definidas por meio das `chaves candidatas` que se tornaram `pk's`, referenciando a entidade `supertipo`.

### n-ário agregação

A transformação de uma abstração de **agregação** também produz tabelas separadas prara a entidade `supertipo` e as entidades `subtipos`. Contudo, não existem atributos comuns e restrições de integridade a serem mantidas.

---

## Exemplos

Diagramas transpostos para código `SQL`, que representam um fato do `mini mundo` conforme uma certa regra de transposição. 


> ![tranposicao](img/logico2fisico_binario.png "Lista de transposição")

[Localize-se: lista das aulas](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/lista.md#lista-de-aulas)
