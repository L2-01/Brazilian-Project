---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Drusa de Quartzo Certus
  icon: flawless_budding_quartz
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:flawless_budding_quartz
- ae2:flawed_budding_quartz
- ae2:chipped_budding_quartz
- ae2:damaged_budding_quartz
- ae2:small_quartz_bud
- ae2:medium_quartz_bud
- ae2:large_quartz_bud
- ae2:quartz_cluster
---

# Drusa de Quartzo Certus

(veja também [Crescimento do Certus](../ae2-mechanics/certus-growth.md))

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Broto de quartzo certus brotarão de blocos de drusa de certus, semelhante à ametista. Estes são encontrados em [meteoritos](../ae2-mechanics/meteorites.md).
Há 4 níveis de blocos de drusa de certus: Infalível, Imperfeita, Barata e Danificada. Eles podem ser identificados mais facilmente
com um mod como HWYLA, Jade, The One Probe, etc. (ou a tela F3)

Com drusas de certus imperfeita, barata e danificada, toda vez que um broto cresce mais um estágio, o bloco de drusa tem uma chance
de degradar um nível, eventualmente virando um simples <ItemLink id="quartz_block" />.

A drusa de certus infalível não degrada ao fazer brotos crescerem, e age como uma fonte infinita.

Se quebrados com uma picareta comum, blocos de drusa de certus degradam 1 nível. Se quebrados com uma picareta
encantada com Toque Suave, eles não degradam, a menos que sejam infalíveis. **Isso significa que blocos de drusa de certus infalível não podem
ser coletados e movidos com uma picareta**. Em vez disso, o [Armazenamento Espacial](../ae2-mechanics/spatial-io.md) pode ser usado para
recortar e colar os blocos de drusa infalível por aí.

## Receitas

Drusas de certus imperfeita, barata e danificada podem ser fabricadas jogando o nível anterior de bloco de drusa (ou um <ItemLink id="quartz_block" />)
na água com um ou mais <ItemLink id="charged_certus_quartz_crystal" />.

Drusa de certus infalível não pode ser fabricada, só encontrada no mundo.

<Row>
  <RecipeFor id="damaged_budding_quartz" />

  <RecipeFor id="chipped_budding_quartz" />

  <RecipeFor id="flawed_budding_quartz" />
</Row>
