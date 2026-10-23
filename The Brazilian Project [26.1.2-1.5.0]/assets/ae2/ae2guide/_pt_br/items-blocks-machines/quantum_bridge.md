---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Ponte Quântica
  icon: quantum_ring
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:quantum_link
- ae2:quantum_ring
---

# A Ponte de Rede Quântica

![A formed Quantum Network Bridge](../assets/diagrams/quantum_bridge_demonstration.png)

Pontes de Rede Quânticas podem estender uma [rede](../ae2-mechanics/me-network-connections.md) por distâncias infinitas e até entre dimensões.
Elas podem transportar 32 canais no total (independentemente de como os cabos estão conectados em cada face), agindo
essencialmente como um [cabo denso](cables.md#dense-cable) sem fio.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/quantum_bridge_internal_structure_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/quantum_bridge_internal_structure_2.snbt" />

  <BoxAnnotation color="#33dd33" min="1 1 1" max="6 2 3">
        Um cabo imaginário entre as duas pontas
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Vale notar que **os dois lados precisam estar carregados**, então uma <ItemLink id="spatial_anchor" /> ou outro carregador de chunks deve ser usado
se os 2 lados estiverem longe um do outro.

# Anel Quântico

<BlockImage id="quantum_ring" scale="8" />

Oito desses blocos colocados ao redor de uma <ItemLink id="quantum_link" /> criarão uma
Ponte de Rede Quântica. Apenas os 4 blocos <ItemLink id="quantum_ring" /> adjacentes à
<ItemLink id="quantum_link" /> aceitarão conexões de rede;
os 4 blocos das quinas não podem se conectar a cabos.

## Receita

<RecipeFor id="quantum_ring" />

# Câmara de Elo Quântico

<BlockImage id="quantum_link" scale="8" />

Um desses blocos cercado por <ItemLink id="quantum_ring" />s
criará uma Ponte de Rede Quântica. Este bloco não se conecta a nenhum cabo e só é registrado
como parte da rede quando a ponte completa é feita.

O inventário deste bloco só pode conter uma única <ItemLink id="quantum_entangled_singularity" /> e é
acessível por automação.

## Receita

<RecipeFor id="quantum_link" />
