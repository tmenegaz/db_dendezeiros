# Lista de transposição

## Em um relacionamento binário `1:1`  

- quando duas entidades são *obrigatórias* cada entidade se torna uma tabela, e a `PK` de qualquer entidade pode aparecer na tabela da outra entidade como `FK`.
- quando, em uma das entidades, o relacionamento é opcional deve conter a `FK` da outra entidade em sua tabela transforma
da.
- quando as duas entidades são *opcionais* qualquer entidade pode conter a `FK` embutida da outra entidade, com `null` permitido na `FK`.

![tranposicao](img/logico2fisico_binario.png "Lista de transposição")
