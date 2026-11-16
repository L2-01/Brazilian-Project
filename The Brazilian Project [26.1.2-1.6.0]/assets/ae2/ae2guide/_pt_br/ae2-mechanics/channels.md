---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Canais
  icon: controller
---

# Canais

As [redes ME](me-network-connections.md) do Applied Energistics 2 exigem
canais para suportar [dispositivos](../ae2-mechanics/devices.md) que usam armazenamento em rede ou outros serviços
da rede. Pense nos canais como cabos USB para todos os seus dispositivos. Um computador só tem tantas portas USB e só suporta
uma certa quantidade de dispositivos conectados. A maioria das máquinas, dispositivos de bloco inteiro e cabos comuns só consegue transmitir
até 8 canais. Você pode pensar em dispositivos de bloco inteiro e cabos comuns como um feixe de 8 "fios de canal". Já os [cabos densos](../items-blocks-machines/cables.md#dense-cable) suportam até
32 canais. Os únicos outros dispositivos capazes de transmitir 32 são o <ItemLink id="me_p2p_tunnel" />
e a [Ponte de Rede Quântica](../items-blocks-machines/quantum_bridge.md). Cada vez que um dispositivo consome um canal, imagine arrancar um "fio" USB do
feixe, o que obviamente significa que aquele "fio" não estará disponível mais adiante.

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
  Todos os 8 canais do cabo foram usados, então o Gabinete não recebe um.  
  </LineAnnotation>

  <LineAnnotation color="#993333" from="1 .5 .5" to="1.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="1.5 .5 .5" to="1.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2 .5 .5" to="2.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2.5 .5 .5" to="2.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="3 .5 .5" to="3.25 .5 .5" alwaysOnTop={true}/>

  <DiamondAnnotation pos="3.6 0.5 0.5" color="#ff0000">
        Todos os 8 canais do cabo foram usados, então o Gabinete não recebe um.
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

Uma forma fácil de ver como os canais estão sendo usados e roteados pela sua rede é usar [cabos inteligentes](../items-blocks-machines/cables.md), que exibem sobre si os caminhos e o uso dos canais.

Os canais consomem 1⁄128 ae/t por nó que atravessam, o que significa que
adicionar um <ItemLink id="controller" /> numa
rede com 8 dispositivos e mais de 96 nós pode, na verdade,
diminuir o consumo de energia, porque muda a forma como os canais são alocados.

Vale notar que **CANAIS NÃO TEM NADA A VER COM A COR DO CABO**; a cor do cabo só faz com que cabos não se conectem.

## Roteamento de Canais

Ao usar um <ItemLink id="controller" />,
os canais são roteados em 3 etapas. Primeiro, eles seguem o caminho mais curto por máquinas adjacentes até o [cabo normal](../items-blocks-machines/cables.md)
mais próximo (de vidro, revestido ou inteligente). Depois, seguem o caminho mais curto por esse cabo normal até o [cabo denso](../items-blocks-machines/cables.md)
mais próximo (denso ou denso inteligente). Por fim, seguem o caminho mais curto por esse cabo denso até o <ItemLink id="controller" />.
Se o caminho mais curto já estiver saturado, alguns [dispositivos](devices.md) podem não receber os canais necessários; use
cabos coloridos, âncoras de cabo e túneis a seu favor para garantir que os canais sigam o caminho desejado.

Por exemplo, neste caso alguns gabinetes não recebem canais porque, embora haja capacidade suficiente nos cabos, os
canais tentam seguir o caminho mais curto, sobrecarregando alguns cabos enquanto deixam outros vazios.

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

Isso pode ser corrigido restringindo com mais cuidado os caminhos que os canais podem seguir. As redes devem ter formato de árvore (ou arbusto).
Laços e caminhos de canal ambíguos devem ser minimizados.

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

Uma rede sem <ItemLink id="controller" />
é considerada Ad-Hoc e pode suportar até 8 dispositivos que usam canal.
Ao passar de 8 dispositivos, os dispositivos que usam canal da rede desligam;
você pode remover dispositivos ou adicionar um <ItemLink id="controller" />.

Diferente das redes com controlador, os [cabos inteligentes](../items-blocks-machines/cables.md) em redes ad-hoc mostram o número
de canais em uso na rede inteira, em vez do número de canais passando por aquele cabo específico.

Em redes ad-hoc, cada dispositivo
usa 1 canal na rede toda — muito diferente de como o <ItemLink id="controller" /> aloca canais com base na
rota mais curta.

## Projeto

Como mencionado antes em [roteamento de canais](channels.md#channel-routing), é melhor projetar sua rede numa estrutura em árvore, com cabos densos saindo do controlador, cabos comuns
ramificando a partir dos densos e [dispositivos](../ae2-mechanics/devices.md) em grupos de 8 ou menos nos cabos comuns.

Aqui está um exemplo do que NÃO fazer:

Seguindo os caminhos dos canais:

1. Logo ao sair do controlador pela direita, ficamos limitados a 8 canais porque o gabinete age como um cabo normal.
Como não estamos usando um cabo inteligente aqui, não vemos quantos canais estão em uso. Restam 8 canais.
2. O gabinete consome um canal.
Restam 7 canais.
3. 2 canais sobem para os terminais.
Restam 5 canais.
4. Seguindo à direita, a interface consome outro canal.
Restam 4 canais.
5. 1 canal sobe para o provedor de padrões.
Restam 3 canais.
6. Seguindo à direita, 1 canal sobe para o ponto de importação.
Restam 2 canais.
7. O grupo de provedores de padrões que alimenta os montadores só recebe 2 canais, então 2 dos provedores ficam sem canal.

No fim, o erro está em estrangular os canais e não pensar em como eles serão distribuídos.

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
Há uma nova opção de configuração na seção geral (`channels`) que controla isso, e um novo comando no jogo
para operadores mudarem o modo e a configuração de dentro do jogo. O comando é `/ae2 channelmode <mode>`
para alterá-lo e `/ae2 channelmode` para mostrar o modo atual. Quando o modo é alterado dentro do jogo, todas as grades existentes
reiniciam e passam a usar o novo modo imediatamente.

Isso revive e aprimora a opção que existia no Minecraft 1.12, trazendo alternativas melhores para
jogadores que querem uma jogabilidade mais tranquila mas não querem que a mecânica seja removida por completo.

A tabela a seguir lista os modos disponíveis tanto no arquivo de configuração quanto no comando.

| Opção      | Descrição                                                                                                                                                                                                                               |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `default`  | O modo padrão, com as capacidades de canal de cabos e redes ad-hoc descritas ao longo deste site                                                                                                                           |
| `x2`       | Todas as capacidades de canal são dobradas (16 em cabo normal, 64 em cabo denso, redes ad-hoc suportam 16 canais)                                                                                                                           |
| `x3`       | Todas as capacidades de canal são triplicadas (24 em cabo normal, 92 em cabo denso, redes ad-hoc suportam 24 canais)                                                                                                                           |
| `x4`       | Todas as capacidades de canal são quadruplicadas (32 em cabo normal, 128 em cabo denso, redes ad-hoc suportam 32 canais)                                                                                                                       |
| `infinite` | Todas as restrições de canal são removidas. Os controladores ainda reduzem *significativamente* o consumo de energia das grades. Os cabos inteligentes só alternam entre totalmente desligado (nenhum canal transmitido) e totalmente ligado (1 ou mais canais transmitidos). |
