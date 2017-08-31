# Estudos de caso

## Loja de CDs

Maria possui uma loja que vende CDs de música e organizou os pequenos discos em ordem alfabética, em prateleiras horizontais para fácil manipulação e seleção. O que maria quer é atender bem seus clientes para poder faturar mais com loja **"Aqui tem CD"**. Para isso, ela estudou muito e decorou o nome de muitos artistas, bandas, músicas e gênero músical a fim de ser a melhor consultora da região. Maria ia muito bem, faturava e não se preocupava com a sobrevivência de seu negócio. Pois bem, em um certo dia Maria viu no jornal da cidade o anúncio de uma loja concorrente chamada **"Catálogo Digital"**. Essa loja era coordenada por Ana que não saia do computador a loja que vende músicas. Maria encontrou na loja muitas telas e teclados e ficou curiosa. Quis saber porque não tinha CDs, capas e caixinhas com encartes na loja. Perguntou a menina Ana onde estavam os CDs, afinal era uma loja de CDs. Ana respondeu que a loja não vendia CDs, vendia música e os produtos vinculados a música acompanhavam a música.

Então Maria percebeu que devia mudar. Contatou os estudantes do curso técnico de informática da unidade Dendezeiros do SENAI para desenvolverem a sua solução. Queria ir além da concorrência e pediu um catálogo de CDs para atender as perguntas de seus clientes. Maria, experiente, sabia o gosto de seu clientes que buscavam informações sobre o nome, preço e gravadora. Cada CD possui diferentes quantidades de faixas, contendo músicas que, as vezes, se repetem em outro CD e em outra posição. Cada música tem um tempo de duração e é importante saber os autores e o ano de suas gravações, em um determinado CD. Existem também, as encomendas e para isso é importante saber informações mais detalhadas das gravadoras para efetuar uma compra. Maria quer também usar de uma estratégia de venda que tem dado muito certo na loja de prateleiras, em cada CD deve haver a indicação para outro. A classificaçaõ dos CDs deve ser por faixa de preço ao qual ele pertence.

## Vendedor de capelinha

Seu antônio tem 65 anos e vende capelinha na praia de 4ª à domingo. Ele costuma comprar os picolés na fábrica, em grande quantidade e diversidade. Cada picolé custa, para seu Antônio, R$0,75 e ele vende por R$2,00 cada. O problema é que a quantidade de praias que ele percorre aumentou pois as prais tem estado menos cheias e seu Antônio está voltando pra casa com picoles que não foram vendidos no período costumeiro.

O filho de seu Antônio, Angelo, com 22 anos, estudante do curso técnico de informática resolveu ajudar o pai. Em entrevista, conseguiu saber que o pai compra 25 tipos de picolé sendo 12 de frutas distintas e 12 de sabores de doces. Descobriu também que o pai dele passa por 4 prais e perde tempo ao sair delas para cobrar das pessoas que compraram fiado. Perder tempo para combrar e incluir uma praia a mais no circuito significa deixar de vender, pois Seu Antônio dedica mais tempo dos seus momentos de sou cobrando e se deslocando.  
Agora, Angelo vai criar o projeto de bancode dados para seu Antônio relacionando as entidades para tentar dar ao pai uma forma mais rápida de tomar decisões.

## Pratique

- identifique as entidades;
- dê um nome a cada entidade;
- há informações relevantes da entidade necessárias às operações da empresa/profissional?
- cada instância da entidade possui um identificador único(chave)?
- escreva uma descrição das supostas entidades
    - ex.: CD é o produto básico de venda .... Picolés são: do *tipo* fruta e doce
- faça um diagrama com pelo menos, alguns de seus atributos.
> ![clique para ver o diagrama do catálogo de CDs com alguns atributos](aulas/img/entidadesProjetoCatCDs.png "Diagrama do catálogo de CDs")

### Prática para o catálogo de CDs

Nomo do projeto: **Católodo de CDs**

Contatante: **Maria**

1. CD - produto da venda
2. Musica - conteúdo do CD
3. Gravadora - fornecedor do CD
4. Autor - cria a música
5. Faixa - forma de organização das músucas no CD
6. Preço - valor da venda do produto CD
7. Artista - conteúdo do CD
8. Banda - conteúdo do CD



## Relacionamento

Sempre que duas entidades apresentarem *interdependência*, indica-se um relacionamento entre elas. (picolé de frutas ou venda na praia).

Use o seguinte esquema por meio de substituição:

**Cada** *entidade!* **deve ter ou pode ter** *relacionamento* **uma ou mais ou uma única** *entidade2*

Então usando a subtituição temos:

- **Cada** *CD* **deve ser** *gravado* por **uma única** *gravadora*.
- **Cada** *picolé* **deve ser** *vendido* com **um único** *tipo* de sabor.

Você deve ter notado que cada relacionamento contém um nome; um verbo ou uma locução no particípio passado.Tem também a determinação de opcionalidade(deve ou pode ...) e um certo grau de cardinalidade (uma única ou uma ou mais).

### Relacionamentos para o catálogo de CDs

- **Cada** *CD* **deve ser** *gravado* por **uma única** *gravadora*.
- **Cada** *gravadora* **deve ter** *gravado* **uma ou mais** *CDs*.

- **Cada** *CD* **deve ter** *precificado* **um único** *Preço*.
- **Cada** *Preço* **deve estar** *precificado* em **um ou mais** *CDs*.

- **Cada** *CD* **deve ter** *garavado* **uma ou mais** *músicas*.
- **Cada** *música* **deve estar** *garavada* em **um ou mais** *CDs*.

**OBS**
> Cd tem relação com música ou tem relação  com faixa?
> Se a música tem relação com faixa então a música não precisa ter relação com CD?
> o que acham?

- **Cada** *Faixa* **deve estar** *incluida* em **uma ou mais** *CD*.
- **Cada** *CD* **deve ter** *incluido* **um ou mais** *Faixa*.

- **Cada** *Faixa* **deve ter** *ordenado* **uma única** *músicas*.
- **Cada** *música* **deve estar** *ordenada* em **uma única** *Faixa*.

- **Cada** *Autor* **deve ter** *composta* **uma ou mais** *músicas*.
- **Cada** *música* **deve ser** *composta* por **um ou mais** *Autores*.

- **Cada** *Artista* **deve ter** *cantado* **uma ou mais** *músicas*.
- **Cada** *música* **deve ser** *cantada* por **um ou mais** *Artistas*

- **Cada** *Música* **deve ser** *tocada* por **uma ou mais** *Bandas*.
- **Cada** *Banda* **deve ter** *tocado* **um ou mais** *Música*.

- **Cada** *Banda* **deve ter** *elencado* **um ou mais** *Artistas*.
- **Cada** *Artista* **deve ser** *elencado* em **uma ou mais** *Bandas*.




