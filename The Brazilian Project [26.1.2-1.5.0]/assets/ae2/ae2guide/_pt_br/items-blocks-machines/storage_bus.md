---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Ponto de Armazenamento
  icon: storage_bus
  position: 220
categories:
- devices
item_ids:
- ae2:storage_bus
---

# O Ponto de Armazenamento

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/storage_bus.snbt" />
</GameScene>

Já quis *manter* seu monstro de baús em vez de substituí-lo por algo sensato? Apresentamos o Ponto de Armazenamento!

O ponto de armazenamento transforma o inventário que está tocando em [armazenamento de rede](../ae2-mechanics/import-export-storage.md).
Ele faz isso permitindo que a rede veja o conteúdo daquele inventário, e empurrando e puxando daquele
inventário para atender [dispositivos](../ae2-mechanics/devices.md) empurrando e puxando do armazenamento de rede.

Devido à filosofia do AE2 de mecânicas emergentes através da interação das funções dos [dispositivos](../ae2-mechanics/devices.md), você não
precisa necessariamente usar um ponto de armazenamento para *armazenar*. Usando [sub-redes](../ae2-mechanics/subnetworks.md)
para fazer de um ponto de armazenamento (ou alguns deles) o *único* armazenamento de uma rede, você pode usá-lo como fonte ou destino
de transferência de itens. (veja ["sub-rede de tubulação"](../example-setups/pipe-subnet.md))

NOTA IMPORTANTE: Inventários grandes otimizados como gavetas funcionam bem, mas inventários grandes *não* otimizados com muitos slots, como
baús colossais, são péssimos para o desempenho quando usados com pontos de armazenamento.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Filtragem

Por padrão, o ponto armazena tudo. Itens inseridos em seus slots de filtro funcionam como lista branca, permitindo
apenas que aqueles itens específicos sejam armazenados.

Itens e fluidos podem ser arrastados para os slots a partir do JEI/REI mesmo que você não tenha nenhum daquele item.

Clique com o botão direito usando um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI.
Itens que entram na rede começam pelo armazenamento de maior prioridade como
seu primeiro destino. No caso de dois armazenamentos terem a mesma prioridade,
se um já contém o item, ele será preferido sobre qualquer
outro. Quaisquer armazenamentos filtrados serão tratados como se já contivessem o item
quando estiverem no mesmo grupo de prioridade que outros armazenamentos. Itens removidos do armazenamento serão
removidos do armazenamento de menor prioridade. Esse sistema de prioridade significa que, à medida que itens são inseridos e removidos
do armazenamento de rede, armazenamentos de maior prioridade serão preenchidos e os de menor prioridade serão esvaziados.

## Configurações

*   O ponto pode ser particionado (filtrado) para o que está atualmente no inventário adjacente
*   A rede pode ser impedida ou permitida de ver itens no inventário adjacente que o ponto não consegue extrair
    (por exemplo, um ponto de armazenamento não consegue extrair itens do slot de entrada do meio de um <ItemLink id="inscriber" />)
*   O ponto pode filtrar tanto na inserção quanto na extração, ou só na inserção
*   O ponto pode ser bidirecional, só de inserção ou só de extração

## Melhorias

O ponto de armazenamento suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> aumenta a quantidade de slots de filtro
*   <ItemLink id="fuzzy_card" /> permite ao ponto filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista branca para lista negra
*   <ItemLink id="void_card" /> descarta itens inseridos se o inventário acoplado estiver cheio — útil para impedir que farms entupam. Tenha cuidado para particionar isso!

## Receita

<RecipeFor id="storage_bus" />
