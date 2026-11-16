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

O Gabinete é o [dispositivo](../ae2-mechanics/devices.md) no qual você encaixa suas [células de armazenamento](storage_cells.md) para usá-las como
[armazenamento de rede](../ae2-mechanics/import-export-storage.md). Ele tem 10 slots, cada um aceitando uma célula.

Se por algum motivo você quiser, pode empurrar e puxar as células de seu inventário com qualquer logística de itens, como funis ou pontos do AE2.

Ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.

## Cell Status LEDs

As células no gabinete têm um LED que mostra seu estado:

| Color  | Status                                                                           |
| :----- | :------------------------------------------------------------------------------- |
| Verde  | Vazia                                                                            |
| Azul   | Tem algum conteúdo                                                                |
| Laranja | [Tipos](../ae2-mechanics/bytes-and-types.md) cheios, não é possível adicionar novos tipos     |
| Vermelho | [Bytes](../ae2-mechanics/bytes-and-types.md) cheios, não é possível inserir mais itens |
| Preto  | Sem energia ou o gabinete não tem [canal](../ae2-mechanics/channels.md)                 |

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI.
Itens que entram na rede começam pelo armazenamento de maior prioridade como
seu primeiro destino. No caso de dois armazenamentos ou células terem a mesma prioridade,
se um já contém o item, ele será preferido sobre qualquer
outro. Quaisquer células [particionadas](cell_workbench.md) serão tratadas como se já contivessem o item
quando estiverem no mesmo grupo de prioridade que outros armazenamentos. Itens removidos do armazenamento serão
removidos do armazenamento de menor prioridade. Esse sistema de prioridade significa que, à medida que itens são inseridos e removidos
do armazenamento de rede, armazenamentos de maior prioridade serão preenchidos e os de menor prioridade serão esvaziados.

## Receita

<RecipeFor id="drive" />
