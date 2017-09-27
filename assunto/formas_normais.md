# Normalização

Segundo Oliveira (p. 51), "a normalização de dados é uma sequência de etapas sucessivas que, ao final, apresentará uma modelo de dados estável com um mínimo de redundância."

Existem `5` regras que se aplicam a *Banco de dados*, são as *formas normais* - **FN**. As regras sãoo classificadas como 1ªFN, 2ªFN, 3ªFN, 4ªFN e 5ªFN.

Para ilustrar a utilização das *FNs* vemos estudar esse esse pequeno caso.

Para um caso que músicos especialistas tocam em um dos naipes, apenas. Sendo estes madeira, corda, metal e percurssão e um destes músicos epecialista pode ser o chefe de um naipe. A OSBA costuma ter o histórico de seu músicos para cada concerto realizado. Os concertos são elaborados a partir da definição e arranjo dos naipes necessários para a execução de cada obra composta.

## Primeira forma normal

Dizemos que uma tabela está na primeira forma normal `1FN` *se*, *e somente se* todas as colunas tiverem apenas [valores atômicos](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/exercicios1.md#8-qual-a-diferenção-entre-dado-e-informação), ou seja, sa cada coluna tiver apenas um valor para cada linha da tabela.

## Segunda forma normal

Dizemos que uma tabela está na segunda forma normal `2FN` *se*, *e somente se* ela estiver na `1FN` e os *atributos* **não** `chave` forem *totalmente dependentes* da `fk`. Um *atributo* será totalmente dependente da `fk` se estiver do lado direito de uma **dependência fumcional** - `DF` que tem no lado esquerdo a própria `fk` ou algo que possa ser derivado da `fk` usando a **transitividade** das `DF`.

## Terceira forma normal

Dizemos que uma tabela está na terceira forma normal `3FN` *se*, *e somente se* ela estiver na `2FN` e, ainda, para cada `DF` não trivial `X -> A`, onde `X` e `A` são *atributos* simples ou compostos, uma das duas condições precisar ser mantida: ou o *atributo* `X` é uma `super chave` ou o *atributo* `A` é membrode uma chave candidata. Então, sendo o *atributo* `A` membrode uma chave candidata `A` será chamado de **atributo primo**.

## Quarta forma normal

## Quinta forma normal

Analise os requisitos e faça a normalização dos [casos](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/casos.md#estudos-de-caso)

[Localize-se: lista das aulas](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/lista.md#lista-de-aulas)
