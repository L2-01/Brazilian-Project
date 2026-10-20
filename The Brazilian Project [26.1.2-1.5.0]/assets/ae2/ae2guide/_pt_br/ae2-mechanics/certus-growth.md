---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Crescimento de Certus
  icon: quartz_cluster
---

# Crescimento de Certus

## Basicamente só copiado da página de introdução

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/budding_certus_1.snbt" />
</GameScene>

Brotos de quartzo certus brotarão de [blocos de drusa de certus](../items-blocks-machines/budding_certus.md), semelhante à ametista. Se você quebrar um broto que não terminou
de crescer, ele largará um <ItemLink id="certus_quartz_dust" />, inalterado pela fortuna. Se você quebrar um agregado completamente crescido, ele largará quatro
<ItemLink id="certus_quartz_crystal" />s, e a fortuna aumentará esse número.

Há 4 níveis de blocos de drusa de certus: Infalível, Imperfeita, Barata e Danificada, e você inicialmente
os encontra em [meteoritos](../ae2-mechanics/meteorites.md).

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Toda vez que um broto cresce mais um estágio, o bloco de drusa tem uma chance de degradar um nível, eventualmente se tornando
um bloco de quartzo certus comum. Eles podem ser reparados (e novos blocos de drusa criados) jogando o bloco de drusa (ou um
bloco de quartzo certus) na água com um ou mais <ItemLink id="charged_certus_quartz_crystal" />.

<RecipeFor id="damaged_budding_quartz" />

Blocos de drusa de quartzo certus infalível não degradam e geram certus infinitamente. No entanto, eles não podem ser fabricados nem movidos
com uma picareta, mesmo com Toque Suave. (eles *podem* ser movidos com [armazenamento espacial](../ae2-mechanics/spatial-io.md))

Sozinhos, os brotos de quartzo certus crescem muito devagar. Por sorte, o <ItemLink id="growth_accelerator" /> acelera
enormemente esse processo quando colocado adjacente ao bloco de drusa. Você deveria construir alguns deles como primeira prioridade.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_certus_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Interações complexas fazem com que cada lado coberto de um bloco de drusa reduza a taxa de crescimento cumulativa do bloco de drusa,
o que eventualmente supera o efeito de mais aceleradores. Testes empíricos mostram então:

![Items/min for ratios](../assets/diagrams/certus_farm_speed_chart_1.png)

![common setups](../assets/diagrams/certus_farm_speed_chart_2.png)

Se você não tiver quartzo suficiente para também fazer um <ItemLink id="energy_acceptor" /> ou uma <ItemLink id="vibration_chamber" />,
você pode fazer uma <ItemLink id="crank" /> e encaixá-la na ponta do seu acelerador.

Colher o certus automaticamente está [descrito aqui](../example-setups/simple-certus-farm.md).
