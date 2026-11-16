---
navigation:
  title: "Encadeador de Máquinas"
  icon: "machine_chainer"
  parent: extended_industrialization:machines.md
categories:
  - machines
item_ids:
  - extended_industrialization:machine_chainer
  - extended_industrialization:machine_chainer_relay
---

# Encadeador de Máquinas

<GameScene zoom="2" interactive={true} fullWidth={true}>
	<ImportStructure src="machine_chainer_example.nbt" />
	<IsometricCamera yaw="180" pitch="30" />
</GameScene>

<RecipeFor id="extended_industrialization:machine_chainer" />

O Encadeador de Máquinas pode se conectar a muitas máquinas, barris ou qualquer outro bloco de inventário marcado como
`#extended_industrialization:machine_chainer/linkable` numa linha reta de até 64 blocos. Os inventários conectados são
combinados num único inventário compartilhado como o do encadeador. O encadeador pode ser orientado para qualquer direção, incluindo para cima
e para baixo.

O encadeador suporta transferência de itens, fluidos e energia! No entanto, a transferência de energia é restrita a 3x a taxa
de transferência de um único cabo do seu respectivo nível e não pode interagir com a energia de máquinas conectadas que não correspondam à sua
voltagem.

## Relé de Encadeador de Máquinas

O relé é um bloco ao qual o encadeador pode se conectar, mas que não tem inventário. Ele pode ser usado como preenchimento nas suas
máquinas encadeadas sem exigir que você coloque uma máquina num vão.

<RecipeFor id="extended_industrialization:machine_chainer_relay" />
