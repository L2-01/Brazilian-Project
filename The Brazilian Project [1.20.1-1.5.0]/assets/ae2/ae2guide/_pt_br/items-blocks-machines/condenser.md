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

O condensador de matéria pode ser usado como uma lixeira ou para criar <ItemLink id="matter_ball" />s e
[singularidades](singularities.md). Ele pode receber qualquer item ou fluido etc. que uma célula de armazenamento possa armazenar.

## Configurações/Receitas

*   No modo lixeira, o condensador de matéria simplesmente destrói tudo que entra nele
*   No modo bola de matéria, o condensador faz <ItemLink id="matter_ball" />s a partir do que você colocar nele.
    Este modo requer que você coloque um componente de armazenamento no slot de cima do condensador. Bolas de matéria levam 256 itens ou baldes
    cada, então um <ItemLink id="cell_component_1k" /> (que fornece 8192 bits de capacidade) é mais que suficiente.
*   No modo singularidade de matéria, o condensador faz [singularidades](singularities.md) a partir do que você colocar nele.
    Este modo requer que você coloque um componente de armazenamento no slot de cima do condensador. Singularidades levam 256.000 itens ou baldes
    cada, então um <ItemLink id="cell_component_64k" /> (que fornece 524.288 bits de capacidade) é mais que suficiente.

Note que nos dois últimos modos, em que algum recurso é produzido, o Condensador de Matéria *pode* congestionar e não
aceitará mais entrada se tanto o buffer de energia quanto o de itens de saída estiverem completamente cheios.

## Receita

<RecipeFor id="condenser" />
