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
  Cultive um Cristal de Prismarinho seu, que você pode pegar e mover.
</Column>

Um <ItemLink id="prismarine_crystal"/> transforma qualquer feixe num feixe de pureza 3.0, mas os selvagens nos Geodos de Cristal estão enraizados onde cresceram. Um **Cristal de Prismarinho Cultivado** funciona exatamente igual e pode ser levantado com uma chave e colocado em qualquer lugar. Cultivar um leva uma semente, um berço e dez milhões de AP de laser de alta pureza.

***

## <Color id="gold">1. Encontre um Cristal Selvagem</Color>

Despertar uma semente precisa de um feixe de pureza 3.0, e só um Cristal de Prismarinho produz um. Encontre um num Geodo de Cristal sob o fundo do oceano (veja [Estruturas](nautec:getting_started/structures.md)) e dispare um feixe nele, como descrito em [Energia de Laser](nautec:getting_started/laser_power.md). Você precisa disso uma vez: seu primeiro cristal cultivado pode despertar toda semente seguinte.

***

## <Color id="gold">2. Fabrique uma Semente de Cristal Dormente</Color>

Um Cristal de Prismarinho Impecável cercado de Fragmentos Ressonantes e Fragmentos de Cristal de Prismarinho produz uma <ItemLink id="dormant_crystal_seed"/>. Ela ainda não faz nada.

<RecipeFor id="dormant_crystal_seed"/>

***

## <Color id="gold">3. Desperte-a</Color>

<Row>
  <ItemImage id="dormant_crystal_seed" scale="2"/>
  <ItemImage id="prismarine_crystal_seed" scale="2"/>
</Row>

Carregue a Semente de Cristal Dormente numa [Câmara de Ressonância](resonance_chamber.md) alimentada pelo feixe de pureza 3.0. Quando a câmara entra em estado crítico ela transforma a semente numa <ItemLink id="prismarine_crystal_seed"/> brilhante: uma semente dormente entra, uma semente desperta sai. O JEI mostra essa receita sob a Câmara de Ressonância.

***

## <Color id="gold">4. Coloque-a num Berço</Color>

Coloque um <ItemLink id="crystal_cradle"/> onde quiser que o cristal fique, com **seis blocos livres acima dele**. Ar e água contam, então o berço funciona debaixo d'água. Clique direito no berço com a semente desperta para instalá-la; um cristal minúsculo aparece em cima.

<RecipeFor id="crystal_cradle"/>

Você pode retirar a semente com a mão vazia até ela começar a crescer. Funis e tubos também podem colocar sementes.

***

## <Color id="gold">5. Alimente-a com Dez Milhões de AP</Color>

Mire feixes de laser em qualquer um dos quatro lados do berço. A cada tique, o berço adiciona toda a potência de seus feixes ao crescimento da semente, mas **só enquanto a pureza do feixe for 2.0 ou maior**. Um feixe de pureza 2.0 vem de:

* uma <ItemLink id="bacterial_fuel_cell"/> (até 2.5)
* uma [Lente de Focalização](beam_optics.md) num feixe existente (eleva até 2.0)
* outro Cristal de Prismarinho (3.0)

Quando vários feixes alimentam o berço suas potências se somam e sua pureza fica próxima à do mais puro, perdendo um quarto da distância até a média. Um feixe fraco ainda derruba a pureza um pouco, então um feixe de 2.1 unido a um de 0 cai abaixo de 2.0.

A semente cresce num cristal completo após **10.000.000 de AP** (`crystalGrowthPower` em `config/nautec-common.toml`; o piso de pureza é `crystalGrowthPurity`). Mais potência a faz crescer mais rápido:

| Potência do feixe | Tempo para crescer |
|---|---|
| 100 AP/t | cerca de 83 minutos |
| 250 AP/t | cerca de 33 minutos |
| 500 AP/t | cerca de 17 minutos |
| 1.000 AP/t | cerca de 8 minutos |

O cristal sobre o berço fica mais alto conforme enche. O crescimento nunca drena: se o feixe parar, a semente espera até ele voltar, então você pode acumular os dez milhões em várias sessões.

Olhe o berço com o Jade para ver seu progresso, a potência e a pureza chegando, o tempo restante na potência atual e o que está segurando-o se parar (sem semente, sem espaço acima, sem energia ou pureza baixa demais).

<Color id="gold">Movendo uma semente em crescimento</Color>: quebre o berço com qualquer ferramenta. Ele cai com a semente e todo o seu crescimento armazenado, e sua dica mostra o andamento. Coloque-o de novo e o crescimento continua.

***

## <Color id="gold">6. O Cristal Cultivado</Color>

Aos dez milhões de AP a semente vira um Cristal de Prismarinho Cultivado completo sobre o berço. Ele funciona exatamente como um selvagem: dispare um feixe em sua lateral, e o topo e a base disparam feixes de pureza 3.0 que dividem a potência recebida (veja [Energia de Laser](nautec:getting_started/laser_power.md)). O berço fica vazio de novo e pronto para outra semente.

**Para movê-lo**, agache e clique direito em qualquer parte dele com uma chave. Qualquer chave de mod funciona, desde que esteja na tag `c:tools/wrench`, incluindo a <ItemLink id="aquarine_steel_wrench"/>. Você recebe o cristal de volta como item, e colocá-lo exige novamente seis blocos de altura livres.

Cristais selvagens ficam enraizados, e a habilidade de estilhaçamento da Picareta de Aço Aquarine só funciona em cristais selvagens, então um cultivado nunca quebra por acidente. O Jade marca cada cristal como Cultivado ou Natural.

Um cristal cultivado também é o coração de uma [Usina de Fusão](fusion_plant.md), o maior gerador do NauTec.
