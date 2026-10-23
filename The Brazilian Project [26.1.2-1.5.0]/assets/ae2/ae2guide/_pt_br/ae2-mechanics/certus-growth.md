---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Crescimento do Certus
  icon: quartz_cluster
---

# Crescimento do Certus

## Basicamente copiado da página de introdução

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/budding_certus_1.snbt" />
</GameScene>

Brotos de quartzo certus nascerão dos [blocos de quartzo certus em brotamento](../items-blocks-machines/budding_certus.md), parecido com a ametista. Se você quebrar um broto que não terminou
de crescer, ele soltará uma <ItemLink id="certus_quartz_dust" />, sem efeito da fortuna. Se quebrar um agregado totalmente crescido, ele soltará quatro
<ItemLink id="certus_quartz_crystal" />s, e a fortuna aumentará esse número.

Existem 4 níveis de blocos de certus em brotamento: Infalível, Imperfeita, Barata e Danificada, e você os
encontra inicialmente em [meteoritos](../ae2-mechanics/meteorites.md).

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Toda vez que um broto avança um estágio, o bloco em brotamento tem uma chance de degradar um nível, até virar
um bloco de quartzo certus comum. Eles podem ser reparados (e novos blocos em brotamento criados) jogando o bloco em brotamento (ou um
bloco de quartzo certus) na água com um ou mais <ItemLink id="charged_certus_quartz_crystal" />.

<RecipeFor id="damaged_budding_quartz" />

Os blocos de certus em brotamento infalíveis não degradam e geram certus infinitamente. Porém, não podem ser fabricados nem movidos
com uma picareta, mesmo com toque suave. (mas *podem* ser movidos com [armazenamento espacial](../ae2-mechanics/spatial-io.md))

Por conta própria, os brotos de quartzo certus crescem muito devagar. Por sorte, o <ItemLink id="growth_accelerator" /> acelera
massivamente esse processo quando colocado ao lado do bloco em brotamento. Você deve construir alguns deles como primeira prioridade.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_certus_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Interações complexas fazem com que cada lado coberto de um bloco em brotamento reduza a taxa de crescimento acumulada do bloco,
o que acaba superando o efeito de mais aceleradores. Testes empíricos mostram:

![Items/min for ratios](../assets/diagrams/certus_farm_speed_chart_1.png)

![common setups](../assets/diagrams/certus_farm_speed_chart_2.png)

Se você não tiver quartzo suficiente para fazer também um <ItemLink id="energy_acceptor" /> ou uma <ItemLink id="vibration_chamber" />,
pode fazer uma <ItemLink id="crank" /> e encaixá-la na ponta do seu acelerador.

A colheita automática do certus está [descrita aqui](../example-setups/simple-certus-farm.md).
