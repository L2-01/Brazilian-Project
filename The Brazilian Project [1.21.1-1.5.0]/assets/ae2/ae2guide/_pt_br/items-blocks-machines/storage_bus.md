---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Ponto de Armazenamento ME
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

Já quis *manter* o seu monstro de baús em vez de substituí-lo por algo sensato? Apresentamos o ponto de armazenamento!

O ponto de armazenamento transforma o inventário em que está encostado em [armazenamento da rede](../ae2-mechanics/import-export-storage.md).
Ele faz isso permitindo que a rede veja o conteúdo daquele inventário, e empurrando e puxando daquele
inventário para atender aos [dispositivos](../ae2-mechanics/devices.md) que empurram e puxam do armazenamento da rede.

Devido à filosofia do AE2 de mecânicas emergentes pela interação das funções dos [dispositivos](../ae2-mechanics/devices.md), você não
precisa necessariamente usar um ponto de armazenamento para *armazenamento*. Usando [sub-redes](../ae2-mechanics/subnetworks.md)
para fazer de um ponto de armazenamento (ou um punhado deles) o *único* armazenamento de uma rede, você pode usá-lo como origem ou destino
para transferência de itens. (veja ["sub-rede de canos"](../example-setups/pipe-subnet.md))

NOTA IMPORTANTE: inventários grandes otimizados como gavetas funcionam bem, mas inventários grandes *não otimizados* com muitos slots, como
baús colossais, são terríveis para o desempenho quando usados com pontos de armazenamento.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Filtragem

Por padrão, o ponto armazenará tudo. Itens inseridos nos seus slots de filtro atuarão como lista de permissão, permitindo
apenas que aqueles itens específicos sejam armazenados.

Itens e fluidos podem ser arrastados aos slots a partir do JEI/REI, mesmo que você não tenha de fato nenhum daquele item.

Clique com o botão direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

## Prioridade

Prioridades podem ser definidas clicando na chave-inglesa no canto superior direito da GUI.
Itens entrando na rede começarão pelo armazenamento de maior prioridade como
seu primeiro destino. No caso de dois armazenamentos terem a mesma prioridade,
se um já contiver o item, eles preferirão aquele armazenamento a qualquer
outro. Quaisquer armazenamentos filtrados serão tratados como se já contivessem o item
quando estiverem no mesmo grupo de prioridade que outros armazenamentos. Itens sendo removidos do armazenamento serão
removidos do armazenamento com a menor prioridade. Este sistema de prioridade significa que, conforme itens são inseridos e removidos
do armazenamento da rede, armazenamentos de maior prioridade serão enchidos e armazenamentos de menor prioridade serão esvaziados.

## Configurações

*   O ponto pode ser particionado (filtrado) ao que está atualmente no inventário adjacente
*   A rede pode ser impedida ou permitida de ver itens no inventário adjacente que o ponto não consegue extrair.
    Por exemplo, um ponto de armazenamento não consegue extrair itens do slot de entrada do meio de um <ItemLink id="inscriber" />.
*   O ponto pode filtrar tanto na inserção quanto na extração, ou só na inserção
*   O ponto pode ser bidirecional, somente de inserção, ou somente de extração

## Melhorias

O ponto de armazenamento suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> aumenta a quantidade de slots de filtro
*   <ItemLink id="fuzzy_card" /> permite ao ponto filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista de permissão para lista de bloqueio
*   <ItemLink id="void_card" /> destrói itens inseridos se o inventário acoplado estiver cheio, útil para impedir que farms congestionem. Cuidado para particionar isto!

## Receita

<RecipeFor id="storage_bus" />
