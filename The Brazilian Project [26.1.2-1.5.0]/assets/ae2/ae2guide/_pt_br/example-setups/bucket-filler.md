---
navigation:
  parent: example-setups/example-setups-index.md
  title: Enchedor de Baldes
  icon: minecraft:water_bucket
---

# Enchedor de Baldes

Veja também [Esvaziador de Baldes](bucket-emptier.md).

Note que, como isto usa um <ItemLink id="pattern_provider" />, ele é feito para se integrar ao seu esquema de
[autofabricação](../ae2-mechanics/autocrafting.md).

Às vezes a vida é inconveniente e você precisa de baldes de um fluido em vez do fluido em si. Às vezes uma máquina pode fazer isso para você
(como o Fluid Transposer do Thermal Expansion), mas você nem sempre pode ter um mod que faça isso convenientemente para você. Por sorte,
o Minecraft vanilla tem um jeito um-pouco-menos-conveniente, o <ItemLink id="minecraft:dispenser" />.

**Note que muitas vezes você não precisa fazer isso, pois as Substituições de Fluido num
[Terminal de Codificação de Padrões](../items-blocks-machines/terminals.md#pattern-encoding-terminal) permitem usar o próprio fluido numa
receita de fabricação em vez de um balde.**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_filler.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) Provedor de Padrões: Configurado para travar fabricação "Com sinal de redstone", com os padrões de processamento relevantes.

        <Row>
        ![Fill Pattern](../assets/diagrams/water_fill_pattern_small.png)
        ![Fill Pattern](../assets/diagrams/lava_fill_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (2) Interface: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 1.1 0.8" max="3.9 1.9 1">
        (3) Ponto de Armazenamento #1: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) Plano de Formação: Filtrado para bloquear baldes, usando um cartão inversor.
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 2 1.2" max="3.8 2.2 1.8">
        (5) Ponto de Importação: Filtrado para bloquear baldes, usando um cartão inversor.
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (6) Ponto de Armazenamento #2: Na sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está configurado para travar fabricação "Com sinal de redstone", com os <ItemLink id="processing_pattern" />s relevantes.
  
    ![Charger Pattern](../assets/diagrams/water_fill_pattern.png)
    ![Charger Pattern](../assets/diagrams/lava_fill_pattern.png)

* A <ItemLink id="interface" /> (2) está na sua configuração padrão.
* O primeiro <ItemLink id="storage_bus" /> (3) está na sua configuração padrão.
* O <ItemLink id="formation_plane" /> (4) está filtrado para bloquear baldes, usando um cartão inversor.
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* O <ItemLink id="import_bus" /> (5) está filtrado para bloquear baldes, usando um cartão inversor.
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* O segundo <ItemLink id="storage_bus" /> (6) está na sua configuração padrão.

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para a <ItemLink id="interface" />.
   (Na verdade, como otimização, ele empurra diretamente através do ponto de armazenamento e do plano de formação como se fossem extensões das faces do provedor. Os itens nunca de fato entram na interface.)
2. Através dos mecanismos descritos em [sub-redes de canos](pipe-subnet.md#providing-to-multiple-places) e <ItemLink id="formation_plane" />,
   o balde acaba no <ItemLink id="minecraft:dispenser" /> e o fluido é colocado pelo plano de formação.
3. O <ItemLink id="minecraft:comparator" /> detecta o balde no ejetor e assim simultaneamente alimenta o ejetor e trava
   o <ItemLink id="pattern_provider" />.
4. O ejetor recolhe o fluido com o balde; ele agora tem um balde cheio dentro de si.
5. O <ItemLink id="import_bus" /> puxa o balde cheio para fora do ejetor e o armazena através do
   <ItemLink id="storage_bus" /> para dentro do provedor de padrões, devolvendo-o à rede principal.
6. O comparador vê que o ejetor está vazio, destravando o provedor.
