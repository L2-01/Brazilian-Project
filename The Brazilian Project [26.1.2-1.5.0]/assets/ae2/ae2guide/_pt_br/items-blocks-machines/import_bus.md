---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Ponto de Importação
  icon: import_bus
  position: 220
categories:
- devices
item_ids:
- ae2:import_bus
---

# O Ponto de Importação

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/import_bus.snbt" />
</GameScene>

O ponto de importação puxa itens e fluidos (e o que mais houver, dependendo dos addons) do inventário que está tocando e os empurra para o
[armazenamento de rede](../ae2-mechanics/import-export-storage.md).

Para reduzir lag, se o ponto de importação não importou nada recentemente, ele entra numa espécie de
"modo de espera" em que opera lentamente, e acorda e acelera até a velocidade máxima (4 operações por segundo) quando importa algo com sucesso.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Filtragem

Por padrão, o ponto importa tudo a que tem acesso. Itens inseridos em seus slots de filtro funcionam como lista branca, permitindo
apenas que aqueles itens específicos sejam importados.

Itens e fluidos podem ser arrastados para os slots a partir do JEI/REI mesmo que você não tenha nenhum daquele item.

Clique com o botão direito usando um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

## Melhorias

O ponto de importação suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> aumenta a quantidade de slots de filtro
*   <ItemLink id="speed_card" /> aumenta a quantidade de coisas movidas por operação
*   <ItemLink id="fuzzy_card" /> permite ao ponto filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista branca para lista negra
*   <ItemLink id="redstone_card" /> adiciona controle por redstone, permitindo ativo com sinal alto, com sinal baixo ou uma vez por pulso

## Velocidades

| Cartões de Aceleração | Itens Movidos por Operação |
|:-------------------|:--------------------------|
| 0                  | 1                         |
| 1                  | 8                         |
| 2                  | 32                        |
| 3                  | 64                        |
| 4                  | 96                        |

## Receita

<RecipeFor id="import_bus" />
