---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Túneis P2P
  icon: me_p2p_tunnel
  position: 210
categories:
- devices
item_ids:
- ae2:me_p2p_tunnel
- ae2:redstone_p2p_tunnel
- ae2:item_p2p_tunnel
- ae2:fluid_p2p_tunnel
- ae2:fe_p2p_tunnel
- ae2:light_p2p_tunnel
---

# Túneis Ponto a Ponto

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_tunnels.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Túneis P2P são uma forma de mover coisas como itens, fluidos, sinais de redstone, energia, luz e [canais](../ae2-mechanics/channels.md)
por uma rede sem que interajam diretamente com a rede. Há muitas variantes de túnel P2P, mas cada uma
só transporta seu tipo específico de coisa. Elas essencialmente agem como portais que conectam diretamente
duas faces de bloco à distância. Não são bidirecionais — há entradas e saídas definidas.

![Portal](../assets/assemblies/p2p_portal.png)

Por exemplo, o funil virado para o P2P de Itens agirá como se estivesse diretamente conectado ao barril, e os itens fluirão.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_hopper_barrel.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

No entanto, dois barris lado a lado não transferirão itens entre si.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_barrel_barrel.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Há também outras variantes, como o P2P de Redstone.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_redstone.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

E o P2P ME, que move canais.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_channels.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Tipos de Túnel P2P e Sintonização

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_tunnels.snbt" />
  <IsometricCamera yaw="180" pitch="90" />
</GameScene>

Há muitos tipos de túnel P2P. Apenas o túnel P2P ME é fabricável diretamente; os outros são feitos clicando com o botão direito em outros
túneis P2P com certos itens:
- Túneis P2P ME são selecionados clicando com o botão direito com qualquer [cabo](../items-blocks-machines/cables.md).
- Túneis P2P de Redstone são selecionados clicando com o botão direito com uma variedade de componentes de redstone.
- Túneis P2P de Itens são selecionados clicando com o botão direito com um baú ou funil.
- Túneis P2P de Fluidos são selecionados clicando com o botão direito com um balde ou frasco.
- Túneis P2P de Energia são selecionados clicando com o botão direito com quase qualquer item que contenha energia.
- Túneis P2P de Luz são selecionados clicando com o botão direito com uma tocha ou pedra-luminosa.

Alguns tipos de túnel têm peculiaridades. Por exemplo, os canais dos túneis P2P ME não podem passar por outros túneis P2P ME, e
túneis P2P de Energia cobram indiretamente um imposto de 2,5% sobre a FE fluindo por eles ao aumentar seu
consumo de [energia](../ae2-mechanics/energy.md).

## A Forma Mais Usada de P2P

O caso de uso mais comum dos túneis P2P é usar um túnel P2P ME para compactar a densidade do transporte de [canais](../ae2-mechanics/channels.md).
Em vez de um feixe de cabos densos, um único cabo denso pode ser usado para carregar muitos canais por aí.

Neste exemplo, 8 entradas de P2P ME pegam 256 canais (8*32) do <ItemLink id="controller" /> da rede principal e 8 saídas de P2P ME
os emitem em outro lugar. Observe como cada entrada ou saída de túnel P2P toma 1 canal. Podemos assim passar muitos canais
por um cabo fino. E como nossos túneis P2P estão numa [sub-rede](../ae2-mechanics/subnetworks.md) dedicada, nem estamos
gastando canais da rede principal para isso! Observe também que, embora os túneis P2P possam ser colocados diretamente
contra um controlador, um [cabo denso inteligente](../items-blocks-machines/cables.md#smart-cable) pode ser colocado no meio para visualizar os canais mais facilmente.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/p2p_compact_channels.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 1.3 6.3" max="2 2.7 6.7">
        A Fibra de Quartzo compartilha energia entre a rede principal e a sub-rede p2p.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4.1 0 5.7" max="5 2.3 6.4">
        Você pode tanto colocar a entrada do túnel diretamente num controlador quanto ligar um cabo nele.
  </BoxAnnotation>

  <IsometricCamera yaw="225" pitch="30" />
</GameScene>

Para outro exemplo (incluindo seu uso com [Pontes Quânticas](quantum_bridge.md)), veja este diagrama de MS Paint que não me dei ao trabalho
de retocar:

![P2P and quantum bridges](../assets/diagrams/p2p_quantum_network.png)

## Aninhamento

No entanto, você não pode usar isso para mandar canais infinitos por um único cabo. O canal de um túnel P2P ME não
passará por outro túnel P2P ME, então você não pode aninhá-los recursivamente. Observe como a camada externa de túneis P2P ME
nos cabos vermelhos está offline. Note que isso só se aplica a túneis P2P ME; outros tipos de túnel P2P podem passar por um túnel P2P ME,
como se vê pelos túneis P2P de Redstone funcionando normalmente.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_nesting.snbt" />
  <IsometricCamera yaw="225" pitch="30" />
</GameScene>

## Vinculação

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_linking_frequency.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

As pontas de uma conexão de túnel P2P podem ser vinculadas usando um <ItemLink id="memory_card" />. A frequência será exibida
como uma matriz 2x2 de cores no verso do túnel.
- Shift-clique com o botão direito para gerar uma nova frequência de vínculo P2P.
- Clique com o botão direito para colar as configurações, cartões de melhoria ou frequência de vínculo.

O túnel em que você shift-clicar será a entrada e o túnel em que você clicar será a saída. Você pode ter múltiplas saídas,
mas com túneis P2P ME, os canais fluindo na entrada serão divididos entre as saídas, então você não pode duplicar canais.

## Receita

<RecipeFor id="me_p2p_tunnel" />
