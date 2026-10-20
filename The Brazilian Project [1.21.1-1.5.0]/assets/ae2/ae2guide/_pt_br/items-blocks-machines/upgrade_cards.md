---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Cartões de Melhoria
  icon: speed_card
  position: 410
categories:
- tools
item_ids:
- ae2:basic_card
- ae2:advanced_card
- ae2:redstone_card
- ae2:capacity_card
- ae2:void_card
- ae2:fuzzy_card
- ae2:speed_card
- ae2:inverter_card
- ae2:crafting_card
- ae2:equal_distribution_card
- ae2:energy_card
---

# Cartões de Melhoria

<Row>
  <ItemImage id="redstone_card" scale="2" />

  <ItemImage id="capacity_card" scale="2" />

  <ItemImage id="void_card" scale="2" />

  <ItemImage id="fuzzy_card" scale="2" />

  <ItemImage id="speed_card" scale="2" />

  <ItemImage id="inverter_card" scale="2" />

  <ItemImage id="crafting_card" scale="2" />

  <ItemImage id="equal_distribution_card" scale="2" />

  <ItemImage id="energy_card" scale="2" />
</Row>

Cartões de melhoria mudam o comportamento de [dispositivos](../ae2-mechanics/devices.md) e máquinas do AE2, aumentando sua velocidade, melhorando sua
capacidade de filtro, habilitando controle por redstone, etc.

## Componentes de Cartão

<Row>
  <ItemImage id="basic_card" scale="2" />

  <ItemImage id="advanced_card" scale="2" />
</Row>

Cartões são fabricados com bases de cartão básicas ou avançadas

<Row>
  <RecipeFor id="basic_card" />

  <RecipeFor id="advanced_card" />
</Row>

## Cartão de Redstone

<ItemImage id="redstone_card" scale="2" />

Cartões de redstone adicionam controle por redstone, adicionando um botão de alternância na GUI do dispositivo para trocar entre várias condições de redstone.

<RecipeFor id="redstone_card" />

## Cartão de Capacidade

<ItemImage id="capacity_card" scale="2" />

Cartões de capacidade aumentam a quantidade de slots de filtro em pontos de importação, exportação e armazenamento, e em planos de formação.

<RecipeFor id="capacity_card" />

## Cartão de Destruição de Sobras

<ItemImage id="void_card" scale="2" />

Cartões de destruição de sobras podem ser aplicados a [células de armazenamento](storage_cells.md) numa <ItemLink id="cell_workbench" />
e deletarão itens recebidos se a célula estiver cheia. (não esqueça de [particionar](cell_workbench.md) suas células!) Combinado com um cartão de distribuição igualitária,
itens serão destruídos se a seção daquele item específico da célula estiver cheia, mesmo se as seções de outros itens estiverem vazias.

<RecipeFor id="void_card" />

## Cartão de Imprecisão

<ItemImage id="fuzzy_card" scale="2" />

Cartões de imprecisão permitem que dispositivos e ferramentas com filtros filtrem por nível de dano e/ou ignorem o NBT do item, permitindo exportar
todos os machados de ferro não importando nível de dano e encantamentos, ou exportar apenas espadas de diamante danificadas, não as totalmente reparadas.

Abaixo há um exemplo de como os modos de comparação de dano impreciso funcionam: o lado esquerdo é a
config do ponto, o topo é o item comparado.

| 25%                     | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Reparada |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------- |
| Picareta Quase Quebrada | ✅                       | \*\*\*\*                | \*\*\*\*                | \*\*\*\*          |
| Picareta Reparada       | \*\*\*\*                | ✅                       | ✅                       | ✅                 |

| 50%                     | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Reparada |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------- |
| Picareta Quase Quebrada | ✅                       | ✅                       | \*\*\*\*                | \*\*\*\*          |
| Picareta Reparada       | \*\*\*\*                | \*\*\*\*                | ✅                       | ✅                 |

| 75%                     | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Reparada |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------- |
| Picareta Quase Quebrada | ✅                       | ✅                       | \*\*\*\*                | \*\*\*\*          |
| Picareta Reparada       | \*\*\*\*                |                         | ✅                       | ✅                 |

| 99%                     | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Reparada |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------- |
| Picareta Quase Quebrada | ✅                       | ✅                       | ✅                       | \*\*\*\*          |
| Picareta Reparada       | \*\*\*\*                | \*\*\*\*                | \*\*\*\*                | ✅                 |

| Ignorar                 | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Reparada |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------- |
| Picareta Quase Quebrada | ✅                       | ✅                       | ✅                       | **✅**             |
| Picareta Reparada       | **✅**                   | **✅**                   | **✅**                   | ✅                 |

<RecipeFor id="fuzzy_card" />

## Cartão de Aceleração

<ItemImage id="speed_card" scale="2" />

Cartões de aceleração fazem as coisas irem mais rápido, fazendo pontos de importação e exportação moverem mais itens por operação e fazendo inscritores
e montadores trabalharem mais rápido.

<RecipeFor id="speed_card" />

## Cartão Inversor

<ItemImage id="inverter_card" scale="2" />

Cartões inversores trocam filtros em dispositivos e ferramentas de lista de permissão para lista de bloqueio.

<RecipeFor id="inverter_card" />

## Cartão de Fabricação

<ItemImage id="crafting_card" scale="2" />

Cartões de fabricação permitem que o dispositivo envie pedidos de fabricação ao seu sistema de [autofabricação](../ae2-mechanics/autocrafting.md)
para conseguir os itens que deseja.

<RecipeFor id="crafting_card" />

## Cartão de Distribuição Igualitária

<ItemImage id="equal_distribution_card" scale="2" />

Cartões de distribuição igualitária podem ser aplicados a [células de armazenamento](storage_cells.md) numa <ItemLink id="cell_workbench" /> e
dividem a célula em seções de tamanho igual baseadas no que o cartão está [particionado](cell_workbench.md). Isso impede que um tipo de item encha completamente
a célula.

<RecipeFor id="equal_distribution_card" />

## Cartão de Energia

<ItemImage id="energy_card" scale="2" />

Cartões de energia adicionam mais armazenamento de energia a certas ferramentas como terminais portáteis, e tornam <ItemLink id="vibration_chamber" />s
mais eficientes.

<RecipeFor id="energy_card" />
