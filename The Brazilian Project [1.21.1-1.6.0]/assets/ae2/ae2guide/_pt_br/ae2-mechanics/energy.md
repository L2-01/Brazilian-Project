---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Energia
  icon: energy_cell
---

# Energia

Sua rede precisará de energia para funcionar. As redes têm uma reserva de energia da qual os [dispositivos](../ae2-mechanics/devices.md) consomem diretamente, e
<ItemLink id="vibration_chamber" />s, <ItemLink id="energy_acceptor" />s (e <ItemLink id="controller" />s) a alimentam. Você pode
ver as estatísticas de energia de uma rede clicando com o botão direito em qualquer ponto dela com uma <ItemLink id="network_tool" /> ou
clicando com o botão direito no controlador da rede, se houver um. Esse armazenamento e distribuição em nível de rede significa que
não há limites de taxa de transferência de energia, então os dispositivos podem consumir quantidades arbitrariamente altas de energia e
os aceitadores de energia podem receber a uma velocidade funcionalmente ilimitada, limitados apenas pelo seu armazenamento de energia.

## Recebimento de Energia

<Row>
  <BlockImage id="energy_acceptor" scale="4" />

  <GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
  </GameScene>

  <BlockImage id="controller" p:state="online" scale="4" />

  <BlockImage id="vibration_chamber" p:active="true" scale="4" />
  
  <BlockImage id="crystal_resonance_generator" scale="4" />
</Row>

O AE2 não usa Forge Energy (no Forge) nem TechReborn Energy (no Fabric) internamente. Em vez disso, ele as converte para
sua própria unidade, AE. Essa conversão é só de ida. A energia pode ser convertida por <ItemLink id="energy_acceptor" />s e
<ItemLink id="controller" />s, embora as faces do controlador sejam melhor aproveitadas para mais [canais](../ae2-mechanics/channels.md).
Ela também pode ser gerada por <ItemLink id="vibration_chamber" />s ou passivamente usando um <ItemLink id="crystal_resonance_generator" />, mas o AE2 foi projetado
para ser usado com outros mods de tecnologia com melhor geração de energia.

Tudo isso significa que é melhor considerar uma rede AE2 como uma única máquina multibloco grande ao planejar a infraestrutura
de distribuição de energia da sua base.

As proporções de conversão de Forge Energy e TechReborn Energy são

*   2 FE = 1 AE (Forge)
*   1 E  = 2 AE (Fabric)

## Armazenamento de Energia

<Row>
  <BlockImage id="energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="4" />
</Row>

Por razões relativamente óbvias, uma rede não pode receber nem consumir mais energia num gametick do que consegue armazenar. Se uma rede
só pode armazenar 800 AE, quando seus [dispositivos](../ae2-mechanics/devices.md) pedirem energia, eles só poderão usar até 800 AE (supondo o armazenamento cheio)
e um aceitador de energia só poderá inserir até 800 AE na rede (supondo o armazenamento vazio).

Essa é uma causa comum de comportamento estranho: alguém monta uma rede pequena só com um aceitador de energia, gabinete, terminal e
alguns dispositivos e tenta despejar um inventário cheio de pedregulho na rede. Inserir todo aquele pedregulho de uma vez num
único gametick exige mais energia do que a rede tem armazenada, então nem todo o pedregulho é inserido, a rede
fica sem energia e reinicia.

**Isso pode ser resolvido adicionando células de energia.**

As redes têm um buffer de energia embutido de 25 AE por cabo, máquina ou parte.

Os <ItemLink id="controller" />s têm uma pequena quantidade de armazenamento interno de energia: 8.000 AE

A <ItemLink id="energy_cell" /> pode armazenar 200k AE, e apenas uma deve bastar para a maioria dos casos, lidando com folga com os picos de consumo
do uso normal da rede.

A <ItemLink id="dense_energy_cell" /> pode armazenar 1,6M AE e serve para quando você quer operar uma rede com energia armazenada ou
lidar com o consumo instantâneo massivo de montagens grandes de [armazenamento espacial](spatial-io.md).

A <ItemLink id="creative_energy_cell" /> é um item de criativo para testes, fornecendo ENERGIA ILIMITADA ou algo assim.
