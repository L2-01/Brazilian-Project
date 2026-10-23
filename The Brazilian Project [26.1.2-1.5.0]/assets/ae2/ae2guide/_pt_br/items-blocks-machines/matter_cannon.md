---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Canhão de Matéria
  icon: matter_cannon
  position: 410
categories:
- tools
item_ids:
- ae2:matter_cannon
---

# O Canhão de Matéria

<ItemImage id="matter_cannon" scale="4" />

O canhão de matéria é um canhão eletromagnético portátil que pode disparar itens pequenos como projéteis, como <ItemLink id="matter_ball" />s e pepitas de metal. O dano
depende do item disparado, com itens "mais pesados" como pepitas de ouro (10 de dano) causando mais dano que itens leves como bolas de matéria (2 de dano).
Ele consome uma energia base de 1600 AE por disparo.

Quando a opção de configuração "matterCannonBlockDamage" é true, o canhão quebrará blocos dependendo de sua dureza e
do dano da munição.

Sua energia pode ser recarregada em um <ItemLink id="charger" />.

Canhões de matéria agem como [células de armazenamento](storage_cells.md), e seu carregador de munição pode ser preenchido mais facilmente colocando
o canhão no slot de célula de armazenamento de um <ItemLink id="me_chest" />

## Melhorias

Canhões de matéria suportam as seguintes [melhorias](upgrade_cards.md), inseridas via uma <ItemLink id="cell_workbench" />:

*   <ItemLink id="fuzzy_card" /> permite particionar a célula por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista branca para lista negra
*   <ItemLink id="speed_card" /> aumenta a energia usada por disparo, fazendo-o atirar com mais força.
*   <ItemLink id="void_card" /> descarta itens inseridos se a célula estiver cheia. Tenha cuidado para particionar isso!
*   <ItemLink id="energy_card" /> para aumentar a capacidade da bateria

## Receita

<RecipeFor id="matter_cannon" />
