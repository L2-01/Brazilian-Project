---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Condensador de Matéria
  icon: condenser
  position: 310
categories:
- machines
item_ids:
- ae2:condenser
---

# O Condensador de Matéria

<BlockImage id="condenser" scale="8" />

O condensador de matéria pode ser usado como lixeira ou para criar <ItemLink id="matter_ball" />s e
[singularidades](singularities.md). Ele aceita qualquer item, fluido etc. que uma célula de armazenamento possa armazenar.

## Configurações/Recipes

*   No modo lixeira, o condensador de matéria simplesmente descarta tudo que entra nele
*   No modo bola de matéria, o condensador fabrica <ItemLink id="matter_ball" />s a partir do que você colocar nele.
    Esse modo exige que você coloque um componente de armazenamento no slot superior do condensador. Bolas de matéria custam 256 itens ou baldes
    cada, então um <ItemLink id="cell_component_1k" /> (que fornece 8192 bits de capacidade) é mais que suficiente.
*   No modo singularidade de matéria, o condensador fabrica [singularidades](singularities.md) a partir do que você colocar nele.
    Esse modo exige que você coloque um componente de armazenamento no slot superior do condensador. Singularidades custam 256.000 itens ou baldes
    cada, então um <ItemLink id="cell_component_64k" /> (que fornece 524.288 bits de capacidade) é mais que suficiente.

Note que nos dois últimos modos, em que algum recurso é produzido, o Condensador de Matéria *pode* entupir e
não aceitará mais entrada se os buffers de energia e de itens de saída estiverem completamente cheios.

## Receita

<RecipeFor id="condenser" />
