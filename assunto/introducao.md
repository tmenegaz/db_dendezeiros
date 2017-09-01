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

Para falarmos de banco de dados, SQL, SGBDR e sistemas de banco de dados relacionais (*SBDR*) usamos varias vezes a palavra "**dado**", sem, contudo, defini-la neste contexto da Tecnologia da Informação - *TI*<sup>[8](#myfootnote8)</sup>. Agora vejamos o que é o dado o que está em seu entorno.

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

# Exercícios

1. Pesquise a fim de conhecer e determinar o que é banco de dados *hierárquico*, *rede*, *relacional*, *objeto-relacional* e *objeto*.

- *Hierárquico*: um gerenciador desse tipo representa dados como uma estrutura em árvore, composto de hierarquia e registros
    - exemplo:
    
   ![Gerenciador hierárquico](img/gerenciadorHierarquico.png "Gerenciador hierárquico")

Neste caso, há dados específicos em CLIENTE(nome, endereço, cidade, estado etc); os segmentos dependentes de cliente são CHEKCONTA e GRAVACONTA, que tem cada um, conforme a imagem, dois segmentos. Cada um dos segmentos inferiores dependem hierarquicamente dos segmentos superiores. E para elém disso, cada um tem dados específicos. É comum encontar esse gerenciador em ambientes de grande porte, como implementações *IMS<sup>[10](#myfootnote10)</sup>*

- *Rede*: representa osdados como registros vinculados uns aos outros, formando conjuntos comuns de dados. Existe uma similaridade muito grande o modelo hierárquico e o modelo de rede. Pode-se enteder o modelo de rede como uma generalização do modelo hierárquico. no modelo de rede um *filho* pode ter mais de um *pai*.
    - exemplo

   ![Gerenciador de rede](img/gerenciadorRede.png "Gerenciador de rede")

- *Relacional*: representa osdados com uma simples coleção de linhas e colunas em tabelas bidimensionais.
    - exemplo

    ![Gerenciador relacional](img/gerenciadorRelacional.png "Gerenciador relacional")

- *Objeto-Relacional*: Combina o modelo orientado a objetos (*união de propriedades e métodos*) com o modelo relacional(linhas e colunas de tabelas).

- *Objeto*: representa os dados e processos em um único objeto
    - exemplo

    ![Gerenciador de objeto](img/gerenciadorObjeto.png "Gerenciador de objeto")

2. O que é uma entidade na abordagem relacional?

> A entidade é um *agrupamento lógico de informações inter-relacionadas* necessárias para a execução das atividades do sistema. Pensando no cilco de vida a entidade é um objeto do mundo real na elicitação dos requisitos: funcionário, cliente, produto, etc. Mas quando não for, contém informações relevantes às operações da empresa.
>
> Quando transportada ao *modelo físico* chamamos a entidade de tabela.
>
> Ao transpor do modelo Relacional para o modelo Orientado a Objeto, a *entidade* passa a ser uma *classe* ou *categoria* do objeto ao qual acregaremos os respectivos métodos.

3. Dê exemplos de entidades.

> Como exemplo podemos ter para Pessoa Física ou Jurídica as entidades: Pessoa, Funcionário, Clientes, Fornecedores, Empresa.
>
>Para documentos pode-se ter como exemplo: Ordem de compra, Pedido, Nota fiscal  

4. Classifique as entidades.

> As entidades pode ser classificadas em *fundamental* e *associativa*.
>
> - fundamental:  contem dados básicos que são resultados ou alimentadores das operações da empresa
>
> - associativa: é formada pelo relacionamento de duas entidades fundamentais sempre que esta se relacionarem mais de uma vez: aluno X matéria; cd X autor; pedido X produto. É importante dizer que há um caso *específico* para a entidade associativa: *sempre que, além do simples relacionamento entre duas entidades fundamentais, houver outras informações específicas da nova entidade criada (quantidade e valor entre pedido e produto) ela será chamada de entidade associativa atributiva*.

5. O que é um atributo na abordagem relacional?

> O atributo é o *item de dado* que qulifica uma entidade descreve seus elementos ou características. Quando evolui-se para o projeto físico do modelo chamamos o atributo de campo ou coluna.

6. Exemplifique atributos.

> Exemplo de atributos para uma entidade Pessoa: nome, sobrenome, endereço, RG, CPF.
>
> Exemplo para entidade Nota fiscal: série, número, data de emissão, cliente, valor.

7. O que é uma tupla na abordagem relacional?

> A tupla é uma estrutura de atributos que residem em uma entidade.
>
> Quando transposta para o modelo físico uma tupla é chamada deregistro ou linha da tabela (entidade).

8. Qual a diferenção entre dado e informação?

> O dado é a unidade básica da informação e a informação é um conjunto de dados organizados logicamente a fim de gerar sentido.

9. O que é SGBD?

> Um Sistema Gerenciador de Banco de Dados é uma coleção de programas para *criar* estruturas, *manter* dados, *gerenciar* as *transações* efetuadas e a *extração* das informações. Tudo isso com rapidez e segurança.
>
> Algumas características principais:
>
> - *controle de redundância* - as informações devem possuir um mínimo de redundância para ser ser um meio de garatir a estabilidade do modelo.
> - *compartilhamento de dados* - as informações devem estar disponível para qualquer número de usuários de forma concomitante e segura.
> - *controle de acesso* - necessidade de saber quem pode realizar qual função dentro do banco de dados.

10. Apresente 3 exemplos de SGBD e suas principais características.

11. Em TI, por que é importante o descolamento ou desacoplamento?

> O desacoplamento é a *separação de responsabilidades*. Segundo Robert C. Martin, nos ensina, deve-se desenvolver software sobre a regra da *responsabilidade única*. Essa coesão deve ser realizada por uma classe de maneira satisfatória. Dessa forma, fica fácil desacoplar ou descolar uma parte da aplicação sem comprometer as demais.

12. O que é independência de dados?

> Quando se prima pela *independência de dados* em um projeto de banco de dados, está a se previnir com relação a futuras necessidades de reorganização e conversão do banco de dados. Posto isso, fica evidente a utilização da regra da responsabilidade única no projeto. Então, a *independência de dados* é a capacidade de fazer mudanças em uma estrutura lógica ou física de banco de dados sem exigir reprogramação dos programas de aplicação.

13. O que é uma chave?

> A chave é um atributo utilizado para indexar dados. São 3 os tipos de chave:
>
> - chave primária - é o atributo que permite identificar a ocorrência de uma única tupla (linha) em uma entidade. Os demais atributos, da entidade, devem depender unicamente desse atributo chave.  Eventualmente a chave pode ser determinada pela união de um atributo com outro atributo ou mais. Nesses casos a chave será chamada de chave concatenada.
>  
> - chave estrangeira - é o atributo chave de uma entidade que estabelece a relação de uma entidade com a chave primária de outra entidade. Sendo assim, permitindo a relação entre entidades.
>
> - chave secundária - Sempre que houver a necessidade de buscar informaçãoes semelhantes, em ordem crescente ou não, em função de data, valores ou status predefinidos, cria-se chaves secundárias. Essas chaves também podem ser concatenadas a outras chaves secundárias pra extrair a informação desejada. Portanto, a chave secundária é utilizada como meio de classificar e pesquisar nas entidades.

14. Para que serve a linguagem SQL?

> A SQL serva para a criação de componentes de banco dados como tabelas e índices; para a manipulação dos dados armazenados no banco de dados; para extrair dados do banco de dados e para prover a segurança interna do banco de dados.

15. O que é GRANT e REVOKE em DCL?

> GRANT é a concessão de acesso
>
> REVOKE é a revogãção do concessão.  

16. Qual a diferença entre sistema de banco de dados e sistema de gerenciados de banco de dados?

17. Faça um diagrama que ilustre a resposta da questão 16.

18. Por que a linguagem SQL não é considerada uma linguagem procedural?

> Por meio da SQL é possível especificar o *que deve ser feito* e não como deve ser feito. Essa caracteristica de *como deve ser feito* é muito própria das linguagens procedurais.

19. Como instalar um SGBD em um sistema operacional?

20. O que é clustering?

> "Clustering é uma técnica de Data Mining para fazer agrupamentos automáticos de dados segundo seu grau de semelhança. O critério de semelhança faz parte da definição do problema e, dependendo, do algoritmo." [wikipedia](https://pt.wikipedia.org/wiki/Clustering) 

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
