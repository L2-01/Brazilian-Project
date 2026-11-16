---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Ponto de Exportação ME
  icon: export_bus
  position: 220
categories:
- devices
item_ids:
- ae2:export_bus
---

# O Ponto de Exportação

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/export_bus.snbt" />
</GameScene>

O ponto de exportação puxa itens e fluidos (e o que mais houver, conforme addons) do [armazenamento da rede](../ae2-mechanics/import-export-storage.md)
e os empurra para o inventário em que está encostado.

Para reduzir lag, se o ponto de exportação não exportou nada recentemente, ele entra numa espécie de
"modo de espera" em que opera lentamente, e acorda e acelera até a velocidade máxima (4 operações por segundo) quando exporta algo com sucesso.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Filtragem

Por padrão, o ponto não exportará nada. Itens inseridos nos seus slots de filtro atuarão como lista de permissão,
permitindo que aqueles itens específicos sejam exportados.

Itens e fluidos podem ser arrastados aos slots a partir do JEI/REI mesmo que você não tenha de fato nenhum daquele item.

Clique com o botão direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

## Melhorias

O ponto de importação suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> aumenta o número de slots de filtro e traz uma configuração de em que ordem exportar o que é filtrado.
*   <ItemLink id="speed_card" /> aumenta a quantidade de coisas movidas por operação.
*   <ItemLink id="fuzzy_card" /> permite ao ponto filtrar por nível de dano e/ou ignorar o NBT do item.
*   <ItemLink id="crafting_card" /> permite ao ponto enviar pedidos de fabricação ao seu sistema de [autofabricação](../ae2-mechanics/autocrafting.md)
    para conseguir os itens que deseja. Pode ser configurado para puxar os itens do armazenamento se possível, ou para sempre fazer um pedido
    de fabricação de um item novo.
*   <ItemLink id="redstone_card" /> adiciona controle por redstone, permitindo ativar com sinal alto, sinal baixo ou uma vez por pulso

## Velocidades

| Cartões de Aceleração | Itens Movidos por Operação |
|:----------------------|:---------------------------|
| 0                     | 1                          |
| 1                     | 8                          |
| 2                     | 32                         |
| 3                     | 64                         |
| 4                     | 96                         |

## Receita

<RecipeFor id="import_bus" />
