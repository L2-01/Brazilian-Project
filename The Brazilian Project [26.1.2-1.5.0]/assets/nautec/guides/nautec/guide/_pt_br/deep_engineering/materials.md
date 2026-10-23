---
navigation:
  title: Materiais Profundos
  icon: nautec:flawless_prismarine_crystal
  position: 4
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:resonant_shard
  - nautec:flawless_prismarine_crystal
  - nautec:deep_steel_plating
---

# <Color id="light_purple">Materiais Profundos</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="flawless_prismarine_crystal" scale="2"/>
  Os três materiais de fabricação feitos pela Câmara de Ressonância e pela Forja de Pressão Abissal.
</Column>

Cada um deles vem de exatamente uma receita de máquina. O JEI mostra as receitas com seus requisitos de pureza e profundidade.

***

<Row>
  <ItemImage id="resonant_shard"/>
  ### <Color id="aqua">Fragmento Ressonante</Color>
</Row>

Feito numa [Câmara de Ressonância](resonance_chamber.md) a partir de um <ItemLink id="prismarine_crystal_shard"/>, num feixe de pureza 3.0 ou maior. Um fragmento entra, um Fragmento Ressonante sai.

Usado no [Portal](gateway.md), na [Forja de Pressão Abissal](pressure_forge.md), no [Tridente de Netuno](neptunes_trident.md), no Injetor de Laser da [Usina de Fusão](fusion_plant.md), na Semente de Cristal Dormente e nos blocos da [Rede de Ressonância](resonance_network.md), e prensado em Cristais de Prismarinho Impecáveis.

***

<Row>
  <ItemImage id="flawless_prismarine_crystal"/>
  ### <Color id="aqua">Cristal de Prismarinho Impecável</Color>
</Row>

Feito numa [Forja de Pressão Abissal](pressure_forge.md) a partir de um Fragmento Ressonante. Precisa de pureza 2.0, a Forja em Y -20 ou menor, e 10 segundos por cristal.

Usado no [Rifle Atlante](atlantean_rifle.md), no [Tridente de Netuno](neptunes_trident.md), no [Portal](gateway.md), no Controlador de Fusão, no Berço de Cristal, na Semente de Cristal Dormente e no Sintetizador de Pressão.

***

<Row>
  <ItemImage id="deep_steel_plating"/>
  ### <Color id="aqua">Revestimento de Aço Profundo</Color>
</Row>

Feito numa [Forja de Pressão Abissal](pressure_forge.md) a partir de um Lingote de Aço Aquarine. Precisa de pureza 2.5, a Forja em Y -40 ou menor, e 15 segundos por placa.

Usado no [Rifle Atlante](atlantean_rifle.md), no [Tridente de Netuno](neptunes_trident.md), no [Portal](gateway.md), na maioria das partes da [Usina de Fusão](fusion_plant.md) e no Berço de Cristal.

Também repara um <ItemLink id="submarine"/> numa bigorna. Ponha o Explorador Marinho recolhido no espaço da esquerda e o revestimento na direita. Cada placa restaura 20% do casco e custa 2 níveis. O item de reparo e a quantia por item são `submarineRepairItem` e `submarineRepairPercent` em `config/nautec-common.toml`.
