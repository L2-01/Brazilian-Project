---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Conexões de Rede
  icon: fluix_glass_cable
---

# Conexões de Rede

## O Que Significa "Rede"?

Uma "rede" é um grupo de [dispositivos](../ae2-mechanics/devices.md) ligados por blocos capazes de transmitir [canais](../ae2-mechanics/channels.md),
como [cabos](../items-blocks-machines/cables.md) ou máquinas e [dispositivos](../ae2-mechanics/devices.md) de bloco inteiro.
(<ItemLink id="charger" />, <ItemLink id="interface" />, <ItemLink id="drive" />, etc.)
Tecnicamente, um único cabo já é uma rede, na verdade.

## Um Parêntese Sobre o Posicionamento de Dispositivos

Para [dispositivos](../ae2-mechanics/devices.md) que têm alguma função específica na rede (como uma <ItemLink id="interface" />
enviando e puxando do [armazenamento de rede](../ae2-mechanics/import-export-storage.md), um <ItemLink id="level_emitter" />
lendo o conteúdo do armazenamento de rede, um <ItemLink id="drive" /> sendo o armazenamento de rede, etc.),
a posição física do dispositivo não importa.

Repetindo: **a posição física do dispositivo não importa**. O que importa é que o dispositivo esteja conectado à rede
(e, claro, a qual rede ele está conectado).

## Conexões de Rede

Uma forma fácil de determinar o que está conectado numa rede é usar uma <ItemLink id="network_tool" />. Ela mostra todos
os componentes da rede, então se você vir coisas que não devia ou não vir coisas que devia, há um problema.

Por exemplo, aqui há 2 redes separadas.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        Rede 1
  </BoxAnnotation>

<BoxAnnotation color="#5CA7CD" min="2 0 0" max="3 2 2">
        Rede 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Aqui também são 2 redes separadas, porque o <ItemLink id="quartz_fiber" /> compartilha [energia](../ae2-mechanics/energy.md)
sem fornecer conexão de rede.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        Rede 1
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="1.3 0 0" max="3 2 2">
        Rede 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Já aqui há apenas 1 rede, não 2 separadas. A [ponte quântica](../items-blocks-machines/quantum_bridge.md) age como
um [cabo denso](../items-blocks-machines/cables.md#dense-cable) sem fio, então as duas pontas estão na mesma rede.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="7 3 3">
        Tudo 1 rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Aqui também é apenas 1 rede, já que a cor do [cabo](../items-blocks-machines/cables.md) nada tem a ver com conexões de rede, além do fato de cabos de cores diferentes não se
conectarem entre si. Todas as cores conectam a cabos de fluix (ou "sem cor").

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        Tudo 1 rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Conexões no Contexto de Sub-redes

As [sub-redes](../ae2-mechanics/subnetworks.md) aproveitam as conexões de rede (e especificamente o fato de **NÃO** estar conectado)
para restringir quais [dispositivos](../ae2-mechanics/devices.md) têm acesso a quais outros dispositivos.

Uma sub-rede, no fundo, é só uma rede separada.

Por exemplo, veja o [Fortunador de Minérios Automático](../example-setups/ore-fortuner.md). Há 3 redes separadas aqui,
cada uma servindo a um propósito específico na montagem.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 2" max="3 1 3">
        Rede 1, age como uma sub-rede de tubo, restringe o que o ponto de importação pode acessar para que ele "armazene" os blocos de minério através dos
        planos de formação.
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="0 0 0" max="3 1 1">
        Rede 2, age como outra sub-rede de tubo, restringe o que os planos de aniquilação podem acessar para que eles guardem
        os pedaços de minério com fortuna no barril e não na sua rede principal. Também faz com que não consumam canais da
        rede principal.
  </BoxAnnotation>

  <BoxAnnotation color="#82CD5C" min="2 0 1" max="4 1 2">
        Rede 3, a rede principal com todo o seu armazenamento e fabricação. Está aqui só para fornecer energia, na verdade, e especificamente
        *não* conectada às 2 sub-redes.
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Conexões no Contexto de P2P

Uma variante do [Túnel P2P](../items-blocks-machines/p2p_tunnels.md) move [canais](channels.md) em vez de itens, fluidos
ou sinal de redstone, e isso confunde as pessoas por algum motivo. A rede na qual o túnel está montado não tem nada a ver com a
rede que o túnel transporta. Elas *podem* ser a mesma rede, mas não precisam ser — e geralmente não são.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_channels_network_connection.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 1">
        Rede 1, a rede sendo transportada (geralmente a sua rede principal)
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="2.02 0 0" max="3.98 1 1">
        Rede 2, a rede operando os túneis P2P ME (geralmente *não* é a sua rede principal)
  </BoxAnnotation>

  <BoxAnnotation color="#915dcd" min="4.02 0 0" max="6 1 1">
        Rede 1, a rede sendo transportada (geralmente a sua rede principal)
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Conexões Menos Intuitivas

Neste caso, é apenas 1 rede, porque o <ItemLink id="pattern_provider" />, por ser um dispositivo de bloco inteiro, age como
um cabo, e o <ItemLink id="inscriber" /> faz o mesmo. Assim, a conexão de rede passa através
do provedor e do inscritor.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        Tudo 1 rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Para evitar isso (útil em muitas montagens de fabricação automática envolvendo [sub-redes](../ae2-mechanics/subnetworks.md)),
você pode clicar com o botão direito no provedor com uma <ItemLink id="certus_quartz_wrench" /> para torná-lo direcional; nesse caso, ele
não passará canais por um dos lados.

<Row gap="40">
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 2">
        Rede 1
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="2.02 0 0" max="4 2 2">
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

Outras partes que não fornecem conexões de rede direcionais são a maioria das [subpartes](../ae2-mechanics/cable-subparts.md)
de [dispositivos](../ae2-mechanics/devices.md), como <ItemLink id="import_bus" />es, <ItemLink id="storage_bus" />es e
<ItemLink id="cable_interface" />s.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/subpart_no_connection.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>