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

O Plano de Formação coloca blocos e derruba itens. Ele funciona de forma parecida com um <ItemLink id="storage_bus" /> só de inserção,
colocando/derrubando quando coisas são "armazenadas" nele por [dispositivos](../ae2-mechanics/devices.md) inserindo no [armazenamento de rede](../ae2-mechanics/import-export-storage.md),
como <ItemLink id="import_bus" />es e <ItemLink id="interface" />s.

<GameScene zoom="8" interactive={true}>
  <ImportStructure src="../assets/assemblies/formation_plane_demonstration.snbt" />
  <IsometricCamera yaw="255" pitch="30" />
</GameScene>

Note que estes são parecidos com os tubos ponto de importação -> ponto de armazenamento e interface -> ponto de armazenamento nas [sub-redes de tubulação](../example-setups/pipe-subnet.md).

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Este [dispositivo](../ae2-mechanics/devices.md) usa a mecânica dos pontos de armazenamento em coisas como [sub-redes de tubulação](../example-setups/pipe-subnet.md)
e pode substituir pontos de armazenamento nessas configurações se você quiser derrubar itens/colocar blocos em vez de transportar itens.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

**LEMBRE-SE DE ATIVAR FAKE PLAYERS NA SUA PROTEÇÃO DE CHUNKS**

## Filtragem

Por padrão, o plano coloca/derruba qualquer coisa. Itens inseridos em seus slots de filtro funcionam como lista branca, permitindo
apenas que aqueles itens específicos sejam colocados.

Itens e fluidos podem ser arrastados para os slots a partir do JEI/REI mesmo que você não tenha nenhum daquele item.

Clique com o botão direito usando um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI.
Itens que entram na rede começam pelo armazenamento de maior prioridade.

## Configurações

*   O plano pode ser configurado para colocar blocos no mundo ou derrubar itens

## Melhorias

O plano de formação suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> aumenta a quantidade de slots de filtro
*   <ItemLink id="fuzzy_card" /> permite ao plano filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista branca para lista negra

## Receita

<RecipeFor id="formation_plane" />
