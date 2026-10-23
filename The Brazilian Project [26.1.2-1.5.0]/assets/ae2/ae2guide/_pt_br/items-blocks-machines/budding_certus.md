---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Quartzo Certus em Brotamento
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

# Quartzo Certus em Brotamento

(veja também [Crescimento de Certus](../ae2-mechanics/certus-growth.md))

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Brotos de quartzo certus brotam de blocos de certus em brotamento, parecido com a ametista. Eles são encontrados em [meteoritos](../ae2-mechanics/meteorites.md).
Há 4 níveis de blocos de certus em brotamento: Infalível, Imperfeita, Barata e Danificada. Eles podem ser identificados mais facilmente
com um mod como HWYLA, Jade, The One Probe etc. (ou a tela do F3)

Com drusas de certus imperfeita, barata e danificada, toda vez que um broto cresce mais um estágio, o bloco em brotamento tem uma chance
de degradar um nível, eventualmente virando um <ItemLink id="quartz_block" /> comum.

A drusa de certus infalível não degrada com o crescimento de brotos e funciona como uma fonte infinita.

Se quebrados com uma picareta comum, os blocos de certus em brotamento degradam 1 nível. Se quebrados com uma picareta
encantada com toque suave, eles não degradam, a menos que sejam infalíveis. **Isso significa que blocos de certus em brotamento infalíveis não podem
ser pegos e movidos com uma picareta**. Em vez disso, o [Armazenamento Espacial](../ae2-mechanics/spatial-io.md) pode ser usado para
recortar e colar os blocos infalíveis em brotamento por aí.

## Receitas

Drusas de certus imperfeitas, baratas e danificadas podem ser fabricadas jogando o nível anterior de bloco em brotamento (ou um <ItemLink id="quartz_block" />)
na água com um ou mais <ItemLink id="charged_certus_quartz_crystal" />.

A drusa de certus infalível não pode ser fabricada, apenas encontrada no mundo.

<Row>
  <RecipeFor id="damaged_budding_quartz" />

  <RecipeFor id="chipped_budding_quartz" />

  <RecipeFor id="flawed_budding_quartz" />
</Row>
