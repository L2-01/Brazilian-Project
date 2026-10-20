---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Carregador
  icon: charger
  position: 310
categories:
- machines
item_ids:
- ae2:charger
---

# O Carregador

<BlockImage id="charger" scale="8" />

O Carregador oferece uma forma de carregar
ferramentas suportadas e <ItemLink id="certus_quartz_crystal" />.

Energia pode ser fornecida pelo topo ou pela base, seja pelos [cabos](cables.md) do AE2 ou por cabos de energia de outros mods. Ele pode
aceitar tanto a energia do AE2 (AE) quanto Forge Energy (FE). Itens podem ser inseridos ou removidos por qualquer lado. Apenas os resultados podem
ser removidos, então não é preciso filtros para evitar remover cristais certus em vez de certus carregado. Pode ser girado com uma
<ItemLink id="certus_quartz_wrench" /> para facilitar a automação.

Pode ser usado para criar <ItemLink id="charged_certus_quartz_crystal" />
a partir de <ItemLink id="certus_quartz_crystal" /> e <ItemLink id="meteorite_compass" /> a partir de <ItemLink id="minecraft:compass" />.

Para alimentá-lo manualmente, coloque uma <ItemLink id="crank" /> no topo ou na base e clique com o botão direito até o item estar carregado.

Ele também funciona como estação de trabalho do [Pesquisador de Fluix](fluix_researcher.md).

## Automação Simples

Como exemplo, a capacidade de girar permite semiautomatizar carregadores assim:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/charger_hopper.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Receita

<RecipeFor id="charger" />
