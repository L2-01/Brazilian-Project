---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Montador Molecular
  icon: molecular_assembler
  position: 310
categories:
- machines
item_ids:
- ae2:molecular_assembler
---

# O Montador Molecular

<BlockImage id="molecular_assembler" scale="8" />

O montador molecular recebe itens inseridos nele e executa a operação definida por um <ItemLink id="pattern_provider" /> adjacente
ou pelo <ItemLink id="crafting_pattern" />, <ItemLink id="smithing_table_pattern" /> ou <ItemLink id="stonecutting_pattern" /> inserido,
e então empurra o resultado para inventários adjacentes.

Este montador tem um padrão de fabricação que especifica a receita 1 tronco de carvalho = 4 tábuas de carvalho. Quando troncos de carvalho são inseridos no funil de cima,
o montador fabrica e cospe tábuas de carvalho no funil de baixo.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/standalone_assembler.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## O Uso Principal do Montador Molecular

Porém, seu uso principal é ao lado de um <ItemLink id="pattern_provider" />. Provedores de padrões têm um comportamento especial nesse caso
e enviam informações sobre o padrão relevante junto com os ingredientes para montadores adjacentes. Como os montadores auto-ejetam os resultados das
fabricações para inventários adjacentes (e, portanto, para os slots de retorno do provedor de padrões), um montador num provedor de padrões
é tudo que é preciso para automatizar padrões de fabricação.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Melhorias

O Montador Molecular suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="speed_card" />

## Receita

<RecipeFor id="molecular_assembler" />

## Nota

Optifine quebra a função de "empurrar para inventários adjacentes", então a maioria das configurações de fabricação com montadores não funcionará.