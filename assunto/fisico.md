# Modelo físico

Após ter construido o modelo lógico do projeto de desenvolvimento do Banco de dados, por meio da *entidade e relacionamento* - *ER* em conjunto com a *normalização de daos* deve-se transpor o projeto para o *modelo físico*.

# Essa é a etapa da [Data definition Language (DDL)](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/introducao.md#conceitos).


## SQL

Antes de criar tabelas a partir do projeto lógico é importante definir quais são as características dos dados e conhecer um pouco da `sintaxe` utilizada no `MySql` no `DDL`.

- *tipos de dados*.

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


## Comandos que podem ser usados no `MySql`

> acesse o terminal `shell`  do `MySql`. A senha padrão do `MySql` é `root`

```mysql
sudo mysql --password
```

> para sair do `shell`  do `MySql`
```mysql
EXIT;
```

> para criar um banco de dados no `MySql`

```mysql
CREATE DATABASE <nome_do_banco>;
```

> para criar um novo usuário para a aplicação

```mysql
CREATE USER
    '<user_name>'@'<host_name>'
IDENTIFIED BY
    '<password>';
# <user_name> é o nome do seu usúrio de acesso e
# <host_name> pode ser localhost ou o endereço IP.
# A senha é opcional para ambiente de sala de aula.
```

> dar privilégios de acesso ao `<user_name>` para um banco específico no `MySql`

```mysql
GRANT ALL PRIVILEGES ON
    <nome_do_banco>.*
TO
    '<user_name>'@'<host_name>';
# substiua <nome_do_banco>.* por *.* para ter acesso a todos os bancos
```

> atualize os privilégios do banco para o novo usuário

```mysql
FLUSH PRIVILEGES;
```

> para entrar com o novo usuário no `shell`  do `MySql`
```mysql
mysql -u <user_name> -p # digite a password caso exista. Senão existir pode omitir o -p
```

> determine o banco que será usado

```mysql
USE <nome_do_banco>;
```

> criar uma tabela com suas integridades referenciais. As referências são *regras* para cada coluna e para a tabela e são chamadas de contraints

```mysql
CREATE TABLE <nome_da_tabela> (
    nome_coluna1 tipo_de_dado_coluna1 coluna1_contraint,
    nome_coluna2 tipo_de_dado_coluna2 coluna2_contraint,
    nome_coluna3 tipo_de_dado_coluna3 coluna3_contraint,
    nome_coluna4 tipo_de_dado_coluna4 coluna4_contraint,
    contraint_da_tabela
);
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

- [chave primária](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/exercicios1.md) - ver item 13 da lista de exercícios.

```mysql
PRIMARY KEY(<coluna>)
```


- [chave estrangeira](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/exercicios1.md) - ver item 13 da lista de exercícios.
 
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

Uma assertiva é utilizada para estabelecer restrições no banco de dados com base em dados de uma ou mais tabelas.

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

## Laboratório

Façamos como exercício a transposição dos [casos](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/casos.md#estudos-de-caso) estudados na etapa de *modelagem conceitual* ou *projeto lógico*.

Obsere os seguintes pontos para realizar [a atividade de transposição](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/laboratorio.md#laboratório):

*O que se quer obter é:*

- tabela SQL com menos conteúdo da informação da tabela original da qual é derivada.
    - para entidade com relacionamento *binário* que são *m:n*, *1:m* no lado *um* (pai), ou *1:1* em qualquer lado.
    - entidades com relacionamentos recursivos binários que são *m:n* e entidades com relacionamento *ternário* ou de *maior grau* ou uma hierarquia de generalização. 
- tabela SQL com a inclusão da chave estrangeira da entidade pai.
    - para entidades com relacionamento *binário* que são *1:m* para a entidade no lado *m* (filha), para relacionamento *1:1* para uma das entidades.
    - para cada entidade com relacionamento *recursivo* *binário* que seja *1:1* ou *1:m*.
    - tratamento muito comum entre os relacionamento por meio da definição de uma chave estrangeira, da tabela-pai, na tabela-filha.   
- tabela SQL derivada de um relacionamento contendo as chaves estrangeiras de todas as entidades no relacionamento.
    - para relacionamentos *binários* *m:n*.
    - para relacionamentos *binários* *recursivos* *m:n*.
    - para todos os relacionamentos que são *ternário* ou de grau maior.
    - um relacionamento *m:n* só podem ser definidos em termos de uma tabela que contém chave estrangeira correspondente às chaves primárias das duas entidades associadas.

Para além das três regras de tabelas desejadas é iportante observar as regras aplicadas as *constraints* afim de se obter uma boa estratégia de desnormalização.  
Os valores *nulos* da`SQL` nessa transposição podem ser utilizados da seguinte maneira:

-  `null` é permitido em uma tabelas `SQL` para `FK` de entidades **opcionais** associadas.
- `null` não é permitido em uma tabelas `SQL` para `FK` de entidades **obrigatória** associadas.
- `null` não é permitido para qualquer `chave` em uma tabelas `SQL` derivada de um relacionamento `m:n`, pois somente entradas de linhas completas fazem sentido na tabela.

Consulte a [lista de transposições](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/transposicao.md#lista-de-transposição) para casos comuns entre relacionamentos de entidades, em diferentes graus de relacionamento.

[Localize-se: lista das aulas](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/lista.md#lista-de-aulas)
