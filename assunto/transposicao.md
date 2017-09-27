# Lista de transposição

## Em um relacionamento binário `1:1`  

- quando duas entidades são **obrigatórias** cada entidade se torna uma tabela, e a `PK` de qualquer entidade pode aparecer na tabela da outra entidade como `FK`.
- quando, em uma das entidades, o relacionamento é **opcional** deve conter a `FK` da outra entidade em sua tabela transforma
da.
- quando as duas entidades são **opcionais** qualquer entidade pode conter a `FK` embutida da outra entidade, com `null` permitido na `FK`.
 
## Em relacionamento binário `1:m`

- esse tipo de relacionamento poderá ser **opcional** ou **obrigatório** no lado `m`, sem afetar a tranformação.
- no lado `1` ele pode ser **obrigatório** ou **opcional**.
- em todos os casos a `fk` deverá ficar no lado `m`, que representa a entidade filha
- com `null` permitido para `fk` nos casos em que no lado `1` for opcional.

## Em relacionamentos binário `m:n`

- em sendo **opcional** para as duas entidades uma nova tabela será criada com a `pk` de cada entidade;
- a mesma regra para os casos onde o condição for **obrigatório**;
- a cláusula `not null` deverá aparecer para as `fk's` nos dois casos, a cima;
- sem afetar as definições de `null` ou `not null`, a tebela `SQL` derivada de uma entidade **opcional** pode ter `0` linhas.

---

![tranposicao](img/logico2fisico_binario.png "Lista de transposição")
