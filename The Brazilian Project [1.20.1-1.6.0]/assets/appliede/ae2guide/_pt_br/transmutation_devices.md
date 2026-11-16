---
navigation:
  parent: appliede-index.md
  title: Dispositivos de Transmutação
  icon: emc_interface
  position: 10
categories:
  - appliede
item_ids:
  - appliede:emc_interface
  - appliede:cable_emc_interface
  - appliede:emc_export_bus
  - appliede:emc_import_bus
  - appliede:learning_card
---

# Dispositivos de Transmutação

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assemblies/transmutation_devices.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Como complemento à <ItemLink id="ae2:interface" />, ao <ItemLink id="ae2:export_bus" /> e ao
<ItemLink id="ae2:import_bus" /> já existentes do AE2, o AppliedE oferece seus próprios equivalentes a todos esses
dispositivos, que funcionam de forma quase idêntica aos dispositivos nativos do AE2 e ainda trabalham com itens
normais. A diferença fundamental, porém, é que os itens são transmutados de ou para EMC durante cada operação.

Embora cada dispositivo possa ser filtrado para qualquer item, eles só poderão executar sua função respectiva em itens
que tenham sido aprendidos por pelo menos um jogador rastreado por um
<ItemLink id="appliede:emc_module">Módulo de Transmutação</ItemLink> na rede. No caso da
<ItemLink id="appliede:emc_interface" />, os itens também não serão aceitos no armazenamento interno dela para serem
convertidos e enviados ao armazenamento de EMC, a menos que já tenham sido aprendidos e sejam conhecidos pela rede
com antecedência. Da mesma forma, o <ItemLink id="appliede:emc_import_bus" /> não puxará nenhum item não aprendido.

## Cartão de Maestria Alquímica

<ItemImage id="learning_card" scale="4" />

Porém, rapidamente viraria uma tarefa enfadonha para o usuário ter que aprender cada item com antecedência antes que
ele possa ser puxado automaticamente para um sistema ME e transformado em EMC. Por isso, o
<ItemLink id="appliede:learning_card" /> pode ser instalado tanto na <ItemLink id="appliede:emc_interface" /> quanto
no <ItemLink id="appliede:emc_import_bus" /> para que estes aprendam automaticamente os itens que chegam, desde que
tenham algum valor de EMC.

Note, porém, que esses itens só serão aprendidos pelo dono do próprio dispositivo, ou seja, o jogador que colocou
o barramento de importação, a interface ou o dispositivo de rede que envia itens para a interface.

## Receitas

<Recipe id="appliede:emc_interface" />
<RecipeFor id="appliede:emc_export_bus" />
<RecipeFor id="appliede:emc_import_bus" />
<RecipeFor id="appliede:learning_card" />
