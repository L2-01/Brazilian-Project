---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Baú ME
  icon: chest
  position: 210
categories:
- devices
item_ids:
- ae2:chest
---

# O Baú ME

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/chest.snbt" />
</GameScene>

O Baú ME age como uma rede miniatura com um <ItemLink id="terminal" />, um <ItemLink id="drive" /> e um <ItemLink id="energy_acceptor" />.
Embora possa ser usado como uma rede de armazenamento minúscula, sua capacidade para apenas uma única [célula de armazenamento](../items-blocks-machines/storage_cells.md)
significa que sua utilidade nesse papel é limitada.

Em vez disso, ele é útil para interagir especificamente com a célula de armazenamento montada nele. Seu terminal integrado só consegue ver e acessar
os itens na célula montada, enquanto [dispositivos](../ae2-mechanics/devices.md) na rede geral podem acessar itens em qualquer [armazenamento da rede](../ae2-mechanics/import-export-storage.md),
incluindo baús ME.

Ele tem 2 GUIs diferentes e tem lados para transporte de itens. Interagir com o terminal do topo abre o terminal integrado. Itens podem ser inseridos na
célula de armazenamento montada por essa face, mas não extraídos. Interagir com qualquer outra face abre a GUI com o slot para a célula de armazenamento
e as configurações de prioridade. A célula só pode ser inserida e removida por logística de itens através da face com o slot de célula.

Ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.

Ele tem um pequeno buffer de armazenamento de energia AE, então se não estiver numa rede com uma [célula de energia](../items-blocks-machines/energy_cells.md),
inserir ou extrair itens demais de uma vez pode fazer com que ele se apague.

O terminal pode ser colorido com um <ItemLink id="color_applicator" />.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/chest_color.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

O Baú ME tem todas as mesmas configurações de um <ItemLink id="terminal" /> ou <ItemLink id="crafting_terminal" />.
Ele, no entanto, não suporta <ItemLink id="view_cell" />s.

## LEDs de Status da Célula

As células no baú têm um LED que mostra seu status:

| Cor    | Status                                                                           |
| :----- | :------------------------------------------------------------------------------- |
| Verde  | Vazia                                                                            |
| Azul   | Tem algum conteúdo                                                               |
| Laranja| [Tipos](../ae2-mechanics/bytes-and-types.md) cheios, nenhum tipo novo pode ser adicionado |
| Vermelho| [Bytes](../ae2-mechanics/bytes-and-types.md) cheios, nenhum item a mais pode ser inserido |
| Preto  | Sem energia ou a célula não tem [canal](../ae2-mechanics/channels.md)             |

## Prioridade

Prioridades podem ser definidas clicando na chave-inglesa no canto superior direito da GUI do slot de célula.
Itens entrando na rede começarão pelo armazenamento de maior prioridade como
seu primeiro destino. No caso de dois armazenamentos ou células terem a mesma prioridade,
se um já contiver o item, ele preferirá aquele armazenamento a qualquer
outro. Quaisquer células [particionadas](cell_workbench.md) serão tratadas como se já contivessem o item
quando estiverem no mesmo grupo de prioridade que outros armazenamentos. Itens sendo removidos do armazenamento serão
removidos do armazenamento com a menor prioridade. Este sistema de prioridade significa que, conforme itens são inseridos e removidos
do armazenamento da rede, armazenamentos de maior prioridade serão enchidos e armazenamentos de menor prioridade serão esvaziados.

## Receita

<RecipeFor id="chest" />
