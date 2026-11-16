---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Porto de Entrada/Saída para Itens e Fluidos
  icon: io_port
  position: 210
categories:
- devices
item_ids:
- ae2:io_port
---

# O Porto de Entrada/Saída para Itens e Fluidos

<BlockImage id="io_port" p:powered="true" scale="8" />

O Porto de Entrada/Saída permite encher ou esvaziar rapidamente [células de armazenamento](../items-blocks-machines/storage_cells.md) de ou para o
[armazenamento da rede](../ae2-mechanics/import-export-storage.md).

Ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.

## Configurações

*   O Porto de Entrada/Saída pode ser configurado para mover a célula para os slots de saída quando ela estiver vazia, cheia, ou quando o trabalho estiver concluído.
*   Se um <ItemLink id="redstone_card" /> for inserido, haverá opções para várias condições de redstone
*   No centro da GUI, há uma seta para definir para qual direção transferir itens: da célula para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md),
    ou do armazenamento para a célula.

## Melhorias

O Porto de Entrada/Saída suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="speed_card" /> aumenta a quantidade de coisas movidas por operação
*   <ItemLink id="redstone_card" /> adiciona controle por redstone, permitindo ativo em sinal alto, sinal baixo, ou uma vez por pulso

## Receita

<RecipeFor id="io_port" />
