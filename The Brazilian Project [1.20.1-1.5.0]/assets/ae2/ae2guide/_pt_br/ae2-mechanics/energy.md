---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Energia
  icon: energy_cell
---

# Energia

Sua rede precisará de energia para funcionar. Redes têm uma reserva de energia da qual os [dispositivos](../ae2-mechanics/devices.md) retiram diretamente, e à qual
<ItemLink id="vibration_chamber" />s, <ItemLink id="energy_acceptor" />s (e <ItemLink id="controller" />s) adicionam. Você pode
ver as estatísticas de energia de uma rede clicando com o botão direito em qualquer ponto dela com uma <ItemLink id="network_tool" /> ou
clicando com o botão direito no controlador da rede, se ela tiver um. Esse armazenamento e distribuição à nível de rede significa que
não há limites de taxa de transferência de energia, então dispositivos podem puxar quantidades arbitrariamente altas de energia e
aceitadores de energia podem inserir a uma velocidade funcionalmente ilimitada, limitada apenas pelo seu armazenamento de energia.

## Recebendo Energia

<Row>
  <BlockImage id="energy_acceptor" scale="4" />

  <GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
  </GameScene>

  <BlockImage id="controller" p:state="online" scale="4" />

  <BlockImage id="vibration_chamber" p:active="true" scale="4" />
</Row>

O AE2 não usa Forge Energy (no Forge) nem TechReborn Energy (no Fabric) internamente. Em vez disso, ele as converte para
sua própria unidade, AE. Essa conversão é de mão única. Energia pode ser convertida por <ItemLink id="energy_acceptor" />s e
<ItemLink id="controller" />s, embora as faces do controlador sejam melhor usadas para mais [canais](../ae2-mechanics/channels.md).
Ela também pode ser gerada por <ItemLink id="vibration_chamber" />s, mas o AE2 foi projetado
para ser usado com outros mods de tecnologia que têm melhor geração de energia.

Tudo isso significa que é melhor considerar uma rede AE2 como uma única grande máquina multibloco ao planejar a infraestrutura de
distribuição de energia da sua base.

As razões de conversão de Forge Energy e Techreborn Energy são

*   2 FE = 1 AE (Forge)
*   1 E  = 2 AE (Fabric)

## Armazenamento de Energia

<Row>
  <BlockImage id="energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="4" />
</Row>

Por razões relativamente óbvias, uma rede não pode receber ou consumir mais energia num tique de jogo do que consegue armazenar. Se uma rede
só pode armazenar 800 AE, quando seus [dispositivos](../ae2-mechanics/devices.md) solicitarem energia, eles só poderão usar até 800 AE (supondo que o armazenamento esteja cheio),
e um aceitador de energia só poderá inserir até 800 AE na rede (supondo que o armazenamento esteja vazio).

Esta é uma causa comum de comportamento estranho: alguém monta uma rede pequena com apenas um aceitador de energia, gabinete, terminal e
alguns dispositivos e tenta despejar um inventário cheio de pedregulho na rede. Inserir todo aquele pedregulho de uma vez num
único tique de jogo requer mais energia do que a rede tem armazenada, então nem todo o pedregulho é inserido, a rede
fica sem energia e, portanto, reinicia.

**Isso pode ser resolvido com a adição de células de energia.**

Redes têm um buffer de energia embutido de 25 AE por cabo, máquina ou parte.

<ItemLink id="controller" />s têm uma pequena quantidade de armazenamento interno de energia, 8.000 AE

A <ItemLink id="energy_cell" /> pode armazenar 200k AE, e só uma já deve ser suficiente para a maioria dos casos, aguentando os picos de energia
do uso normal da rede com folga.

A <ItemLink id="dense_energy_cell" /> pode armazenar 1,6M AE e serve para quando você quer alimentar uma rede com energia armazenada, ou
lidar com o consumo instantâneo massivo de energia de grandes configurações de [armazenamento espacial](spatial-io.md).

A <ItemLink id="creative_energy_cell" /> é um item do criativo para testes, fornecendo PODER ILIMITADO ou sei lá.
