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

Cartões de melhoria mudam o comportamento dos [dispositivos](../ae2-mechanics/devices.md) e máquinas do AE2, aumentando sua velocidade, melhorando sua
capacidade de filtro, habilitando controle por redstone etc.

## Componentes de Cartão

<Row>
  <ItemImage id="basic_card" scale="2" />

  <ItemImage id="advanced_card" scale="2" />
</Row>

Cartões são fabricados com bases de cartão básico ou avançado

<Row>
  <RecipeFor id="basic_card" />

  <RecipeFor id="advanced_card" />
</Row>

## Cartão de Redstone

<ItemImage id="redstone_card" scale="2" />

Cartões de redstone adicionam controle por redstone, incluindo um botão na GUI do dispositivo para alternar entre várias condições de redstone.

<RecipeFor id="redstone_card" />

## Cartão de Capacidade

<ItemImage id="capacity_card" scale="2" />

Cartões de capacidade aumentam a quantidade de slots de filtro em pontos de importação, exportação e armazenamento, e em planos de formação.

<RecipeFor id="capacity_card" />

## Cartão de Destruição de Sobras

<ItemImage id="void_card" scale="2" />

Cartões de destruição de sobras podem ser aplicados a [células de armazenamento](storage_cells.md) numa <ItemLink id="cell_workbench" />
e deletam itens que chegam se a célula estiver cheia. (não esqueça de [particionar](cell_workbench.md) suas células!) Combinado com um cartão de distribuição igualitária,
itens serão descartados se a seção daquele item específico na célula estiver cheia, mesmo que as seções de outros itens estejam vazias.

<RecipeFor id="void_card" />

## Cartão de Imprecisão

<ItemImage id="fuzzy_card" scale="2" />

Cartões de imprecisão permitem que dispositivos e ferramentas com filtros filtrem por nível de dano e/ou ignorem o NBT do item, permitindo exportar
todos os machados de ferro independente do nível de dano e encantamentos, ou exportar apenas espadas de diamante danificadas, não as totalmente reparadas.

Abaixo está um exemplo de como os modos de comparação de dano por imprecisão funcionam; o lado esquerdo é a
configuração do ponto e o topo é o item comparado.

| 25%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta de Reparo Total |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada | ✅                   | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            | ✅                   | ✅                   | ✅                   |

| 50%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta de Reparo Total |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada | ✅                   | ✅                   | \*\*\*\*            | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            | \*\*\*\*            | ✅                   | ✅                   |

| 75%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta de Reparo Total |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada | ✅                   | ✅                   | \*\*\*\*            | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            |                     | ✅                   | ✅                   |

| 99%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta de Reparo Total |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada | ✅                   | ✅                   | ✅                   | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            | ✅                   |

| Ignorar               | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta de Reparo Total |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada | ✅                   | ✅                   | ✅                   | **✅**               |
| Picareta Totalmente Reparada | **✅**               | **✅**               | **✅**               | ✅                   |

<RecipeFor id="fuzzy_card" />

## Cartão de Aceleração

<ItemImage id="speed_card" scale="2" />

Cartões de aceleração fazem as coisas andarem mais rápido, fazendo pontos de importação e exportação moverem mais itens por operação e fazendo inscritores
e montadores trabalharem mais rápido.

<RecipeFor id="speed_card" />

## Cartão Inversor

<ItemImage id="inverter_card" scale="2" />

Cartões inversores trocam os filtros em dispositivos e ferramentas de lista branca para lista negra.

<RecipeFor id="inverter_card" />

## Cartão de Fabricação

<ItemImage id="crafting_card" scale="2" />

Cartões de fabricação permitem que o dispositivo envie requisições de fabricação ao seu sistema de
[fabricação automática](../ae2-mechanics/autocrafting.md) para obter os itens desejados.

<RecipeFor id="crafting_card" />

## Cartão de Distribuição Igualitária

<ItemImage id="equal_distribution_card" scale="2" />

Cartões de distribuição igualitária podem ser aplicados a [células de armazenamento](storage_cells.md) numa <ItemLink id="cell_workbench" /> e
dividem a célula em seções de tamanho igual com base em para o que o cartão está [particionado](cell_workbench.md). Isso impede que um tipo de item encha
completamente a célula.

<RecipeFor id="equal_distribution_card" />

## Cartão de Energia

<ItemImage id="energy_card" scale="2" />

Cartões de energia adicionam mais armazenamento de energia a certas ferramentas como terminais portáteis, e tornam <ItemLink id="vibration_chamber" />s
mais eficientes.

<RecipeFor id="energy_card" />
