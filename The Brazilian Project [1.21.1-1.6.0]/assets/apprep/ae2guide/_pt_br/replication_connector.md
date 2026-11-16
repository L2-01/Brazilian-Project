---
navigation:
    title: Conector de Replicação ME
    icon: replication_connector
    parent: index.md
item_ids:
    - replication_connector
---

# Applied Replicatics: Conector de Replicação ME

<BlockImage id="replication_connector" scale="4" />

Este bloco conecta uma rede do Replication e uma rede ME.

Ele pode armazenar matéria de uma rede do Replication numa rede ME, e também pode extrair matéria da rede ME de volta para a rede do Replication.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="structures/replication_connector_basic.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Autofabricação

Padrões armazenados num Armazenamento de Chips são registrados como fabricáveis na rede ME.
A saída do Replicador é inserida na rede ME via o Conector de Replicação ME.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="structures/auto_craft.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <BlockAnnotation color="#dddddd" x="0" y="0" z="1">
    A autofabricação usa matéria armazenada em Células de Armazenamento de Matéria ME.
  </BlockAnnotation>
</GameScene>
