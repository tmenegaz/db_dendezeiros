# Estudos de caso

## Loja de CDs

Maria possui uma loja que vende CDs de música e organizou os pequenos discos em ordem alfabética, em prateleiras horizontais para fácil manipulação e seleção. O que maria quer é atender bem seus clientes para poder faturar mais com loja **"Aqui tem CD"**. Para isso, ela estudou muito e decorou o nome de muitos artistas, bandas, músicas e gênero músical a fim de ser a melhor consultora da região. Maria ia muito bem, faturava e não se preocupava com a sobrevivência de seu negócio. Pois bem, em um certo dia Maria viu no jornal da cidade o anúncio de uma loja concorrente chamada **"Catálogo Digital"**. Essa loja era coordenada por Ana que não saia do computador a loja que vende músicas. Maria encontrou na loja muitas telas e teclados e ficou curiosa. Quis saber porque não tinha CDs, capas e caixinhas com encartes na loja. Perguntou a menina Ana onde estavam os CDs, afinal era uma loja de CDs. Ana respondeu que a loja não vendia CDs, vendia música e os produtos vinculados a música acompanhavam a música.

Então Maria percebeu que devia mudar. Contatou os estudantes do curso técnico de informática da unidade Dendezeiros do SENAI para desenvolverem a sua solução. Queria ir além da concorrência e pediu um catálogo de CDs para atender as perguntas de seus clientes. Maria, experiente, sabia o gosto de seu clientes que buscavam informações sobre o nome, preço e gravadora. Cada CD possui diferentes quantidades de faixas, contendo músicas que, as vezes, se repetem em outro CD e em outra posição. Cada música tem um tempo de duração e é importante saber os autores e o ano de suas gravações, em um determinado CD. Existem também, as encomendas e para isso é importante saber informações mais detalhadas das gravadoras para efetuar uma compra. Maria quer também usar de uma estratégia de venda que tem dado muito certo na loja de prateleiras, em cada CD deve haver a indicação para outro. A classificaçaõ dos CDs deve ser por faixa de preço ao qual ele pertence.

> [Análise desenvolvida para o caso Loja de CDs](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso1.md#caso-loja-de-cds)


---

## Vendedor de capelinha

Seu antônio tem 65 anos e vende capelinha na praia de 4ª à domingo. Ele costuma comprar os picolés na fábrica, em grande quantidade e diversidade. Cada picolé custa, para seu Antônio, R$0,75 e ele vende por R$2,00 cada. O problema é que a quantidade de praias que ele percorre aumentou, pois as prais tem estado menos cheias e seu Antônio está voltando pra casa com picoles que não foram vendidos no período costumeiro.

O filho de seu Antônio, Angelo, com 22 anos, estudante do curso técnico de informática resolveu ajudar o pai. Em entrevista, conseguiu saber que o pai compra 25 tipos de picolé sendo 12 de frutas distintas e 13 de sabores de doces. Descobriu também que o pai dele passa por 4 prais e perde tempo ao sair delas para cobrar das pessoas que compraram fiado. Perder tempo para cobrar e incluir uma praia a mais no circuito significa deixar de vender, pois Seu Antônio dedica mais tempo cobrando e se deslocando.  
Agora, Angelo vai criar o projeto de bancode dados para seu Antônio relacionando as entidades para tentar dar ao pai uma forma mais rápida de tomar decisões.

> [Análise desenvolvida para o caso Vendedor de capelinha](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso2.md#caso-vendedor-de-capelinha)


---

## Aluguel de filmes

A pequena locadora da Ana Luiza tem filmes com gêneros distintos organizados por categorias. Cada cliente pode locar seus filmes mediante o pagamento de R$4,50 para a categoria lançamento ou R\$ 3,00 para a categoria catálogo. Esse pagamento pode ser feito no ato da locação ou na devolução. Ana Luiza pretende ter outras faixas de preços para categorias que serão definidas. Para fazer a locação o cliente precisa preencher um formulário com *nome*, *endereço*, *telefone*, *email*, *rg* e *cpf*. A locação fica registrada na locadora que entrega uma cópia desse registro para o cliente com a *data da locação*, a *data da devolução* e *status do pagamento*, apenas para controle do cliente. Os filmes tem destaque para características como *nome*, *duração*, *sinopse*, *foto*, *estado da locação* e *quantidade de filmes disponíveis*, para indicar se existe alguma cópia do filme por alugar.

> [Diagrama do caso Aluguel de filmes](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso3.md#caso-aluguel-de-filmes)

---
# Exercício

## Loja o cesto

A loja o cesto comercializa moveis novos e usados. O setor de compras identifica o produto comprado com um código único, o preço de compra, a data da compra, NCM e o tipo do produto. No ato da venda é necessaria a emissão da NF-e com a indicação do emitente, comprador, produto, frete e forma de pagamento.
O emitente deve informar os seus dados conforme o cartão CNPJ e o comprador deve informar o CPF, nome completo, enderço e telefone. O pagamento deve registrar a forma de pagamento, o valor, o tipo e a quantidade de parcelas. O frete deve ser calculado apenas quando a loja oferecer o serviço que pode ser próprio ou de terceiros.  Deve ser possível discriminar mais de um produto por consumidor.
A NF-e deve mostrar os dados do emitente, consumidor do produto e os valores do frete, bem como o valor de cada item e os impostos deduzidos do valor total.

## Imóvel

Um vendedor de imóveis atua ofertando esses bens em anuncios que tem  o valor de venda classificado em faixa mínima e máxima de preço. No anuncio existe seu *endereço*, *área útil*, *área total*, *dimensões*, *nº da oferta* e *data de lançamento*. Os imóveis estão espalhados por todo o território nacional com indicação de *bairro*, *cidade*, e *estado*. O comprador para  realizar a transação precisa preencher um cadastro com *nome*, *endereço*, *cpf*, *telefone* e *e-mail*. Para comprar, além do cadastro, o cliente deve efetuar um lance com o valor da oferta e a data do lance. O vendedor somente poderá finalizar a transação se indicar seus dados em formulário semelhante ao do cliente, com o preenchimento do campo *creci*.

## Treinamento SA

Sou gerente de uma empresa de treinamento que ministra vários cursos técnicos. Esses cursos são identificados por *código*, *nome* e *tempo de duração*. Montamos cursos com base em turmas que ofertamos. As turmas tem dias fixos da semana, que identificamos com a letra inicial do dia da semana **S** para segunda-feira, **T** para terça-feira etc. Horário específico para *início* e *fim*, além de um *preço*. Um instrutor pode dar aulas para várias *turmas* e nós não trocamos os respectivos instrutores enquanto durar o *curso* de uma *turma*.
É importante saber o *nome*, *endereço*, *telefone* e *e-mail* de cada instrutor. Os alunos estão sempre vinculados a uma *turma*. Devemos saber o *nome*, *telefone* e *endereço* de cada aluno.

## Cadastro de pessoa

Mariana trabalha em uma fábrica que vende seus produtos para pessoas naturais (PF) e pessoas jurídicas (PJ). Uma das atividades é cadastrar cada cliente por meio de um *formulário*: um para PF e outro para PJ. Mariana solicitou ajuda para as meninas do curso técnico de informática, pois elas mandam muito bem na disciplina de banco de dados, para elaboração de uma base de dados que posso aglutinar os dois furmulário para ela. Os meninos també podem ajudar. Cada formulário tem os campos *nome*, *sobrenome*, *telefone*, *endereço*, *data de nascimento* e *e-mail*, incomums e os campos *cpf* e *cnpj*, distintos. Mariana solicitou o método da normalização, além da elicitação de requisitos e determinação dos relacionamentos.

## Pratique

Para cada estudo de caso apresentado faça o que segue abaixo para [elicitar requisitos](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/ansRequisitos.md#análise-de-requisitos).

- identifique as entidades;
- dê um nome a cada entidade;
- há informações relevantes da entidade necessárias às operações da empresa/profissional?
- cada instância da entidade possui um identificador único(chave)?
- escreva uma descrição das supostas entidades, por exemplo:
    - CD é o produto básico de venda
    - Praia é o ponto de venda dos picolés
- faça um diagrama com pelo menos, alguns de seus atributos.

> [Prática Loja de CDs](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso1.md#prática)
>
> [Prática Vendedor de capelinha](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso2.md#prática)

## Relacionamento

Sempre que duas entidades apresentarem *interdependência*, indica-se um relacionamento entre elas (picolé de frutas ou venda na praia), que deverá estar [normalizado](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/formas_normais.md#normalização).

Use o seguinte esquema por meio de substituição:

**Cada** *entidade1* **deve ter ou pode ter** *relacionamento* **uma ou mais ou uma única** *entidade2*

Então usando a subtituição temos:

- **Cada** *CD* **deve ser** *gravado* por **uma única** *Gravadora*.
- **Cada** *Gravadora* **pode ter** *gravado* **um ou mais** *CDs*.

---

- **Cada** *Vendedor* **deve ter** *trabalhado* em **uma ou mais** *Praias*.
- **Em cada** *Praia* **pode ter** *trabalhado* **um ou mais** *Vendedores*.

Você deve ter notado que cada relacionamento contém um **nome**; um **verbo** ou uma **locução verbal** ou um **verbo no particípio passado** que estabelece a relação. Tem também a determinação condicional de obrigatoriedade ou opcionalidade (**deve** ou **pode** respectivamente) e um certo grau de cardinalidade (**uma única** ou **uma ou mais**).

Visto de outro modo o que foi dito acima, tem-se como exemplo:

|entidade</br>(nome)|relacionamento</br>(particípio passado)|condição</br>(obrigatório ou opcional)|cardinalidade</br>(um ou muitos)|
|:------:|:------------:|:------:|:----------:|
|CD|gravado|deve ser|uma única|
|Gravadora|gravado|pode ter|um ou mais|
|Vendedor|trabalhado|deve ter|uma ou mais|
|Praia|trabalhado|pode ter|um ou mais|

Agora, para cada estudo de caso apresentado determine os relacionamentos por meio do *esquema*.

> [Relacionamentos caso Loja de CDs](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso1.md#relacionamento)
>
> [Relacionamentos Vendedor de capelinha](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/respCaso2.md#relacionamento)

[Próxima aula -> Convenção para a utilização do diagrama](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/convencaoParaDiagrama.md#convenção-para-a-utilização-do-diagrama)
  
[Localize-se: lista das aulas](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/lista.md#lista-de-aulas)