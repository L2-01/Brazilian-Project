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

O Plano de Aniquilação quebra blocos e coleta itens. Ele funciona de forma semelhante a um <ItemLink id="import_bus" />, empurrando coisas
para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md). Para que itens sejam coletados, eles devem colidir com a
face do plano; ele não coleta numa área.

Planos de aniquilação podem ser encantados com qualquer encantamento de picareta, então sim, você pode colocar níveis absurdos de fortuna em alguns e
[automatizar o processamento de minérios](../example-setups/ore-fortuner.md) se o seu modpack permitir. Além disso, Toque Suave faz o que
você esperaria, eficiência reduz o custo de energia de quebrar um bloco, e inquebrável dá uma chance de não usar energia nenhuma.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

**LEMBRE-SE DE HABILITAR FAKE PLAYERS NA SUA PROTEÇÃO DE CHUNKS**

## Filtragem

O plano de aniquilação só quebra um bloco ou coleta um item se ele puder armazenar os itens largados/itens resultantes
na sua rede. Isso significa que, para filtrar um, *você deve restringir o que pode ser armazenado na rede dele*, provavelmente colocando-o
numa [sub-rede](../ae2-mechanics/subnetworks.md). Um <ItemLink id="storage_bus" /> ou uma [célula](../items-blocks-machines/storage_cells.md)
podem ser [particionados](cell_workbench.md) para conseguir isso.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/annihilation_filtering.snbt" />

  <DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        Filtrado para o que quer que caia da coisa que você quer quebrar.
  </DiamondAnnotation>

  <DiamondAnnotation pos=".5 0.5 2.5" color="#00ff00">
        Particionado para o que quer que caia da coisa que você quer quebrar.
  </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

De novo, ele filtra *pelos itens largados do item*, então, por exemplo, se você quiser filtrar a quebra de <ItemLink id="minecraft:amethyst_cluster" />,
você precisa de um plano encantado com Toque Suave, caso contrário cada estágio de crescimento anterior não larga nada e então o plano os quebrará
de qualquer forma, já que a rede sempre pode armazenar "nada".

## Receita

<RecipeFor id="annihilation_plane" />
