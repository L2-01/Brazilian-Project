---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Células Espaciais
  icon: spatial_storage_cell_128
  position: 410
categories:
- tools
item_ids:
- ae2:spatial_storage_cell_2
- ae2:spatial_storage_cell_16
- ae2:spatial_storage_cell_128
- ae2:spatial_cell_component_2
- ae2:spatial_cell_component_16
- ae2:spatial_cell_component_128
---

# Células de Armazenamento Espacial

  <Row>
    <ItemImage id="spatial_storage_cell_2" scale="4" />

    <ItemImage id="spatial_storage_cell_16" scale="4" />

    <ItemImage id="spatial_storage_cell_128" scale="4" />
  </Row>

Células de Armazenamento Espacial são usadas para [armazenar volumes físicos de espaço](../ae2-mechanics/spatial-io.md). 
Elas são usadas num <ItemLink id="spatial_io_port" />.

Ao contrário das [Células de Armazenamento](../items-blocks-machines/storage_cells.md), células espaciais não podem ser reformatadas.

De novo, **VOCÊ NÃO PODE REINICIAR, REFORMATAR OU REDIMENSIONAR UMA CÉLULA ESPACIAL DEPOIS DE USÁ-LA.** Faça uma célula nova se quiser usar dimensões diferentes.


## Receitas

  <Row>
    <Recipe id="network/cells/spatial_storage_cell_2_cubed_storage" />

    <Recipe id="network/cells/spatial_storage_cell_16_cubed_storage" />

    <Recipe id="network/cells/spatial_storage_cell_128_cubed_storage" />
  </Row>

# Cápsulas

Células podem ser feitas com um componente espacial e uma cápsula, ou com a receita de cápsula ao redor de um componente espacial:

<Row>
  <Recipe id="network/cells/spatial_storage_cell_2_cubed" />

  <Recipe id="network/cells/spatial_storage_cell_2_cubed_storage" />
</Row>

Cápsulas sozinhas são fabricadas assim:

  <RecipeFor id="item_cell_housing" />

# Componentes Espaciais

Componentes Espaciais são o núcleo das células de armazenamento espacial. Cada nível aumenta as dimensões do volume que pode ser
armazenado por um fator de 8.

  <Row>
    <RecipeFor id="spatial_cell_component_2" />

    <RecipeFor id="spatial_cell_component_16" />

    <RecipeFor id="spatial_cell_component_128" />
  </Row>
