# Equipe Progtech

* Aline Medrado
* Icaro Oliveira
* Jean Rizzo
* Tayná Valverde
* Valdinei Ferreira
* Yllo Luis


### 1 - Pesquise a fim de conhecer e determinar o que é banco de dados hierárquico, rede, relacional, objeto-relacional e objeto
**Hierárquico** - Este modelo organiza os dados de cima para baixo, como uma árvore e é definido como uma coleção de registros conectados por meio de ligações, onde cada registro é uma coleção de campos e cada campo contém um único valor. Cada ligação pode ligar exatamente dois registros. Cada registro é dividido em partes denominadas segmentos. Os segmentos são arranjados em estruturas com um segmento superior ligado a um segmento subordinado em um relacionamento “pai-filho”. Um segmento “pai” pode ter mais de um “filho”, mas um segmento “filho” só pode ter um “pai”. A estrutura da árvore é difícil de manter quando o volume de dados aumenta. Sistema de banco de dados, portanto, hierárquico tiveram que ser descartados quando o trabalho foi para armazenar grandes volumes de dados já que a probabilidade de corrupção de dados e perda foi elevada em tal sistema. Muitos-para-um ou muitos-para-muitos relacionamentos se tornam difíceis de ser implementadas através do relacionamento entre pais e filhos nos casos em que existe um nó de filho que pode ter mais de um nó pai.

**Rede** - Esse modelo é uma extensão do modelo hierárquico. Os dados são representados por uma coleção de registros e os relacionamentos por meio de links. É representado por um diagrama constituído por caixas e linhas. Cada registro filho pode ser ligado a mais de um registro pai criando conexões bastante complexas e são bastante utilizados em sistemas para computadores de grande porte. Em outras palavras, um “filho” pode ter mais de um “pai”. Esta metodologia torna a pesquisa mais rápida e mais flexível, pois não depende de um único nó raiz como vetor de inicialização de pesquisa.
Entretanto, o modelo em rede ainda apresenta os mesmos problemas com relação ao projeto de estrutura do modelo hierárquico. Qualquer alteração feita em uma classe de dados implica na criação de uma nova estrutura para suportar aquela alteração.

**Relacional** - O modelo relacional surgiu devido a algumas necessidades, como: aumentar a independência de dados nos sistemas gerenciadores de banco de dados; prover um conjunto de funções apoiadas em álgebra relacional para armazenamento e recuperação de dados; permitir processamento adhoc(Processamento dedicado, exclusivo.). Este modelo seria mais flexível e apropriado ao solucionar os vários problemas que se colocam no nível da compreensão e implementação da base de dados.
Esse modelo representa os dados num BD como uma coleção de tabelas(relações).
E existem dois tipos de dominios que são um conjunto de valores que podem tomar um atributo. A cada domínio está associado um tipo de dados ou formato. Ex.: Fone: conjunto de 10, dígitos. Esses domínios são:
Domínios generais: são aqueles que estão compreendidos entre um máximo e um mínimo.
Domínios restringidos: são os que pertencem a um conjunto de valores específicos.

**Objeto-relacional** - Banco de dados objeto-relacional (BDOR) ou sistema de gerenciamento de banco de dados relacional de objetos (SGBDRO), do inglês object-relational database (ORD) ou object-relational database management system (ORDBMS), é um sistema de gerenciamento de banco de dados (SGBD) semelhante a um banco de dados relacional, porém com um modelo de banco de dados orientado a objetos: objetos, classes e herança são suportados diretamente nos esquemas do banco de dados e na linguagem de consulta. Além disso, ele suporta extensão do modelo de dados com a personalização de tipos de dados e métodos.

**Objeto** - Num banco de dados orientado a objetos puro, os dados são armazenados como objetos onde só podem ser manipulados pelos métodos definidos pela classe de que estes objetos pertencem. Os objetos são organizados numa hierarquia de tipos e subtipos que recebem as características de seus supertipos. Os objetos podem conter referências para outros objetos, e as aplicações podem consequentemente acessar os dados requeridos usando um estilo de navegação de programação.
A maioria dos banco de dados também oferecem algum tipo de linguagem de consulta, permitindo que os objetos sejam localizados por uma programação declarativa mais próxima. Isto é, na área das linguagens de consulta orientada a objetos. A integração da consulta com a interface de navegação faz a grande diferença entre os produtos que são encontrados. Uma tentativa de padronização foi feita pela ODMG (Object Data Management Group) com a OQL (Object Query Language).
O acesso aos dados pode ser rápido porque as junções geralmente não são necessárias (como numa implementação tabular de uma base de dados relacional), isto é, porque um objeto pode ser obtido diretamente sem busca, seguindo os ponteiros.
Outra área de variação entre os produtos é o modo que este esquema do banco de dados é definido. Uma característica geral, entretanto, é que a linguagem de programação e o esquema do banco de dados usam o mesmo modo de definição de tipos.
Aplicações multimídia são facilitadas porque os métodos de classe associados com os dados são responsáveis pela correta reprodução.
Muitos bancos de dados orientados a objetos oferecem suporte a versões. Um objeto pode ser visto de todas as várias versões. Ainda, versões de objetos podem ser tratadas como objetos na versão correta. Alguns bancos de dados orientados a objetos ainda proveem um suporte sistemático a triggers e constraints que são as bases dos bancos ativos.

### 2 - O que é uma entidade na abordagem relacional?
Uma entidade é um elemento caracterizado pelos dados que são recolhidos na sua identificação, vulgarmente designado por tabela.

### 3 - Dê exemplos de entidades.
* Um edifício pode ser dividido em zero ou mais apartamentos, mas um apartamento pode estar localizado em apenas um edifício.
* Um sistema acadêmico onde as entidades aluno e curso são entidades tipo, pois a entidade aluno, se não existisse a entidade curso, poderia existir da mesma forma.
* Um sistema de gestão de recursos humanos com a entidade Funcionários.


### 4 - Classifique as entidades.

* Entidade Tipo - Representa um conceito independente em um modelo de dados e está em primeiro lugar na mente do cliente. As entidades tipo são independentes e, com frequência, constituem o ponto de partida de um modelo de dados. As entidades tipo muitas vezes estão conectadas a outras entidades tipo por meio de um relacionamento 1:m ou m:m. Como exemplo podemos considerar um sistema acadêmico onde as entidades aluno e curso são entidades tipo, pois a entidade aluno, se não existisse a entidade curso, poderia existir da mesma forma;

* Entidade Fraca (ou dependente) - Precisa de outra entidade para garantir a sua existência. A entidade fraca depende de uma entidade tipo e esta relação de dependência é uma relação obrigatória. O identificador de uma entidade fraca possui em sua composição o(s) atributo(s) identificador(es) da entidade tipo à qual a entidade fraca está associada. Como exemplo podemos considerar um sistema de gestão de recursos humanos onde a entidade dependente é uma entidade fraca em relação à entidade funcionário. Pois se a entidade Funcionários não existisse, a entidade dependentes consequentemente não existiria;

* Entidade Associativa - São o resultados de relacionamentos m:m. Em geral, as entidades associativas são encontradas entre entidades tipo. Muitas das vezes, as entidades associativas têm nomes óbvios, pois ocorrem no mundo real. Por exemplo, a entidade associativa do relacionamento disciplinas e alunos, objetivando o lançamento de notas, chama-se avaliação. Deve-se sempre procurar pelo nome adequado, pois esse irá aumentar a clareza do modelo de dados;

* Entidade Agregada - Cria-se quando temos um conjunto de atributos que aparecem em mais de uma entidade do modelo de dados. Ou seja, quando várias entidades distintas têm atributos em comum. Nestes casos devemos criar uma entidade agregada contendo os atributos que se repetem em mais de uma entidade. Por exemplo, como os atributos de um endereço podem ocorrer em entidades diferentes (CLIENTES E FORNECEDORES por exemplo), pode-se criar uma entidade agregada ENDEREÇOS para armazenar detalhes de todos os endereços;

* Entidade Subordinada - Representa uma especialização de entidade no modelo de dados onde uma entidade supertipo possui várias entidades subordinada que são especializadas com atributos específicos. Devemos usar entidades subordinadas toda vez que tivermos entidades que compartilham conceitos semelhantes mas que possuem características próprias. Por exemplo, podemos ter uma entidade supertipo CLIENTE contendo os atributos codigo, nome, endereco e telefone e duas entidades subordinadas PESSOA FISICA e PESSOA JURÍDICA contendo atributos específicos respectivamente nro_cpf e nro_cnpj. Tanto PESSOA FÍSICA como PESSOA JURIDICA compartilham conceitos semelhantes, ambas possuem um nome e endereco mas possuem também características próprias pois PESSOA FÍSICA possui nro_cpf e PESSOA JURÍDICA possui nro_cnpj.

### 5 - O que é um atributo na abordagem relacional?
É uma função que mapeia um conjunto de entidades num domínio e identifica, qualifica e descreve esse conjunto de entidades. Uma entidade é representada por um conjunto de atributos; e domínio é definido como o conjunto de valores possíveis para um determinado atributo.

### 6 - Exemplifique atributos.
* Um Cliente(sendo entidade) tem nome, CPF, telefone e endereço como atributos, sendo o último um composto;
* A entidade Carro tem como atributos o chassi, o modelo, o ano, o fabricante;
* Aluno, como entidade, pode ser formado pelos atributos nome, telefone, idade, data de nascimento, etc;
* A entidade Empregado tem nome, salario, data de admissão, etc., como atributos.

### 7 - O que é uma tupla na abordagem relacional?
Tuplas são as linhas da tabela em abordagem relacional.

### 8 - Qual a diferença entre dado e informação?
Dado é um conteúdo que não transmite nenhuma mensagem que se possa entender, no entanto, a informação é o resultado do processamento dos dados obtidos, podendo-se entender o conteúdo.

### 9 - O que é SGBD?
O  SGBD é um software que possui  recursos específicos para  facilitar a manipulação de informações de um banco de dados e para o desenvolvimento de aplicativos.

### 10 – Apresente 3 exemplos de SGBD e suas principais características.
* PostgreSQL – Desenvolvido e lançado nos idos dos anos 80(para ser exato em 1989) o PostgreSQL se consagra como “Banco de dados open source mais avançado do mundo” contando com recursos como Consultas complexas, Chaves estrangeiras, indexação por texto e além de tudo uma engine de linguagem procedural com suporte a várias linguagens (PL/pgSQL, PL/Python, PL/Java, PL/Perl) . Como o MySQL se trata de uma solução bastante popular em sistemas WEB se estabelecendo como um dos 5 SGBDs mais usadas do mundo.

* IBM DB2 – Se trata do SGBD da gigante IBM. Lançado ainda nos anos 80(Sendo exato em   1983) porém desenvolvido na década 70 este sistema ficou marcado pelo pioneirismo na sua data de lançamento e mais tarde pela compatibilidade com diversos dispositivos (Desde PDAs até mainframes). O DB2 conta com diversas APIs para linguagens de programação contando do .NET até linguagens mais antigas como COBOL ou FORTRAN.

* Cassandra – Inicialmente desenvolvida pelo Facebook o Cassandra se trata de um SGBD não relacional (Parecido com o NoSQL) a grande vantagem do cassandra é ter uma boa capacidade de escalabilidade sem perder desempenho algo relativamente comum em SGBDs não relacionais. A origem do Cassandra foi um tanto curiosa em 2008 o facebook uma empresa extremamente a frente do seu tempo precisou criar um SGBD próprio pois os que estavam disponíveis na época não davam conta das funções de armazenamento de dados necessárias para o site. No mesmo ano o Cassandra teve seu código fonte aberto se tornando um sistema open-source.

### 11 - Em TI por que é importante o descolamento ou desacoplamento?
 Quando se desenvolve em implementações se gera dependência, dificultando a expansão e modificação do código, mas vale lembrar que desenvolvimento não é um paradigma como orientação a objetos, é uma boa prática, que visa deixar o projeto flexível além de possibilitar a reutilização de código.
 
### 12 - O que é independência de dados?
 O conceito de independência de dados é basicamente a habilidade de se modificar um esquema sem afetar níveis mais altos do banco de dados há dois níveis de independência de dados: 
Independência física de dados: Que é a habilidade de modificar o esquema físico sem a necessidade de reescrever o sistema. As modificações no nível físico são ocasionalmente necessárias para melhorar o desempenho.
Independência lógica de dados: Que  é a habilidade de modificar o esquema conceitual sem a necessidade de reescrever os programas aplicativos. As modificações no nível conceitual são necessárias quanto a estrutura lógica do banco de dados é alterada.

### 13 - O que é uma chave?
Uma chave em bases de dados é uma coluna da tabela que permite, para cada linha, identificar essa linha (caso seja a chave primária), ou relacionar com outra tabela no caso da chave estrangeira.

### 14 - Para que serve a linguagem SQL?
A linguagem SQL (Structured Query Language) é muito importante para a manipulação e consultas de banco de dados. Com ela, é possível alterar tabelas, itens e coleções de objetos (schemas) de bancos de dados, independente do tamanho, por meio da DQL (para consultas), da DML (para manipulação) e da DDL (para definições e criações), por exemplo.

### 15 - O que é GRANT e REVOKE em DCL?
O GRANT é usado para atribuir/fornecer acessos ou privilégios sobre objetos do banco de dados para um determinado usuário.
O REVOKE faz o contrário do GRANT. Ele revoga os direitos de acesso de um determinado usuário aos objetos do banco de dados.

### 16 - Qual a diferença entre sistema de banco de dados e sistema de gerenciados de banco de dados?
Um sistema de gerenciamento de banco de dados é um software que permite o usuário criar e alterar bancos de dados. Já o sistema de banco de dados, além de incluir o próprio SGBD, envolve todas as aplicações e componentes envolvidos no funcionamento de tal banco de dados.

### 17 - Faça um diagrama que ilustre a resposta da questão 16. 
![Diagrama ilustrando SGBD e SBD](http://i.imgur.com/XHkfSCu.png)

### 18 - Porque a linguagem SQL não é considerada uma linguagem procedural?
É caracterizada como não-procedural porque linguagens procedurais geralmente precisam que detalhes das operações sejam especificados, tal como abertura e fechamento de tabelas, carregamento e busca, ou flushing buffers e descrição de dados para sistemas de arquivo. Contudo, SQL é considerada uma linguagem de alto nível, que abstrai o nível das operações realizadas e a maneira como estas são realizadas.

### 19 - Como instalar um SGBD em um sistema operacional?
O sistema de gerenciamento de banco de dados se instala e se espalha na rede local do computador em que foi instalado, é armazenado na memória determinada pelo usuário, altera configurações do registro do sistema operacional e altera as variáveis de ambiente do SO; para que a conexão entre o usuário, o SO, a rede e o banco de dados seja efetuada de modo correto, sem falhas.

### 20 - O que é Clustering?
Cluster (ou clustering) é, em poucas palavras, o nome dado a um sistema que relaciona dois ou mais computadores para que estes trabalhem de maneira conjunta no intuito de processar uma tarefa. Estas máquinas dividem entre si as atividades de processamento e executam este trabalho de maneira simultânea.	
