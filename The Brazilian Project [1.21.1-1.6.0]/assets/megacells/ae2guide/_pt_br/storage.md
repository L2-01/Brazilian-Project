---
navigation:
  title: Armazenamento MEGA
  icon: item_storage_cell_256m
  parent: index.md
  position: 010
categories:
  - megacells
item_ids:
  - cell_component_1m
  - cell_component_4m
  - cell_component_16m
  - cell_component_64m
  - cell_component_256m
  - mega_item_cell_housing
  - mega_fluid_cell_housing
  - mega_chemical_cell_housing
  - mega_source_cell_housing
  - mega_mana_cell_housing
  - mega_experience_cell_housing
  - item_storage_cell_1m
  - item_storage_cell_4m
  - item_storage_cell_16m
  - item_storage_cell_64m
  - item_storage_cell_256m
  - fluid_storage_cell_1m
  - fluid_storage_cell_4m
  - fluid_storage_cell_16m
  - fluid_storage_cell_64m
  - fluid_storage_cell_256m
  - chemical_storage_cell_1m
  - chemical_storage_cell_4m
  - chemical_storage_cell_16m
  - chemical_storage_cell_64m
  - chemical_storage_cell_256m
  - source_storage_cell_1m
  - source_storage_cell_4m
  - source_storage_cell_16m
  - source_storage_cell_64m
  - source_storage_cell_256m
  - mana_storage_cell_1m
  - mana_storage_cell_4m
  - mana_storage_cell_16m
  - mana_storage_cell_64m
  - mana_storage_cell_256m
  - experience_storage_cell_1m
  - experience_storage_cell_4m
  - experience_storage_cell_16m
  - experience_storage_cell_64m
  - experience_storage_cell_256m
  - portable_item_cell_1m
  - portable_item_cell_4m
  - portable_item_cell_16m
  - portable_item_cell_64m
  - portable_item_cell_256m
  - portable_fluid_cell_1m
  - portable_fluid_cell_4m
  - portable_fluid_cell_16m
  - portable_fluid_cell_64m
  - portable_fluid_cell_256m
  - portable_chemical_cell_1m
  - portable_chemical_cell_4m
  - portable_chemical_cell_16m
  - portable_chemical_cell_64m
  - portable_chemical_cell_256m
  - portable_source_cell_1m
  - portable_source_cell_4m
  - portable_source_cell_16m
  - portable_source_cell_64m
  - portable_source_cell_256m
  - portable_mana_cell_1m
  - portable_mana_cell_4m
  - portable_mana_cell_16m
  - portable_mana_cell_64m
  - portable_mana_cell_256m
  - portable_experience_cell_1m
  - portable_experience_cell_4m
  - portable_experience_cell_16m
  - portable_experience_cell_64m
  - portable_experience_cell_256m
  - sky_bronze_ingot
  - sky_bronze_block
  - sky_osmium_ingot
  - sky_osmium_block
---

# MEGA Cells: Armazenamento

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/drive_cells.snbt" />
  <IsometricCamera yaw="195" pitch="10" />
</GameScene>

## [Células de Armazenamento](ae2:items-blocks-machines/storage_cells.md) MEGA

<Row>
  <ItemImage id="mega_item_cell_housing" scale="4" />
  <ItemImage id="item_storage_cell_1m" scale="4" />
  <ItemImage id="item_storage_cell_4m" scale="4" />
  <ItemImage id="item_storage_cell_16m" scale="4" />
  <ItemImage id="item_storage_cell_64m" scale="4" />
  <ItemImage id="item_storage_cell_256m" scale="4" />
</Row>

Como mencionado antes, o <ItemLink id="megacells:accumulation_processor" /> serve como o primeiro passo para montar
qualquer infraestrutura MEGA, e isso inclui seus próprios níveis superiores de células de armazenamento para começar. Com este
processador, um <ItemLink id="ae2:cell_component_256k" /> pode ser levado *ainda mais além*, de **1M** (equivalente a
"1024k") em diante até o nível M mais alto de **256M** — mais de *mil vezes* maior em capacidade que 256k.

<RecipeFor id="cell_component_1m" />
<RecipeFor id="cell_component_4m" />
<RecipeFor id="cell_component_16m" />
<RecipeFor id="cell_component_64m" />
<RecipeFor id="cell_component_256m" />

Claro, armazenamento mais capaz exige uma cápsula mais capaz para acompanhar, e é aí que entra mais Aço do Céu
para fabricar uma cápsula de célula de itens para seus novos componentes de nível M.

<Row>
  <RecipeFor id="mega_item_cell_housing" />
  <Recipe id="cells/standard/item_storage_cell_1m" />
  <Recipe id="cells/standard/item_storage_cell_1m_with_housing" />
</Row>

Para fluidos e tudo além, também há cápsulas dedicadas. Como se vê, a Pedra do Céu é poderosa o suficiente para
se ligar com alguns outros metais e também formar as células apropriadas, como o cobre para fazer cápsulas de célula de fluidos de
**Bronze do Céu**. Mesmo fora deste guia, o que quer que você possa imaginar pode ser suportado pelo MEGA com uma célula dedicada
e seu próprio tipo de cápsula.

<Row>
  <ItemImage id="sky_bronze_ingot" scale="4" />
  <ItemImage id="mega_fluid_cell_housing" scale="4" />
  <ItemImage id="fluid_storage_cell_1m" scale="4" />
  <ItemImage id="fluid_storage_cell_4m" scale="4" />
  <ItemImage id="fluid_storage_cell_16m" scale="4" />
  <ItemImage id="fluid_storage_cell_64m" scale="4" />
  <ItemImage id="fluid_storage_cell_256m" scale="4" />
</Row>

<Row>
  <Recipe id="transform/sky_bronze_ingot" />
  <RecipeFor id="mega_fluid_cell_housing" />
</Row>

## [Células Portáteis](ae2:items-blocks-machines/storage_cells.md#portable-item-storage) MEGA

O MEGA também fornece versões portáteis de todas as suas células, assim como o próprio AE2 faz, embora a capacidade aumentada dessas
células exija um tanto mais de energia. Assim, note que elas são fabricadas com uma
<ItemLink id="ae2:dense_energy_cell" /> em vez de uma <ItemLink id="ae2:energy_cell" /> comum.

Embora essas células portáteis também aceitem a gama completa de [melhorias](ae2:items-blocks-machines/upgrade_cards.md) que
as células portáteis ME comuns aceitam, sua bateria aumentada e a fome geral por energia significam que o
<ItemLink id="ae2:energy_card" /> comum não é *bem* forte o suficiente para sustentá-las. Para esse propósito, apenas o
<ItemLink id="megacells:greater_energy_card" /> serve.

<Row>
  <RecipeFor id="portable_item_cell_1m" />
</Row>
