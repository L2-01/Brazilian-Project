---
navigation:
  parent: example-setups/example-setups-index.md
  title: Automação de Fornalha
  icon: minecraft:furnace
---

# Automação de Fornalha

Note que, como usa um <ItemLink id="pattern_provider" />, isto é feito para se integrar à sua configuração de
[fabricação automática](../ae2-mechanics/autocrafting.md). Se você só quer automatizar uma fornalha isolada, use funis, baús e afins.

A automação de uma <ItemLink id="minecraft:furnace" /> é um pouco mais complexa que a de máquinas mais simples como um [carregador](../example-setups/charger-automation.md).
Uma fornalha exige entrada por duas faces separadas e extração por uma terceira. O item a ser fundido deve ser empurrado pela face superior,
o combustível deve ser empurrado por uma face lateral e o resultado deve ser puxado pela parte de baixo. 

Isso poderia ser feito com um <ItemLink id="pattern_provider" />
no topo, um <ItemLink id="export_bus" /> na lateral para empurrar combustível constantemente e um <ItemLink id="import_bus" /> embaixo
para importar os resultados para a rede. Porém, isso usa 3 [canais](../ae2-mechanics/channels.md).

Veja como fazer isso com apenas 1 canal:

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Provedor de Padrões: A variante direcional, via uso de uma chave de quartzo certus, com os padrões de processamento relevantes.

        ![Iron Pattern](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) Interface: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) Storage Bus #1: Filtrado para carvão.
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) Storage Bus #2: Filtrado para lista-negra de carvão, usando um cartão inversor.
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está em sua configuração padrão, com os <ItemLink id="processing_pattern" />s relevantes.
    Ele é tornado direcional usando uma <ItemLink id="certus_quartz_wrench" /> nele.

  ![Iron Pattern](../assets/diagrams/furnace_pattern.png)

* A <ItemLink id="interface" /> (2) está em sua configuração padrão.
* O primeiro <ItemLink id="storage_bus" /> (3) está filtrado para carvão, ou o combustível que você quiser usar.
* O segundo <ItemLink id="storage_bus" /> (4) está filtrado para lista-negra do combustível que você estiver usando, usando um <ItemLink id="inverter_card" />.

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para dentro da <ItemLink id="interface" />.
   (Na verdade, como otimização, ele empurra diretamente através dos pontos de armazenamento como se fossem extensões das faces do provedor. Os itens nunca entram de fato na interface.)
2. A interface está configurada para não armazenar nada, então ela tenta empurrar os ingredientes para o [armazenamento de rede](../ae2-mechanics/import-export-storage.md).
3. O único armazenamento da sub-rede verde são os <ItemLink id="storage_bus" />es. O ponto filtrado para carvão coloca o carvão no slot de combustível da fornalha pela face lateral.
    O ponto filtrado para NÃO carvão coloca os itens a serem fundidos no slot superior, pela face de cima.
4. A fornalha faz seu trabalho de fornalha.
5. O funil puxa os resultados pela parte de baixo da fornalha e os coloca nos slots de retorno do provedor, devolvendo-os à rede principal.
