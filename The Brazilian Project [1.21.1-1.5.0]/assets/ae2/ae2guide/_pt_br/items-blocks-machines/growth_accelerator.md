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

O Acelerador de Crescimento acelera massivamente [o crescimento de](../ae2-mechanics/certus-growth.md) certus ou ametista quando colocado adjacente ao bloco de drusa.

Curiosamente, ele *também* consegue acelerar o crescimento de várias plantas.

Ele faz isso aplicando "tiques aleatórios" aos blocos adjacentes, além dos tiques aleatórios que acontecem naturalmente.
Em teoria, isso significa que 1 acelerador deve fazer as coisas crescerem ~90x mais rápido que o normal, e o efeito acumula aditivamente.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/growth_accelerator.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Energia pode ser fornecida pelo topo ou pela base, seja pelos [cabos](cables.md) do AE2 ou por cabos de energia de outros mods. Ele pode
aceitar tanto a energia do AE2 (AE) quanto Forge Energy (FE).

Para alimentá-lo manualmente, coloque uma <ItemLink id="crank" /> no topo ou na base e clique com o botão direito.

O topo e a base podem ser identificados pelos enfeites de fluxo rosas neles.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/accelerator_connections.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Receita

<RecipeFor id="growth_accelerator" />
