---
navigation:
  parent: example-setups/example-setups-index.md
  title: Automação de Fornalha
  icon: minecraft:furnace
---

# Automação de Fornalha

Note que, como isto usa um <ItemLink id="pattern_provider" />, ele é feito para se integrar ao seu esquema de
[autofabricação](../ae2-mechanics/autocrafting.md). Se você só quer automatizar uma fornalha sozinha, use funis e baús e afins.

A automação de uma <ItemLink id="minecraft:furnace" /> é um pouco mais complexa que a automação de máquinas mais simples como um [carregador](../example-setups/charger-automation.md).
Uma fornalha requer entrada por dois lados separados, e extração por um terceiro. O item a ser fundido deve ser empurrado pela face de cima,
o combustível deve ser empurrado por uma face lateral, e o resultado deve ser puxado por baixo.

Isso poderia ser feito via um <ItemLink id="pattern_provider" />
em cima, um <ItemLink id="export_bus" /> na lateral para empurrar combustível constantemente, e um <ItemLink id="import_bus" /> embaixo
para importar os resultados para a rede. No entanto, isso usa 3 [canais](../ae2-mechanics/channels.md).

Aqui está como fazer com apenas 1 canal:

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Provedor de Padrões: A variante direcional, via uso de uma chave-inglesa de quartzo certus, com os padrões de processamento relevantes.

        ![Iron Pattern](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) Interface: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) Ponto de Armazenamento #1: Filtrado para carvão.
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) Ponto de Armazenamento #2: Filtrado para bloquear carvão, usando um cartão inversor.
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está na sua configuração padrão, com os <ItemLink id="processing_pattern" />s relevantes.
    Ele é tornado direcional usando uma <ItemLink id="certus_quartz_wrench" /> nele.

  ![Iron Pattern](../assets/diagrams/furnace_pattern.png)

* A <ItemLink id="interface" /> (2) está na sua configuração padrão.
* O primeiro <ItemLink id="storage_bus" /> (3) está filtrado para carvão, ou qualquer combustível que você queira usar.
* O segundo <ItemLink id="storage_bus" /> (4) está filtrado para bloquear o combustível que você está usando, usando um <ItemLink id="inverter_card" />.

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para a <ItemLink id="interface" />.
   (Na verdade, como otimização, ele empurra diretamente através dos pontos de armazenamento como se fossem extensões das faces do provedor. Os itens nunca entram de fato na interface.)
2. A interface está configurada para não armazenar nada, então tenta empurrar os ingredientes para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md).
3. O único armazenamento na sub-rede verde são os <ItemLink id="storage_bus" />s. O ponto filtrado para carvão coloca o carvão no slot de combustível da fornalha pela face lateral.
    O ponto filtrado para NÃO carvão coloca os itens a serem fundidos no slot de cima, pela face de cima.
4. A fornalha faz sua coisa de fornalha
5. O funil puxa os resultados pela parte de baixo da fornalha e os coloca nos slots de retorno do provedor, devolvendo-os à rede principal.
