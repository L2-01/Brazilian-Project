---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Canais
  icon: controller
---

# Canais

As [Redes ME](me-network-connections.md) do Applied Energistics 2 exigem
Canais para suportar [dispositivos](../ae2-mechanics/devices.md) que usam armazenamento de rede ou outros serviços
de rede. Pense nos canais como cabos USB para todos os seus dispositivos. Um computador só tem tantas portas USB e só consegue suportar
tantos dispositivos conectados. A maioria das máquinas, dispositivos de bloco inteiro e cabos comuns só conseguem passar
até 8 canais. Você pode pensar em dispositivos de bloco inteiro e cabos comuns como um feixe de 8 "fios de canal". No entanto, [cabos densos](../items-blocks-machines/cables.md#dense-cable) suportam até
32 canais. Os únicos outros dispositivos capazes de transmitir 32 são o <ItemLink id="me_p2p_tunnel" />
e a [Ponte de Rede Quântica](../items-blocks-machines/quantum_bridge.md). Cada vez que um dispositivo consome um canal, imagine puxar um "fio" usb do
feixe, o que obviamente significa que aquele "fio" não está disponível mais adiante.

<GameScene zoom="7" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_demonstration_1.snbt" />

  <LineAnnotation color="#33ff33" from="1 .4 .7" to="2.4 .4 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .7" to="2.4 .6 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .6" to="2.6 .4 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.4 .6 .7" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .4 .7" to="2.4 .4 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .6 .6" to="2.6 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 .6" to="2.6 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.1 .6 1.5" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 1.5" to="2.9 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.6 .6 1.5" to="2.6 .9 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .1 1.5" to="2.4 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .4" to="3.5 .6 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="3.5 .6 .4" to="3.5 .9 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="3.5 .1 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .3" to="1.5 .6 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1.5 .6 .3" to="1.5 .9 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1.5 .1 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#ff3333" from="3.5 .5 .5" to="5.5 .5 .5" alwaysOnTop={true}>
  Todos os 8 canais do cabo foram usados, então o Gabinete não recebe nenhum.  
  </LineAnnotation>

  <LineAnnotation color="#993333" from="1 .5 .5" to="1.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="1.5 .5 .5" to="1.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2 .5 .5" to="2.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2.5 .5 .5" to="2.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="3 .5 .5" to="3.25 .5 .5" alwaysOnTop={true}/>

  <DiamondAnnotation pos="3.6 0.5 0.5" color="#ff0000">
        Todos os 8 canais do cabo foram usados, então o Gabinete não recebe nenhum.
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

Uma forma fácil de ver como os canais estão sendo usados e roteados pela sua rede é usar [cabos inteligentes](../items-blocks-machines/cables.md), que exibem neles os caminhos e o uso dos canais.

Canais consumirão 1⁄128 AE/t por nó que atravessam. Isso significa que, ao
adicionar um <ItemLink id="controller" /> para uma
rede com 8 dispositivos e mais de 96 nós, seu consumo de energia pode na verdade
diminuir, porque isso muda como os canais são alocados.

Importante: **CANAIS NÃO TEM NADA A VER COM A COR DO CABO**. Tudo que a cor do cabo faz é impedir que cabos se conectem.

## Roteamento de Canais

Ao usar um <ItemLink id="controller" />,
os canais são roteados em 3 passos. Eles primeiro pegam o caminho mais curto por máquinas adjacentes até o [cabo normal](../items-blocks-machines/cables.md)
mais próximo (vidro, coberto ou inteligente). Depois pegam o caminho mais curto por aquele cabo normal até o [cabo denso](../items-blocks-machines/cables.md)
mais próximo (denso ou denso inteligente). Depois pegam o caminho mais curto por aquele cabo denso até o <ItemLink id="controller" />.
Se o caminho mais curto já estiver esgotado, alguns [dispositivos](devices.md) podem não receber seus canais necessários; use
cabos coloridos, âncoras de cabo e túneis a seu favor para garantir que seus canais sigam o caminho desejado.

Por exemplo, neste caso alguns gabinetes não recebem canais porque, embora haja capacidade suficiente nos cabos, os
canais tentam pegar o caminho mais curto, sobrecarregando alguns cabos enquanto deixam outros vazios.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 3.6" to="1.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.4 0.5 3.6" to="1.4 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 1.6" to="0.6 .5 1.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 1.6" to="0.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 3.4" to="1.4 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 3.4" to="1.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <BoxAnnotation color="#dddddd" min="1.2 0.2 3.2" max="1.8 0.8 3.8" alwaysOnTop={true} thickness="0.05">
        Mais de 8 canais tentam passar por aqui, então alguns são cortados.
  </BoxAnnotation>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

Isso pode ser corrigido restringindo com mais cuidado os caminhos que os canais podem tomar. Redes devem ser em formato de árvore (ou arbusto).
Loops e caminhos de canal ambíguos devem ser minimizados.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue_fix.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 5.6" to="1 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

## Redes Ad-Hoc

Uma Rede sem um <ItemLink id="controller" />
é considerada Ad-Hoc e pode suportar até 8 dispositivos que usam canais.
Quando você exceder 8 dispositivos, os dispositivos que usam canais da rede desligarão.
Você pode remover dispositivos ou adicionar um <ItemLink id="controller" />.

Diferente de redes com controlador, [cabos inteligentes](../items-blocks-machines/cables.md) em redes ad-hoc mostrarão o número
de canais em uso na rede inteira, em vez do número de canais fluindo por aquele cabo específico.

Ao usar redes ad-hoc, cada dispositivo
usará 1 canal na rede inteira. Isso é muito diferente de como os <ItemLink id="controller" />s alocam canais com base na
rota mais curta.

## Projeto

Como mencionado antes em [roteamento de canais](channels.md#channel-routing), é melhor projetar sua rede numa estrutura de árvore, com cabos densos ramificando do controlador, cabos comuns
ramificando dos densos e [dispositivos](../ae2-mechanics/devices.md) em grupos de 8 ou menos nos cabos comuns.

Aqui está um exemplo do que não fazer:

Seguindo os caminhos dos canais,

1. Imediatamente ao sair do controlador para a direita, somos estrangulados a 8 canais porque o gabinete age como um cabo normal.
No entanto, como não estamos usando um cabo inteligente aqui, não conseguimos ver quantos canais estão em uso. Restam 8 canais.
2. O gabinete consome um canal.
Restam 7 canais.
3. 2 canais sobem para os terminais.
Restam 5 canais.
4. Continuando à direita, a interface consome outro canal.
Restam 4 canais.
5. 1 canal sobe para o provedor de padrões.
Restam 3 canais.
6. Continuando à direita, 1 canal sobe para o ponto de importação.
Restam 2 canais.
7. O grupo de provedores de padrões alimentando montadores só recebe 2 canais, então 2 dos provedores não recebem canais.

No fim das contas, o erro está em estrangular os canais e não pensar em como os canais serão distribuídos.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/bad_network_structure.snbt" />

<LineAnnotation color="#33ff33" from="6.5 .5 1.5" to="6 .5 1.5" alwaysOnTop={true} thickness="0.4">
  32 canais
</LineAnnotation>

<LineAnnotation color="#33ff33" from="6 .5 1.5" to="5.5 .5 1.5" alwaysOnTop={true} thickness="0.2">
  8 canais
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 1.5 1.5" alwaysOnTop={true} thickness="0.1">
  2 canais
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 1.5 1.5" to="5.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 2.5 1.5" to="5.5 2.5 1.1" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="4.5 .5 1.5" alwaysOnTop={true} thickness="0.158">
  5 canais
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 1.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="3.5 .5 1.5" alwaysOnTop={true} thickness="0.122">
  3 canais
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="3.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 2.5 1.5" to="3.7 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="1.5 .5 1.5" alwaysOnTop={true} thickness="0.1">
  2 canais
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="1.5 0.3 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="0.5 0.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#33ff33" from="0.5 0.5 1.5" to="0.5 0.5 0.5" alwaysOnTop={true} thickness="0.071">
  1 canal
</LineAnnotation>

<LineAnnotation color="#ff3333" from="0.5 1.5 1.5" to="0.5 1.3 1.5" alwaysOnTop={true} thickness="0.071">
  sem canais
</LineAnnotation>

<LineAnnotation color="#ff3333" from="1.5 1.5 0.5" to="1.5 1.3 0.5" alwaysOnTop={true} thickness="0.071">
  sem canais
</LineAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

---

Aqui está um exemplo de uma boa estrutura:

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/treelike_network_structure.snbt" />

    <BoxAnnotation color="#dddddd" min="6.9 0 4.9" max="9.1 4 7.1" thickness="0.05">
        Note que os provedores de padrões estão em grupos separados de 8.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 4 4" max="8 5 5" thickness="0.05">
        Dois cabos comuns cheios de canais se juntando significam que você precisa de um cabo denso.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 0 13" max="8 1 14" thickness="0.05">
        Cores de cabo diferentes são usadas para impedir que cabos adjacentes se conectem.
    </BoxAnnotation>


  <IsometricCamera yaw="315" pitch="30" />
</GameScene>

## Modos de Canal

O AE2 10.0.0 para Minecraft 1.18 introduz novas opções para mudar como os canais do AE2 se comportam no seu mundo.
Há uma nova opção de configuração na seção geral (`channels`) que controla essa opção, e um novo comando no jogo
para operadores mudarem o modo e a configuração de dentro do jogo. O comando é `/ae2 channelmode <mode>`
para mudá-lo e `/ae2 channelmode` para mostrar o modo atual. Quando o modo é mudado no jogo, todas as redes existentes
reiniciam e usam o novo modo imediatamente.

Isso ressuscita e melhora a opção que estava disponível no Minecraft 1.12 e introduz melhores opções para
jogadores que só querem uma jogabilidade um pouco mais tranquila, mas não querem que a mecânica seja removida por completo.

A tabela a seguir lista os modos disponíveis tanto no arquivo de configuração quanto no comando.

| Configuração | Descrição                                                                                                                                                                                                                                  |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `default`  | O modo padrão com as capacidades de canal de cabos e redes ad-hoc como descrito ao longo deste site                                                                                                                                        |
| `x2`       | Todas as capacidades de canal são dobradas (16 em cabo normal, 64 em cabo denso, redes ad-hoc suportam 16 canais)                                                                                                                           |
| `x3`       | Todas as capacidades de canal são triplicadas (24 em cabo normal, 92 em cabo denso, redes ad-hoc suportam 24 canais)                                                                                                                        |
| `x4`       | Todas as capacidades de canal são quadruplicadas (32 em cabo normal, 128 em cabo denso, redes ad-hoc suportam 32 canais)                                                                                                                    |
| `infinite` | Todas as restrições de canal são removidas. Controladores ainda reduzem o consumo de energia das redes *significativamente*. Cabos inteligentes só alternarão entre completamente desligado (nenhum canal transportado) e completamente ligado (1 ou mais canais transportados). |
