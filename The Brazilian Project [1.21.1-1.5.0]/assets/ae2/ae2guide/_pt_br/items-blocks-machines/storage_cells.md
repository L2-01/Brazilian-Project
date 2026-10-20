---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Células de Armazenamento
  icon: item_storage_cell_1k
  position: 410
categories:
- tools
item_ids:
- ae2:item_cell_housing
- ae2:fluid_cell_housing
- ae2:cell_component_1k
- ae2:cell_component_4k
- ae2:cell_component_16k
- ae2:cell_component_64k
- ae2:cell_component_256k
- ae2:item_storage_cell_1k
- ae2:item_storage_cell_4k
- ae2:item_storage_cell_16k
- ae2:item_storage_cell_64k
- ae2:item_storage_cell_256k
- ae2:fluid_storage_cell_1k
- ae2:fluid_storage_cell_4k
- ae2:fluid_storage_cell_16k
- ae2:fluid_storage_cell_64k
- ae2:fluid_storage_cell_256k
---

# Células de Armazenamento

<Column>
  <Row>
    <ItemImage id="item_storage_cell_1k" scale="4" />

    <ItemImage id="item_storage_cell_4k" scale="4" />

    <ItemImage id="item_storage_cell_16k" scale="4" />

    <ItemImage id="item_storage_cell_64k" scale="4" />

    <ItemImage id="item_storage_cell_256k" scale="4" />
  </Row>

  <Row>
    <ItemImage id="fluid_storage_cell_1k" scale="4" />

    <ItemImage id="fluid_storage_cell_4k" scale="4" />

    <ItemImage id="fluid_storage_cell_16k" scale="4" />

    <ItemImage id="fluid_storage_cell_64k" scale="4" />

    <ItemImage id="fluid_storage_cell_256k" scale="4" />
  </Row>
</Column>

Células de Armazenamento são um dos métodos primários de armazenamento no Applied Energistics. Elas vão em <ItemLink id="drive" />s
ou <ItemLink id="chest" />s.

Veja [Bytes e Tipos](../ae2-mechanics/bytes-and-types.md) para uma explicação de suas capacidades em bytes e tipos.

Componentes de armazenamento podem ser removidos da cápsula se a célula estiver vazia, shift-clicando com o botão direito com a célula na mão.

<Row>
    <Recipe id="upgrade/item_storage_cell_1k_to_4k" />

    Você pode melhorar células de armazenamento para níveis superiores combinando-as com componentes de armazenamento de nível superior numa grade de fabricação. O conteúdo será retido, e o componente de nível inferior é devolvido.
</Row>

## Capacidade de Armazenamento com Contagem de Tipos Variável

O [custo inicial dos tipos](../ae2-mechanics/bytes-and-types.md) é tal que uma célula com 1 tipo comporta 2x mais que uma célula com todos os 63 tipos em uso.

| Célula                                   | Capacidade Total da Célula com 1 Tipo em Uso | Capacidade Total da Célula com 63 Tipos em Uso |
| ---------------------------------------- | -----------------------------------------: | -------------------------------------------: |
| <ItemLink id="item_storage_cell_1k" />   |                                      8.128 |                                        4.160 |
| <ItemLink id="item_storage_cell_4k" />   |                                     32.512 |                                       16.640 |
| <ItemLink id="item_storage_cell_16k" />  |                                    130.048 |                                       66.560 |
| <ItemLink id="item_storage_cell_64k" />  |                                    520.192 |                                      266.240 |
| <ItemLink id="item_storage_cell_256k" /> |                                  2.080.768 |                                    1.064.960 |


## Particionamento

Células podem ser filtradas para aceitar apenas certos itens, semelhante a como <ItemLink id="storage_bus" />s podem ser filtrados. Isso é
feito numa <ItemLink id="cell_workbench" />.

Itens podem ser arrastados aos slots a partir do JEI/REI mesmo que você não tenha de fato nenhum daquele item.

## Melhorias

Células de armazenamento suportam as seguintes [melhorias](upgrade_cards.md), inseridas numa <ItemLink id="cell_workbench" />:

*   <ItemLink id="fuzzy_card" /> (não disponível em células de fluido) permite particionar a célula por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista de permissão para lista de bloqueio
*   <ItemLink id="equal_distribution_card" /> aloca a mesma quantidade de espaço de bytes da célula para cada tipo, de modo que um tipo não consiga encher a célula inteira
*   <ItemLink id="void_card" /> destrói itens inseridos se a célula estiver cheia (ou o espaço alocado daquele tipo específico no
    caso de um cartão de distribuição igualitária), útil para impedir que farms congestionem. Cuidado para particionar isto!
*   Células portáteis podem aceitar <ItemLink id="energy_card" /> para aumentar sua capacidade de bateria

## Coloração

Células portáteis de itens e de fluidos podem ser coloridas de forma semelhante à armadura de couro, fabricando-as junto com corantes.

# Cápsulas

Células podem ser feitas com um componente de armazenamento e uma cápsula, ou com a receita de cápsula ao redor de um componente de armazenamento:

<Row>
  <Recipe id="network/cells/item_storage_cell_1k" />

  <Recipe id="network/cells/item_storage_cell_1k_storage" />
</Row>

Cápsulas sozinhas são fabricadas assim:

<Row>
  <RecipeFor id="item_cell_housing" />

  <RecipeFor id="fluid_cell_housing" />
</Row>

# Componentes de Armazenamento

Componentes de Armazenamento são o núcleo de todas as células do AE2, determinando a capacidade das células. Cada nível aumenta a capacidade
em 4x e custa 3 do nível anterior.

<Column>
  <Row>
    <RecipeFor id="cell_component_1k" />

    <RecipeFor id="cell_component_4k" />

    <RecipeFor id="cell_component_16k" />
  </Row>

  <Row>
    <RecipeFor id="cell_component_64k" />

    <RecipeFor id="cell_component_256k" />
  </Row>
</Column>

# Células de Armazenamento de Itens

Células de armazenamento de itens podem comportar até 63 tipos distintos de itens, e estão disponíveis em todas as capacidades padrão.

<Column>
  <Row>
    <Recipe id="network/cells/item_storage_cell_1k_storage" />

    <Recipe id="network/cells/item_storage_cell_4k_storage" />

    <Recipe id="network/cells/item_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/item_storage_cell_64k_storage" />

    <Recipe id="network/cells/item_storage_cell_256k_storage" />
  </Row>
</Column>

## Armazenamento Portátil de Itens

Estas agem como um <ItemLink id="chest" /> minúsculo no seu bolso, ou como uma espécie de mochila. Podem ser carregadas num <ItemLink id="charger" />

Ao contrário das células de armazenamento padrão, estas de fato *reduzem* em capacidade de tipos conforme a capacidade de bytes aumenta, e têm metade da
capacidade total de bytes.

Além dos cartões de melhoria que todas as células podem receber, estas também aceitam <ItemLink id="energy_card" />s para melhorar suas baterias internas.

<Column>
  <Row>
    <RecipeFor id="portable_item_cell_1k" />

    <RecipeFor id="portable_item_cell_4k" />

    <RecipeFor id="portable_item_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_item_cell_64k" />

    <RecipeFor id="portable_item_cell_256k" />
  </Row>
</Column>

# Células de Armazenamento de Fluidos

Células de armazenamento de fluidos podem comportar até 5 tipos distintos de fluidos, e estão disponíveis em todas as capacidades padrão.

<Column>
  <Row>
    <Recipe id="network/cells/fluid_storage_cell_1k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_4k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/fluid_storage_cell_64k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_256k_storage" />
  </Row>
</Column>

## Armazenamento Portátil de Fluidos

Estas agem como um <ItemLink id="chest" /> minúsculo no seu bolso, ou como uma espécie de mochila. Podem ser carregadas num <ItemLink id="charger" />

Ao contrário das células de armazenamento padrão, estas de fato *reduzem* em capacidade de tipos conforme a capacidade de bytes aumenta, e têm metade da
capacidade total de bytes.

Além dos cartões de melhoria que todas as células podem receber, estas também aceitam <ItemLink id="energy_card" />s para melhorar suas baterias internas.

<Column>
  <Row>
    <RecipeFor id="portable_fluid_cell_1k" />

    <RecipeFor id="portable_fluid_cell_4k" />

    <RecipeFor id="portable_fluid_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_fluid_cell_64k" />

    <RecipeFor id="portable_fluid_cell_256k" />
  </Row>
</Column>

# Célula de Armazenamento Criativa

<Row>
  <ItemImage id="creative_storage_cell" scale="2" />
</Row>

Células criativas **não fornecem armazenamento infinito**. Em vez disso, elas agem como fontes e sumidouros infinitos de qualquer
item ou fluido para o qual você as [particionar](cell_workbench.md).
