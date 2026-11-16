---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Porto de E/S
  icon: io_port
  position: 210
categories:
- devices
item_ids:
- ae2:io_port
---

# O Porto de E/S ME

<BlockImage id="io_port" p:powered="true" scale="8" />

O Porto de E/S permite encher ou esvaziar rapidamente [células de armazenamento](../items-blocks-machines/storage_cells.md) para ou a partir do
[armazenamento de rede](../ae2-mechanics/import-export-storage.md).

Ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.

## Configurações

*   O Porto de E/S pode ser configurado para mover a célula para os slots de saída quando ela estiver vazia, cheia ou quando o trabalho terminar.
*   Se um <ItemLink id="redstone_card" /> for inserido, haverá opções para várias condições de redstone
*   No centro da GUI, há uma seta para definir em qual direção transferir itens: da célula para o [armazenamento de rede](../ae2-mechanics/import-export-storage.md)
    ou do armazenamento para a célula.

## Melhorias

O Porto de E/S suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="speed_card" /> aumenta a quantidade de coisas movidas por operação
*   <ItemLink id="redstone_card" /> adiciona controle por redstone, permitindo ativo com sinal alto, com sinal baixo ou uma vez por pulso

## Receita

<RecipeFor id="io_port" />
