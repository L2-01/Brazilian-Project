---
navigation:
  title: Cultivo de Cristais
  icon: nautec:prismarine_crystal_seed
  position: 7
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:dormant_crystal_seed
  - nautec:prismarine_crystal_seed
  - nautec:crystal_cradle
---

# <Color id="light_purple">Cultivo de Cristais</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="prismarine_crystal_seed" scale="2"/>
    <ItemImage id="crystal_cradle" scale="2"/>
  </Row>
  Cultive um Cristal de Prismarinho só seu, que você pode pegar e mover.
</Column>

Um <ItemLink id="prismarine_crystal"/> transforma qualquer feixe num feixe de pureza 3.0, mas os naturais nos Geodos de Cristal estão enraizados onde nasceram. Um **Cristal de Prismarinho Cultivado** funciona exatamente igual e pode ser levantado com uma chave e colocado em qualquer lugar. Cultivar um exige uma semente, um berço e dez milhões de AP de laser de alta pureza.

***

## <Color id="gold">1. Encontre um Cristal Natural</Color>

Despertar uma semente precisa de um feixe de pureza 3.0, e só um Cristal de Prismarinho produz um. Encontre um num Geodo de Cristal sob o leito do oceano (veja [Estruturas](nautec:getting_started/structures.md)) e dispare um feixe nele, como descrito em [Energia de Laser](nautec:getting_started/laser_power.md). Você precisa dele uma vez: seu primeiro cristal cultivado pode despertar todas as sementes seguintes.

***

## <Color id="gold">2. Fabrique uma Semente de Cristal Dormente</Color>

Um Cristal de Prismarinho Impecável cercado de Fragmentos Ressonantes e Fragmentos de Cristal de Prismarinho faz uma <ItemLink id="dormant_crystal_seed"/>. Ela ainda não faz nada.

<RecipeFor id="dormant_crystal_seed"/>

***

## <Color id="gold">3. Desperte-a</Color>

<Row>
  <ItemImage id="dormant_crystal_seed" scale="2"/>
  <ItemImage id="prismarine_crystal_seed" scale="2"/>
</Row>

Carregue a Semente de Cristal Dormente numa [Câmara de Ressonância](resonance_chamber.md) alimentada pelo feixe de pureza 3.0. Quando a câmara entra no crítico, ela transforma a semente numa <ItemLink id="prismarine_crystal_seed"/> brilhante: uma semente dormente entra, uma semente desperta sai. O JEI mostra essa receita na Câmara de Ressonância.

***

## <Color id="gold">4. Coloque-a num Berço</Color>

Coloque um <ItemLink id="crystal_cradle"/> onde você quer o cristal, com **seis blocos livres acima dele**. Ar ou água contam, então o berço funciona debaixo d'água. Clique no berço com o botão direito segurando a semente desperta para colocá-la; um cristal minúsculo aparece em cima.

<RecipeFor id="crystal_cradle"/>

Você pode tirar a semente de volta com a mão vazia até ela começar a crescer. Funis e canos também podem colocar sementes.

***

## <Color id="gold">5. Alimente-a com Dez Milhões de AP</Color>

Mire feixes de laser em qualquer uma das quatro laterais do berço. A cada tique, o berço soma a potência total dos seus feixes ao crescimento da semente, mas **só enquanto a pureza do feixe for 2.0 ou maior**. Um feixe de pureza 2.0 vem de:

* uma <ItemLink id="bacterial_fuel_cell"/> (até 2.5)
* uma [Lente de Focalização](beam_optics.md) num feixe existente (eleva até 2.0)
* outro Cristal de Prismarinho (3.0)

Quando vários feixes alimentam o berço, suas potências se somam e a pureza fica perto da pureza do mais puro, perdendo um quarto da diferença até a média. Um feixe fraco ainda puxa a pureza um pouco para baixo, então um feixe de 2.1 unido a um de 0 cai abaixo de 2.0.

A semente vira um cristal completo após **10.000.000 AP** (`crystalGrowthPower` em `config/nautec-common.toml`; o mínimo de pureza é `crystalGrowthPurity`). Mais energia a faz crescer mais rápido:

| Potência do feixe | Tempo para crescer |
|---|---|
| 100 AP/t | cerca de 83 minutos |
| 250 AP/t | cerca de 33 minutos |
| 500 AP/t | cerca de 17 minutos |
| 1.000 AP/t | cerca de 8 minutos |

O cristal acima do berço fica mais alto conforme enche. O crescimento nunca é perdido: se o feixe parar, a semente espera até ele voltar, então você pode acumular os dez milhões em várias sessões.

Olhe para o berço com o Jade para ver seu progresso, a potência e a pureza chegando, o tempo restante na potência atual e o que o está segurando se parar (sem semente, sem espaço acima, sem energia ou pureza baixa demais).

<Color id="gold">Movendo uma semente crescendo</Color>: quebre o berço com qualquer ferramenta. Ele cai com a semente e todo o seu crescimento armazenados, e sua dica mostra o quanto já cresceu. Coloque-o de novo e o crescimento continua.

***

## <Color id="gold">6. O Cristal Cultivado</Color>

Aos dez milhões de AP a semente vira um Cristal de Prismarinho Cultivado completo sobre o berço. Funciona exatamente como um natural: dispare um feixe na lateral dele, e o topo e a base emitem feixes de pureza 3.0 que dividem a potência que entra (veja [Energia de Laser](nautec:getting_started/laser_power.md)). O berço fica vazio de novo, pronto para outra semente.

**Para movê-lo**, agache-se e clique com o botão direito em qualquer parte dele segurando uma chave. A chave de qualquer mod funciona, desde que esteja na marcador `c:tools/wrench`, incluindo a <ItemLink id="aquarine_steel_wrench"/>. Você recebe o cristal de volta como item, e colocá-lo exige seis blocos livres de altura de novo.

Cristais naturais ficam enraizados, e a habilidade de estilhaçar da Picareta de Aço Aquarine só funciona em cristais naturais, então um cultivado nunca quebra por acidente. O Jade marca cada cristal como Cultivado ou Natural.

Um cristal cultivado também é o coração de uma [Usina de Fusão](fusion_plant.md), o maior gerador do NauTec.