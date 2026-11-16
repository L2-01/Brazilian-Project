---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Plano de Formação
  icon: formation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:formation_plane
---

# O Plano de Formação

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/formation_plane.snbt" />
</GameScene>

O Plano de Formação coloca blocos e larga itens. Ele funciona de forma semelhante a um <ItemLink id="storage_bus" /> somente de inserção,
colocando/largando quando coisas são "armazenadas" nele por [dispositivos](../ae2-mechanics/devices.md) inserindo no [armazenamento da rede](../ae2-mechanics/import-export-storage.md),
como <ItemLink id="import_bus" />s e <ItemLink id="interface" />s.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/formation_plane_demonstration.snbt" />
  <IsometricCamera yaw="255" pitch="30" />
</GameScene>

Este [dispositivo](../ae2-mechanics/devices.md) usa a mecânica dos pontos de armazenamento em coisas como [sub-redes de canos](../example-setups/pipe-subnet.md),
e pode substituir pontos de armazenamento nesses esquemas se você quiser largar itens/colocar blocos em vez de transportar itens.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

**LEMBRE-SE DE HABILITAR FAKE PLAYERS NA SUA PROTEÇÃO DE CHUNKS**

## Filtragem

Por padrão, o plano colocará/largará qualquer coisa. Itens inseridos nos seus slots de filtro atuam como lista de permissão, permitindo
apenas que aqueles itens específicos sejam colocados.

Itens e fluidos podem ser arrastados aos slots a partir do JEI/REI mesmo que você não tenha de fato nenhum daquele item.

Clique com o botão direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

## Prioridade

Prioridades podem ser definidas clicando na chave-inglesa no canto superior direito da GUI.
Itens entrando na rede começarão pelo armazenamento de maior prioridade.

## Configurações

*   O plano pode ser configurado para colocar blocos no mundo ou largar itens

## Melhorias

O plano de formação suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> aumenta a quantidade de slots de filtro
*   <ItemLink id="fuzzy_card" /> permite ao plano filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista de permissão para lista de bloqueio

## Receita

<RecipeFor id="formation_plane" />
