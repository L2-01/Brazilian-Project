---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Fachadas de Cabos
  icon: facade
  icon_components:
    "ae2:facade_item": "minecraft:stone"
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:facade
---

# Fachadas de Cabos

Fachadas podem ser usadas para fazer sua base parecer mais limpa.
Elas podem cobrir os dois tamanhos de cabo e podem ser feitas de muitos tipos de bloco.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/facades_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Embora fachadas possam cobrir todos os lados de um cabo, [subpartes](../ae2-mechanics/cable-subparts.md) e conexões de cabo
podem saltar para fora.

<GameScene zoom="6"  interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Seja criativo com elas para melhorar a estética da sua base ou fazer blocos com texturas diferentes em cada lado.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_3.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Escondendo Fachadas

Fachadas ficarão escondidas enquanto você segurar uma <ItemLink id="network_tool" /> em qualquer das mãos.

Você pode interagir com blocos atrás de fachadas escondidas sem precisar remover as fachadas primeiro.

## Receita

Para fazer uma fachada com a textura de um bloco, coloque aquele bloco no meio de 4 <ItemLink id="cable_anchor" />s.

![Facade Recipe](../assets/diagrams/facade_recipe.png)
