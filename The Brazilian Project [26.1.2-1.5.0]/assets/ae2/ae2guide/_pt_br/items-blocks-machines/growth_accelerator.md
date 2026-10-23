---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Acelerador de Crescimento
  icon: growth_accelerator
  position: 310
categories:
- machines
item_ids:
- ae2:growth_accelerator
---

# O Acelerador de Crescimento

<BlockImage id="growth_accelerator" p:powered="true" scale="8"/>

O Acelerador de Crescimento acelera massivamente [o crescimento de](../ae2-mechanics/certus-growth.md) certus ou ametista quando colocado adjacente ao bloco em brotamento.

Curiosamente, ele *também* pode acelerar o crescimento de várias plantas.

Ele faz isso aplicando "ticks aleatórios" aos blocos adjacentes, além dos ticks aleatórios que acontecem naturalmente.
Em teoria, isso significa que 1 acelerador deve fazer as coisas crescerem ~90x mais rápido que o normal, e o efeito acumula aditivamente.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/growth_accelerator.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

A energia pode ser fornecida por cima ou por baixo, via [cabos](cables.md) do AE2 ou cabos de energia de outros mods. Ele pode
aceitar tanto a energia do AE2 (AE) quanto Forge Energy (FE).

Para alimentá-lo manualmente, coloque uma <ItemLink id="crank" /> em cima ou embaixo e clique com o botão direito.

O topo e a base podem ser identificados pelos detalhes de fluxo rosa neles.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/accelerator_connections.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Receita

<RecipeFor id="growth_accelerator" />
