---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Plano de Aniquilação
  icon: annihilation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:annihilation_plane
---

# O Plano de Aniquilação

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/annihilation_plane.snbt" />
</GameScene>

O Plano de Aniquilação quebra blocos e pega itens. Ele funciona de forma parecida com um <ItemLink id="import_bus" />, empurrando coisas
para o [armazenamento de rede](../ae2-mechanics/import-export-storage.md). Para que itens sejam pegos, eles precisam colidir com a
face do plano; ele não pega itens numa área.

Planos de aniquilação podem ser encantados com qualquer encantamento de picareta, então sim, você pode colocar níveis absurdos de fortuna em alguns e
[automatizar o processamento de minérios](../example-setups/ore-fortuner.md) se seu modpack permitir. Além disso, toque suave faz o que
você esperaria, eficiência reduz o custo de energia de quebrar um bloco, e inquebrável dá uma chance de não usar energia.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

**LEMBRE-SE DE ATIVAR FAKE PLAYERS NA SUA PROTEÇÃO DE CHUNKS**

## Filtragem

O plano de aniquilação só quebra um bloco ou pega um item se puder armazenar os drops/itens resultantes
em sua rede. Isso significa que, para filtrar um, *você deve restringir o que pode ser armazenado em sua rede*, provavelmente colocando-o
em uma [sub-rede](../ae2-mechanics/subnetworks.md). Um <ItemLink id="storage_bus" /> ou [célula](../items-blocks-machines/storage_cells.md)
pode ser [particionado](cell_workbench.md) para fazer isso.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/annihilation_filtering.snbt" />

  <DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        Filtrado para o que quer que o alvo que você quer quebrar derrube.
  </DiamondAnnotation>

  <DiamondAnnotation pos=".5 0.5 2.5" color="#00ff00">
        Particionado para o que quer que o alvo que você quer quebrar derrube.
  </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Novamente, ele filtra *pelos drops do item*, então, por exemplo, se você quiser filtrar a quebra de <ItemLink id="minecraft:amethyst_cluster" />s,
você precisa de um plano encantado com toque suave, senão todos os estágios de crescimento anteriores não derrubam nada e o plano os quebrará de qualquer
jeito, já que a rede sempre consegue armazenar "nada".

## Receita

<RecipeFor id="annihilation_plane" />
