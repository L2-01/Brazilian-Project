---
navigation:
  parent: example-setups/example-setups-index.md
  title: Gerador de Pedregulho Autorregulado
  icon: minecraft:cobblestone
---

# Gerador de Pedregulho Autorregulado

Automatizar um gerador de pedregulho é simples: basta apontar um <ItemLink id="annihilation_plane" /> para um gerador de pedregulho manual vanilla
padrão. No entanto, fazer isso eventualmente entupirá sua rede de pedregulho, então alguma regulação
é desejável.

Devido a como os planos de aniquilação funcionam (eles agem como <ItemLink id="import_bus" />s), não podemos simplesmente colocar um <ItemLink id="level_emitter" />
apontado para um <ItemLink id="export_bus" /> com um <ItemLink id="redstone_card" /> (já que não se pode ir direto de importação para exportação
sem armazenamento no meio). Temos que ser um pouco mais indiretos.

<ItemLink id="toggle_bus" />s permitem conectar e desconectar partes da sua rede com sinais de redstone, mas eles fazem
a rede reiniciar sempre que fazem isso. Há uma solução simples: coloque o ponto interruptor numa [sub-rede](../ae2-mechanics/subnetworks.md)
de modo que ele só reinicie a sub-rede.

Podemos ter um <ItemLink id="annihilation_plane" /> e um <ItemLink id="storage_bus" /> autocontidos numa [sub-rede](../ae2-mechanics/subnetworks.md)
empurrando para uma <ItemLink id="interface" /> na rede principal. O ponto interruptor conectará e desconectará a sub-rede de uma
<ItemLink id="quartz_fiber" />, cortando a energia dos planos.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/regulated_cobble_gen.snbt" />

<BoxAnnotation color="#dddddd" min="3 2 2" max="7 2.3 3">
        (1) Planos de Aniquilação: Sem GUI para configurar, mas podem ser encantados com Eficiência e Inquebrável para reduzir o consumo de energia.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 2 2" max="2.3 3 3">
        (2) Ponto de Armazenamento: Na sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 2.3 2" max="2.7 2.7 2.3">
        (3) Ponto Interruptor: Muito importante que o ponto interruptor esteja na
        sub-rede, e não na rede principal.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 3 2.3" max="2.7 3.3 2.7">
        (4) Emissor de Nível: Configurado com pedregulho e a quantidade desejada, definido para "Emitir quando os níveis estiverem abaixo do limite".
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 3" max="2 3 2">
        (5) Interface: Na sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="0 2.5 1.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

<DiamondAnnotation pos="5 1.5 3.5" color="#00ff00">
        Escadas alagadas impedem a água de fluir e transformar a lava em obsidiana.
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* Os <ItemLink id="annihilation_plane" />s (1) não têm GUI para configurar, mas podem ser encantados com Eficiência e Inquebrável para reduzir o consumo de energia.
* O <ItemLink id="storage_bus" /> (2) está na sua configuração padrão.
* O <ItemLink id="toggle_bus" /> (3) deve estar no lado da sub-rede da fibra de quartzo, não na rede principal, ou a rede
  principal reiniciará toda vez que ele alternar.
* O <ItemLink id="level_emitter" /> (4) está configurado com o item e a quantidade desejados, e definido para "Emitir quando os níveis estiverem abaixo do limite".
* A <ItemLink id="interface" /> (5) está na sua configuração padrão.

## Como Funciona

1. O gerador de pedregulho produz um pouco de pedregulho.
2. Os <ItemLink id="annihilation_plane" />s quebram o pedregulho.
3. O <ItemLink id="storage_bus" /> armazena o pedregulho na <ItemLink id="interface" />, enviando-o para a rede principal.
4. Quando a quantidade de pedregulho na rede principal excede a quantidade definida, o <ItemLink id="level_emitter" /> para de
   enviar sinal, desligando o <ItemLink id="toggle_bus" />.
5. Isso corta a energia da sub-rede, impedindo os planos de aniquilação de funcionar.
