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

O Baú ME age como uma rede em miniatura com um <ItemLink id="terminal" />, um <ItemLink id="drive" /> e um <ItemLink id="energy_acceptor" />.
Embora possa ser usado como uma pequena rede de armazenamento, sua capacidade para apenas uma única [célula de armazenamento](../items-blocks-machines/storage_cells.md)
significa que sua utilidade assim é limitada.

Em vez disso, ele é útil para interagir especificamente com a célula de armazenamento montada dentro dele. Seu terminal integrado só consegue ver e acessar
os itens na célula montada, enquanto [dispositivos](../ae2-mechanics/devices.md) na rede geral podem acessar itens em qualquer [armazenamento de rede](../ae2-mechanics/import-export-storage.md),
incluindo baús ME.

Ele tem 2 GUIs diferentes e é direcionado por face para transporte de itens. Interagir com o terminal de cima abre o terminal integrado. Itens podem ser inseridos
na célula de armazenamento montada por essa face, mas não extraídos. Interagir com qualquer outra face abre a GUI com o slot da célula de armazenamento
e as configurações de prioridade. A célula só pode ser inserida e removida por logística de itens através da face com o slot de célula.

Ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.

Ele tem um pequeno buffer de energia AE, então, se não estiver numa rede com uma [célula de energia](../items-blocks-machines/energy_cells.md),
inserir ou extrair itens demais de uma vez pode causar uma queda de energia.

O terminal pode ser colorido com um <ItemLink id="color_applicator" />.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/chest_color.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

O Baú ME tem todas as mesmas configurações de um <ItemLink id="terminal" /> ou <ItemLink id="crafting_terminal" />.
Ele, porém, não suporta <ItemLink id="view_cell" />s.

## LEDs de Estado da Célula

As células no baú têm um LED que mostra seu estado:

| Color  | Status                                                                           |
| :----- | :------------------------------------------------------------------------------- |
| Verde  | Vazia                                                                            |
| Azul   | Tem algum conteúdo                                                                |
| Laranja | [Tipos](../ae2-mechanics/bytes-and-types.md) cheios, não é possível adicionar novos tipos     |
| Vermelho | [Bytes](../ae2-mechanics/bytes-and-types.md) cheios, não é possível inserir mais itens |
| Preto  | Sem energia ou o gabinete não tem [canal](../ae2-mechanics/channels.md)                 |

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI do slot de célula.
Itens que entram na rede começam pelo armazenamento de maior prioridade como
seu primeiro destino. No caso de dois armazenamentos ou células terem a mesma prioridade,
se um já contém o item, ele será preferido sobre qualquer
outro. Quaisquer células [particionadas](cell_workbench.md) serão tratadas como se já contivessem o item
quando estiverem no mesmo grupo de prioridade que outros armazenamentos. Itens removidos do armazenamento serão
removidos do armazenamento de menor prioridade. Esse sistema de prioridade significa que, à medida que itens são inseridos e removidos
do armazenamento de rede, armazenamentos de maior prioridade serão preenchidos e os de menor prioridade serão esvaziados.

## Receita

<RecipeFor id="chest" />
