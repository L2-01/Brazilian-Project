---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Conexões de Rede
  icon: fluix_glass_cable
---

# Conexões de Rede

## O que Significa "Rede"?

Uma "Rede" é um grupo de [dispositivos](../ae2-mechanics/devices.md) ligados por blocos que podem passar [canais](../ae2-mechanics/channels.md),
como [cabos](../items-blocks-machines/cables.md) ou máquinas de bloco inteiro e [dispositivos](../ae2-mechanics/devices.md).
(<ItemLink id="charger" />, <ItemLink id="interface" />, <ItemLink id="drive" />, etc.)
Tecnicamente, um único cabo já é uma rede, na verdade.

## Uma Digressão sobre Posicionamento de Dispositivos

Para [dispositivos](../ae2-mechanics/devices.md) que têm alguma função de rede específica (como uma <ItemLink id="interface" />
empurrando e puxando do [armazenamento de rede](../ae2-mechanics/import-export-storage.md), um <ItemLink id="level_emitter" />
lendo o conteúdo do armazenamento de rede, um <ItemLink id="drive" /> sendo armazenamento de rede, etc.),
a posição física do dispositivo não importa.

De novo, **a posição física do dispositivo não importa**. Tudo que importa é que o dispositivo esteja conectado à rede
(e claro, a qual rede ele está conectado).

## Conexões de Rede

Uma forma fácil de determinar o que está conectado numa rede é usar uma <ItemLink id="network_tool" />. Ela mostrará todo
componente da rede, então se você vir coisa que não deveria, ou não vir coisa que deveria, você tem um problema.

Por exemplo, isto são 2 redes separadas.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        Rede 1
  </BoxAnnotation>

<BoxAnnotation color="#915dcd" min="2 0 0" max="3 2 2">
        Rede 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Isto também são 2 redes separadas, porque o <ItemLink id="quartz_fiber" /> compartilha [energia](../ae2-mechanics/energy.md)
sem fornecer uma conexão de rede.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        Rede 1
  </BoxAnnotation>

  <BoxAnnotation color="#915dcd" min="1.3 0 0" max="3 2 2">
        Rede 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

No entanto, isto é apenas 1 rede, não 2 separadas. A [ponte quântica](../items-blocks-machines/quantum_bridge.md) age como
um [cabo denso](../items-blocks-machines/cables.md#dense-cable) sem fio, então ambas as pontas estão na mesma rede.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="7 3 3">
        Tudo 1 rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Isto também é apenas 1 rede, já que a cor do [cabo](../items-blocks-machines/cables.md) não tem nada a ver com conexões de rede, além de cabos de cores diferentes não
se conectarem entre si. Todas as cores se conectam a cabos fluix (ou "sem cor").

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        Tudo 1 rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Conexões Menos Intuitivas

Neste caso, isto é apenas 1 rede, porque o <ItemLink id="pattern_provider" />, sendo um dispositivo de bloco inteiro, age como
um cabo, e o <ItemLink id="inscriber" /> faz o mesmo. Assim, a conexão de rede passa através
do provedor e do inscritor.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        Tudo 1 rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Para evitar isso (útil para muitas configurações de fabricação automática envolvendo [sub-redes](../ae2-mechanics/subnetworks.md)),
você pode clicar com o botão direito no provedor com uma <ItemLink id="certus_quartz_wrench" /> para torná-lo direcional, caso em que ele
não passará canais por um lado.

<Row gap="40">
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 2">
        Rede 1
  </BoxAnnotation>

  <BoxAnnotation color="#915dcd" min="2 0 0" max="4 2 2">
        Rede 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_directional_connection.snbt" />

  <BoxAnnotation color="#ee3333" min="1 .3 .3" max="1.3 .7 .7">
        Observe como o cabo não se conecta
  </BoxAnnotation>

  <IsometricCamera yaw="255" pitch="30" />
</GameScene>
</Row>

Outras partes que não fornecem conexões de rede direcionais são a maioria dos [dispositivos](../ae2-mechanics/devices.md) de
[dispositivos](../ae2-mechanics/devices.md) como <ItemLink id="import_bus" />s, <ItemLink id="storage_bus" />s e
<ItemLink id="cable_interface" />s.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/subpart_no_connection.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
