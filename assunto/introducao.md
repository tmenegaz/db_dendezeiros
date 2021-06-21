# Conceitos

A linguagem **SQL** *(**S**tructured  **Q**uery **L**anguage)* que em livre tradução do inglês quer dizer *linguagem de consulta estruturada* foi concebida e desenvolvida pela *IBM<sup>[1](#myfootnote1)</sup>* a partir dos conceitos de *E. F. Codd*, publicados em sua pesquisa<sup>[2](#myfootnote2)</sup>, em 1970.

Muito mudou nestes 47 anos dos **SGBDR**<sup>[3](#myfootnote3)</sup> *- **S**istema **G**erenciados de **B**anco de **D**ados **R**elacional -* e isso pode ser verificado a partir do trabalho de duas entidades de padronização: *ANSI* e *ISO*. a SQL começa a ser padronizado pela ANSI em 1996 e as duas entidades seguem até hoje normatizando a linguagem. O padrão SQL mais recente, de nível completo está dividido em 15 partes que podem ser adquiridas separadamente no site da ISO<sup>[4](#myfootnote4)</sup>.

Conforme Oliveira<sup>[5](#myfootnote5)</sup> nos ensina a "SQL é um conjunto de comandos de manipulação de banco de dados utilizado para criar e manter a estrutura desse banco de dados, além de incluir, excluir, modificar e pesquisar informações nas tabelas dele".

*Toby [et al, 265]*<sup>[6](#myfootnote6)</sup>, afirma que a SQL é fundamental para os **SGBDR**. Assim, ele apresenta um descolamento da linguagem de sua principal ferramenta e reforça essa evidência quando escreve que "a *SQL* é uma linguagem de definição e manipulação de dados padrão *ISO-ANSI* para sistemas de gerenciamento de banco de dados relacionais. Os sistemas de banco de dados relacionais individuais utilizam variações da sintaxe SQL e regras de nomeação ligeiramente diferentes ...".

A linguagem SQL possui divisões, a saber:

- DDL - **D**ata **D**efinition **L**anguage - para a criação de componentes de banco dados como tabelas e índices
- DML - **D**ata **M**anipulation **L**anguage - para a manipulação dos dados armazenados no banco de dados
- DQL - **D**ata **Q**uery **L**anguage - para extrair dados do banco de dados
- DCL - **D**ata **C**ontrol **L**anguage - provê a segurança interna do banco de dados

> Exemplos de comandos

| DDL | DML | DQL | DCL |
|:---:|:---:|:---:|:---:|
|CREATE TABEL|INSERT|SELECT|CREATE USER|
|ALTER TABLE|DELETE|---|ALTER USER|
|DROP TABLE|UPDATE|---|GRANT|
|CREATE INDEX|---|---|REVOKE|
|ALTER INDEX |---|---|CREATE SCHEMA|
|DROP INDEX |---|---|---|


Ademais, afim de atender aos objetivos de ensino e aprendizagem apresentados na ementa, aqui serão adotadas as versões SQL-99 e SQL-92. A partir da SQL-99 a linguagem SQL incorpora comandos procedurais<sup>[7](#myfootnote7)</sup> como o *BEGIN*, *IF*, *funções* e *procedimentos* que já existiam como extensões da linguagem. Essas duas revisões, padrão ISO-ANSI, são facilmente encontradas no mercado de desenvolvimento de sistemas sem, portanto, nenhum prejuizo para o aluno no decorrer do curso técnico de informática.

Para falarmos de banco de dados, SQL, SGBDR e sistemas de banco de dados relacionais (*SBDR*) usamos varias vezes a palavra "**dado**", sem, contudo, defini-la neste contexto da Tecnologia da Informação - *TI*<sup>[8](#myfootnote8)</sup>. Agora vejamos o que é o dado e o que está em seu entorno.

O dado pode ser abstraido como a unidade básica da informação. Sendo um componente básico de um arquivo em um sistema de arquivos é o *item de dados* a menor unidade carregada de significado no mundo real. Não obstante a isso, pode-se apresentar como exemplo *nome*, *sobrenome*, *telefone*, *número de identificação*, *sigla de partido político* etc.

Mas a informação precisa do dado para ser definida, sendo então, o conjunto de dados relacionados logicamente, tratados como uma unidade isolada por uma aplicação e chamada de **registro**. A informação pode, facilmente ser percebida quando, no mundo real alguém faz um pedido, classifica a profissão de uma pessoa, descreve um produto etc.

Por sua vez, o arquivo é uma coleção de registros de um mesmo tipo. Em uma galeria comercial pode-se dizer que tem lojas de artigos infantis, por exemplo, e que, portanto, o nome do arquivo poderia ser galeria comercia; e o conjunto de itens dado seria o nome, rua, número, especialização, marca, telefone, CNPJ etc.

Dai, o que se tem é um sistema de banco de dados que baseia-se em arquivos e, quando associado aos aspectos relacionais que deve gerenciar, suas definições se expandem:

|item de dados|registro|arquivo|
|----------|:----:|:--|
|coluna ou atributo|linha ou tupla|tabela|

O *banco de dados* é mais complexo. A partir do que já foi visto até aqui pode-se adotar a definição de Toby [et al, 2] para banco de dados: "é uma coleção de dados armazenados e inter-relacionados, [...] de muitos tipos de tabelas."

Para poder manipular esses dados em suas tabelas, utiliza-se uma ferramenta chamada SGBD. Em sintese os SGBDs adimitem uma visão lógica, visão física, linguagem de definição de dados, linguagem de manipulação de dados e utilitário importantes. Aqui useremos um SGBDR por ter maior independência de dados. Essa característica, tão importante, o destacou de seus antecessores, o SGBD hierárquico e o de rede, por trazer a capacidade de mudar a estrutura lógica ou física de um certo banco de dados sem ter que reprogramar os programas de aplicação.

# O Ciclo de vida

O ciclo de vida de um banco de dados incorpora os passos básico envolvidos no projeto de um esquema global do banco de dados lógico, a alocação de dados por uma rede de computadores e a definição de esquemas locais específicos do SGBDR.

1. **Análise de requisitos.** Os requisitos do banco de dados são determidados por meio de entrevistas com os produtores e os usuários dos dados. A ideia e elicitar o fato concreto do mundo real a fim de criar um *mini mundo*, um recorte da realidade que será criado no mundo virtual, nesse contexto é o computador.

2. **Modelo conceitual de dados**. Essa etapa também é conhecida como *projeto lógico* por ter um esquema global com um diagrama de modelo de dados conceitual que mostra todos os dados e seus relacionamentos que ao final será transformado em tabelas. Nesse projeto lógico podemos classificar, as vezes, as fazes em *a*, *b*, *c* e *d* como instrumento didático, a saber.
    
    a. **modelagem conceitual de dados** é a *analise* dos requisitos por meio de digramas de *ER* ou *UML*.

    b. **integração da visão** quando o projeto é grande e mais de uma pessoa está envolvida na *analise* dos requisitos surgem várias visões dos dados e relacionamentos que devem ser racionalisadas e concluidas em uma única visão global.

    c. **tranformação do modelo conceitual em tabelas SQL** é feita por meio de uma categorização das construções de *modelagem de dados* e um conjunto de regras de mapeamento onde cada *relacionamento* e suas *entidades* associadas são transformadas em um conjunto de *tabelas* candidatas específicas do SGBDR.
    
    d. **normalização de tabelas** é o processo de divisão de uma tabela candidata específica em tabelas menores a fim de eliminar **dependências funcionais**<sup>[9](#myfootnote9)</sup>.

3. **Projeto físico**. Aqui o que se quer é uma representação precisa da realidade. o projeto implica em selecionar *índices*, realizar *particionamento*, *clustering* e *desnormalizar*.

4. **Implementação, monitoração e modificação do banco de dados**. Quando o projeto é concluido o banco de dados pode ser criado por meio de uma DDL de um SGBDR. O banco pode ser manipulado por uma DML e consultado com uma DQL. Poderá ainda ser migrado de um SGBDR para outro e realizar DCL.

Trabalhe metodicamente pelas etapas do ciclo de vida e corrija erros de projeto o mais rápido possível, voltamdo a etapa enterior e testando novas alternativas e separe bem o  projeto lógico do projeto físico, pois eles são dicotômicos:

- o projeto lógico visa uma solução viável para satisfazer todas as consultas conhecidas e em potencial.
- o projeto físico é para otimizar o desempenho para consultas e atualizações conhecidas e projetadas.

# [Fazer a lista de exercícios](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/exercicios1.md#exercícios)

[Próxima aula -> a visita técnica](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/visitaTecnica.md#visita-técnica)


[Voltar ao topo (Conceitos)](#conceitos)

<a name="myfootnote1">1.</a> [História da IBM](http://www-03.ibm.com/ibm/history/interactive/index.html)

<a name="myfootnote2">2.</a> [E. F. Codd: A relational model of data for large shared data banks](http://www.seas.upenn.edu/~zives/03f/cis550/codd.pdf?cm_mc_uid=53564730589415039457967&cm_mc_sid_50200000=1503945796)

<a name="myfootnote3">3.</a> [40 anos SGBDR](https://www.ibm.com/developerworks/community/blogs/ctaurion/entry/40_anos_de_sgbr27?lang=en)

<a name="myfootnote4">4.</a> [ISO](https://www.iso.org/search/x/query/ISO%252FIEC%25209075)

<a name="myfootnote5">5.</a> [Celso Henrique Poderoso de Oliveira](https://www.novatec.com.br/autores/celsopoderoso.php)

<a name="myfootnote6">6.</a> [Projeto e Modelagem de Banco de Dados](https://www.elsevier.com/books/projeto-e-modelagem-de-banco-de-dados/lightstone/978-85-352-6445-6)

<a name="myfootnote7">7.</a> o paradigma procedural define ***como algo deve ser feito*** em cada linha da sequência de ações.

<a name="myfootnote8">8.</a> [TI](https://pt.wikipedia.org/wiki/Tecnologia_da_informa%C3%A7%C3%A3o)

<a name="myfootnote9">9.</a> representa a dependência entre elementos de dados que são identificadores exclusivos.

<a name="myfootnote10">10.</a> [IMS](https://www.ibm.com/support/knowledgecenter/pt-br/SSKM8N_7.0.0/com.ibm.etools.mft.doc/ac66140_.htm) 


[Localize-se: lista das aulas](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/lista.md#lista-de-aulas)