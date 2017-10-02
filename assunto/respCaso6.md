# Caso Orquestra

## Entidades identificadas

- MÚSICOS - especialista em um instrumento.
- NAIPE - arranjos por tipo de instrumento.
- CHEFE - líder dos músicos de um naipe. 
- ESPECIALIDADE - capacidade excelente que um músico tem para reproduzir música por meio de um instrumento.
- HISTÓRICO - são as realizações dos concertos da orquestra
- CONCERTO - programação de uma obra com um certo número de naipes e músicos

## Esquema de *interação*, *cardinalidade* e *condição* entre as entidades

CADA *músico* (pai) DEVE ESTAR *ligado* (filho) A UM ÚNICO *naipe* (pai) COM EXATAMENTE UMA *especialidades* (pai)
CADA *naipe* (pai) DEVE TER *integrado* (filho) UM *músicos* (pai) COM UMA *especialidades* (pai)
CADA *especialidades* (pai) DEVE TER *epecialistas* (filho) DE UM ÚNICO *naipe* (pai) COM UM *músicos* (pai) 

CADA *músico* (filho) PODE SER *chefiado* POR UM ÚNICO *chefe* (pai)
CADA *chefe* (pai) DEVE TER *chefido* UM OU MAIS *músicos* (filho)

CADA *concerto* (filho) DEVE ESTAR *ligado* A UM ÚNICO *histórico* (pai)
CADA *histórico* (pai) DEVE TER O *registro* DE UM OU MAIS *concertos* (filho)

CADA *concerto* (filho) DEVE SER *executado* EM UM ÚNICA *pauta* (pai)
CADA *pauta* (pai) PODE TER *executado* UM OU MAIS *concertos* (filho)

CADA *pautas* (filho) DEVE TER *registrado* UM ÚNICA *rua* (pai)
CADA *rua* (pai) PODE SER *vinculada* UMA OU MAIS *pautas* (filho)

CADA *rua* (pai) DEVE SER *registrada* EM UM OU MAIS *bairros* (filho)
CADA *bairro* (filho) PODE TER *vinculado* UMA ÚNICA *rua* (pai)

CADA *bairro* (pai) DEVE SER *registrado* EM UM OU MAIS *cidades* (filho)
CADA *cidade* (filho) PODE TER *vinculado* UM ÚNICO *bairro* (pai)

CADA *cidade* (pai) DEVE SER *registrado* EM UM OU MAIS *uf* (filho)
CADA *uf* (filho) PODE TER *vinculado* UMA ÚNICA *cidade* (pai)

CADA *uf* (pai) DEVE SER *registrado* EM UM OU MAIS *países* (filho)
CADA *país* (filho) PODE TER *vinculado* UM ÚNICO *uf* (pai)

## Resultado do processo de normalização

- MÚSICOS_CHEFE: (*id_musico*, nome, chefe_de_naipe),
- NAIPE: (*id_naipe*, nome),
- ESPECIALIDADE: (*id_especialidade*, nome_instrumento),
- MÚSICO_NAIPE_ESPECIALIDADE: (*id_musico*, *id_naipe*, *id_especialidade*)
- HISTÓRICO: (*id_histórico*, registro_foto, registro_vídeo, *id_naipe*, *id_musico*),
- CONCERTO: (*id_concerto*, *id_histórico*, nome_obra, data_concerto, horário, *id_pauta*),
- RELEASE: (*id_release*, texto),
- PREÇO_PAUTA (*id_preço*, preço_custo)
- PAUTA (*id_pauta*, nome, *id_rua*, *id_preço*)
- RUA (*id_rua*, nome, número),
- BAIRRO (*id_bairro*, nome, *id_rua*),
- CIDADE (*id_cidade*, nome, *id_bairro*),
- UF (*id_uf*, nome, *id_cidade*),
- PAÍS (*id_país*, nome, *id_uf*),

## Transposição para o modelo físico

É importamte que o código escrito em `SQL` respeite a estrutura de sequência para a criação do `script`. Essa estrutura dever ser de cima para baixo começando pelas tabelas `pais` e de pois as tabelas `filhas`. Isso evita erros de interpretação.

Veja o script [Data definition Language (DDL)](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/introducao.md#conceitos) resultante da transposição do `modelo lógico`: [script orquestra.sql](src/orquestra.sql "script orquestra.sql")

[Localize-se: lista das aulas](https://github.com/tmenegaz/db_dendezeiros/blob/master/assunto/lista.md#lista-de-aulas)





 