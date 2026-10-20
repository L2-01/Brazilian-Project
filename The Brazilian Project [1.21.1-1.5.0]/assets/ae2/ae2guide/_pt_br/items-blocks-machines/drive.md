---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Gabinete ME
  icon: drive
  position: 210
categories:
- devices
item_ids:
- ae2:drive
---

# O Gabinete ME

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/drive.snbt" />
</GameScene>

O Gabinete é o [dispositivo](../ae2-mechanics/devices.md) em que você encaixa suas [células de armazenamento](storage_cells.md) para usá-las como
[armazenamento da rede](../ae2-mechanics/import-export-storage.md). Ele tem 10 slots, cada um aceitando uma célula.

Se por algum motivo você quiser, pode empurrar e puxar as células do inventário dele com qualquer logística de itens, como funis ou pontos do AE2.

Ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.

## LEDs de Status da Célula

As células no gabinete têm um LED que mostra seu status:

| Cor    | Status                                                                           |
| :----- | :------------------------------------------------------------------------------- |
| Verde  | Vazia                                                                            |
| Azul   | Tem algum conteúdo                                                               |
| Laranja| [Tipos](../ae2-mechanics/bytes-and-types.md) cheios, nenhum tipo novo pode ser adicionado |
| Vermelho| [Bytes](../ae2-mechanics/bytes-and-types.md) cheios, nenhum item a mais pode ser inserido |
| Preto  | Sem energia ou o gabinete não tem [canal](../ae2-mechanics/channels.md)            |

## Prioridade

Prioridades podem ser definidas clicando na chave-inglesa no canto superior direito da GUI.
Itens entrando na rede começarão pelo armazenamento de maior prioridade como
seu primeiro destino. No caso de dois armazenamentos ou células terem a mesma prioridade,
se um já contiver o item, eles preferirão aquele armazenamento a qualquer
outro. Quaisquer células [particionadas](cell_workbench.md) serão tratadas como se já contivessem o item
quando estiverem no mesmo grupo de prioridade que outros armazenamentos. Itens sendo removidos do armazenamento serão
removidos do armazenamento com a menor prioridade. Este sistema de prioridade significa que, conforme itens são inseridos e removidos
do armazenamento da rede, armazenamentos de maior prioridade serão enchidos e armazenamentos de menor prioridade serão esvaziados.

## Receita

<RecipeFor id="drive" />
