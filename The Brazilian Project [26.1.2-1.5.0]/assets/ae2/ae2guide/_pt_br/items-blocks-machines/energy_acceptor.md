---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Aceitador de Energia
  icon: energy_acceptor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_acceptor
---

# O Aceitador de Energia

<Row gap="20">
<BlockImage id="energy_acceptor" scale="8" /> 

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
</GameScene>
</Row>

O aceitador de energia converte formas comuns de energia de outros mods de tecnologia para a forma interna de [energia](../ae2-mechanics/energy.md) do AE2,
AE. Embora o <ItemLink id="controller" /> também possa fazer isso, faces de controlador são valiosas, então muitas vezes é melhor usar um aceitador de
energia em vez disso.

As taxas de conversão de Forge Energy e Techreborn Energy são

*   2 FE = 1 AE (Forge)
*   1 E  = 2 AE (Fabric)

A velocidade de conversão depende inteiramente de quanta AE sua rede consegue armazenar, por razões explicadas
[nesta página](../ae2-mechanics/energy.md).

## Variantes

Aceitadores de energia vêm em 2 variantes diferentes: normal e plana/[subparte](../ae2-mechanics/cable-subparts.md). Isso permite fazer alguns esquemas mais compactos.

Aceitadores de energia podem ser alternados entre normal e plano numa grade de fabricação.

## Receita

<RecipeFor id="energy_acceptor" />

<RecipeFor id="cable_energy_acceptor" />
