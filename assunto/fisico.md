# Modelo físico

Após ter construido o modelo lógico do projeto de desenvolvimento do Banco de dados, por meio da *entidade e relacionamento* - *ER* em conjunto com a *normalização de daos* deve-se transpor o projeto para o *modelo físico*.

# Essa é a etapa da *[Data definition Language (DDL)]*.

## definições de dados

Antes de criar tabelas é importante definir quais são as características dos dados: *tipo de dados*.

|tipo de dado|definição|
|------------|:---------|
|INTEGER ou INT|número negativo ou positivo inteiro|
|SMALLINT| mesma função do INT, mas ocupa a metade do espaço|
|NUMERIC|positivo ou negativo para pontos flutuantes. informar o tamanho total dos campo e a quantidade de casas decimais que devem ser armazenadas, separadas por vírgula|
|DECIMAL|semelhante ao NUMERIC, porém com maior precisão após a vírgula|
|REAL|número de ponto flutuante de simples precisão|
|DOUBLE PRECISION|número de ponto  flutuante de dupla precisão|
|FLOAT|define um número de ponto flutuante com um certo nível de precisão.Ex.: `FLOAT(7,4)` gera um número como 999.9999|
|BIT| armezena um número fixo de bits. O número deve ser indicado, do contrário será 1|
|DATE|permite armazenar datas|
|TIME|permite armazenar horário|
|TIMESTAMP|permite armazenar uma combinação de data e hora|
|CHARACTER VARYING ou VARCHAR|armazena cadeia de carcateres com tamanho variável. deve-se definnir o tamanho máximo da coluna. Caso não seja utilizado o máximo definido, o espaço restante não será ocupado|
|INTERVAL|intervalo de dada ou hora|


## Para criar um banco no `MySql`

> acesse o terminal `shell`  do `MySql`

```mysql
mysql -uroot
```

> para criar um banco de dados no `MySql`

```mysql
CREATE DATABASE <nome_do_banco>;
```

> determine o banco que será usado

```mysql
USE <nome_do_banco>;
```

> criar uma tabela com suas integridades referenciais. As referências são *regras* para cada coluna e para a tabela e são chamadas de contraints

```mysql
CREATE TABLE <nome_da_tabela>
(nome_coluna1 tipo_de_dado_coluna1 coluna1_contraint,
nome_coluna2 tipo_de_dado_coluna2 coluna2_contraint,
nome_coluna3 tipo_de_dado_coluna3 coluna3_contraint,
nome_coluna4 tipo_de_dado_coluna4 coluna4_contraint,
contraint_da_tabela);
```
onde:

|argumento|descriçao|
|---------|---------|
|nome_da_tabela|o nome da tabela deve ser único e nãopode coincidir com o nome de outro objeto(entidade) do BD de um mesmouduário|
|nome_coluna|o nome dacoluna deve ser único e exclusivo na tabela|
|tipo_de_dado_coluna|tipo do dado que ocampo deverá armazenar|
|coluna_contraint|regra para a coluna|
|contraint_da_tabela|regra para a tabela tota|

Os *contraint* mais comuns são:

- [chave primária](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/exercicios1.md) - ver item 13 dalista de exercícios.

```mysql
PRIMARY KEY(<coluna>)
```


- [chave estrangeira](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/exercicios1.md) - ver item 13 dalista de exercícios.
 
```mysql
FOREIGN KEY nome_da_coluna (<lista_de_colunas>)
REFERENCES nome_da_tabela (<lista_de_colunas>)
ON UPDATE <ação>
ON DELETE <ação>
```

|opçao|descriçao|
|-----|---------|
|nome_da_coluna|o nome da coluna é opcional|
|lista_de_colunas|lista de colunas da tabela que faz referência a outra tabela|
|nome_da_tabela|nome da tabela que está a chave primária|
|ação|determona qual a ação que um banco de dados deve executar quando for alterada ou excluída uma linha da tabela que contem referência a está chave.|

A *ação* que o banco de dados deve executar pode ser:

|ação|descriçao|
|-----|---------|
|SET NULL|alera o  conteúdo da coluna para nulo, perdendo a referência.|
|SET DEFAULT|alera o  conteúdo da coluna para o valor especificado na cláusula DEFAULT, se houver.|
|CASCADE|exclui ou altera todos os registros que se relacionam a eles.|
|NO ACTION|em caso de alteração não modifica os valores que se relacionam a eles.|
|RESTRICT|não permite a exclusão da chave primária.|

- default

Serve para atribuir um conteúdo-padrão a uma coluna da tabela, sempre que for invluída uma nova linha na tabela

```mysql
<nome_da_coluna> <tipo_da_coluna> DEFAULT <conteúdo-padrão>,
```

- not null
Indica que o conteúdo de uma coluna não poderá ser nulo.

```mysql
<nome_da_coluna> <tipo_da_coluna> NOT NULL,
```

- unique
Indica que não pode haver repetição no *conteúdo da coluna*. Isso não é o mesmo que chave primária, pois na chave primária elém de não ser permitida a repetição o valor não pode ser nulo. Então, ao especificar que uma *coluna* deve ter *valores únicos*, indicamos que todos os valores não nulos devem ser exclusivos.

```mysql
UNIQUE(<coluna>)
```
- check - definição de domínio

Um domínio é uma expressão de valores possíveis para o conteúdo de uma coluna. É permitido, ao criar uma coluna, especificar quais valores que poderão ser utilizados para preencher a coluna. Usa-se a palavra *CHECK* seguida da condição que validadrá o conteúdo (*expressão lógica*), a saber:

```mysql
<nome_da_coluna> <tipo_da_coluna>
CHECK ( <UPPER(<nome_da_coluna>)> = "<valor>"
OR <UPPER(<nome_da_mesma_coluna>)> = "<outro_valor>"),
```

- assertiva

Uma assertiva é utilizada para estabelecer restrições no banco de dadoscom base em dados de uma ou mais tabelas.

```mysql
CREATE ASSERTION <nome_da_tabela>
CHECK (<expressão_lógica>)
```

## Alterando a estrutura da tabela

- acrescentar nova coluna

```mysql
ALTER TABLE <nome_da_tabela>
ADD <nome_coluna> <tipo_de_dado_coluna> <coluna_contraint>;
```

- acrescentar nova contraint

```mysql
ALTER TABLE <nome_da_tabela>
ADD (<contraint>);
```

- modifica coluna

```mysql
ALTER TABLE <nome_da_tabela>
MODIFY <nome_coluna> <tipo_de_dado_coluna> <coluna_contraint>;
```

- excluir elemento

```mysql
ALTER TABLE <nome_da_tabela>
DROP <nome_coluna>
```

```mysql
ALTER TABLE <nome_da_tabela>
DROP <contraint>;
```

- excluir elemento da tabela

```mysql
ALTER TABLE <nome_da_tabela>
DROP <coluna_contraint> <nome_coluna>;
```
- trocar o nome da tabela

```mysql
ALTER TABLE <nome_da_tabela>
RENAME <novo_nome_da_tabela>;
```

- trocar o nome da coluna

```mysql
ALTER TABLE <nome_da_tabela>
CHANGE COLUMN <nome_da_coluna> <novo_nome_da_coluna> <tipo_de_dado_coluna> <coluna_contraint>;
```

## Laboratóio

Façamos como exercício a transposição dos [casos](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/casos.md#estudos-de-caso) estudados na etapa de *modelagem conceitual* ou *projeto lógico*.

Obsere os seguintes pontos para realizar a transposição:

