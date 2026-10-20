---
navigation:
  parent: example-setups/example-setups-index.md
  title: Automação de Processadores
  icon: logic_processor
---

# Automação da Produção de Processadores

Há muitas formas de automatizar [processadores](../items-blocks-machines/processors.md), e esta é uma delas.

Este layout geral pode ser feito com qualquer tipo de cano, conduíte ou duto de logística de itens, ou como quer que o mod o chame, desde
que você consiga filtrá-lo.

![The Process FLow Diagram](../assets/diagrams/processor_flow_diagram.png)

Aqui está detalhado como fazer isso só com o AE2, usando [sub-redes de "canos"](pipe-subnet.md).

Note que, como isto usa um <ItemLink id="pattern_provider" />, ele é feito para se integrar ao seu esquema de
[autofabricação](../ae2-mechanics/autocrafting.md). Se você só quiser automatizar um processador sozinho, substitua o provedor de padrões por outro barril e coloque os ingredientes diretamente no barril de cima.

Este esquema por acaso é retrocompatível
com versões anteriores do AE2, porque mesmo que os <ItemLink id="inscriber" />s tenham lados, as sub-redes de canos ainda inserem nos e
extraem das faces corretas.

## Uma Lição em Codificação de Padrões

Frequentemente, o [padrão](../items-blocks-machines/patterns.md) que você precisa codificar **NÃO CORRESPONDERÁ AO QUE VOCÊ VÊ NO JEI**, nem ao que o JEI produz quando você clica no botão +.
Neste caso, o JEI produzirá 2 padrões separados, um para os componentes impressos e um para a montagem final, e o padrão dos componentes
impressos incluirá uma [prensa](../items-blocks-machines/presses.md). Isso não é o que queremos, porque não é o que o esquema fará. Queremos 1 padrão que
recebe os recursos brutos e entrega o processador completo, e como a prensa já está no inscritor, não devemos colocá-la no padrão.

---

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/processor_automation.snbt" />

  <BoxAnnotation color="#dddddd" min="5 1 0" max="6 2 1" thickness=".05">
        (1) Provedor de Padrões: Na sua configuração padrão, com os padrões de processamento relevantes.

        <Row>
            ![Logic Pattern](../assets/diagrams/logic_pattern_small.png)
            ![Calculation Pattern](../assets/diagrams/calculation_pattern_small.png)
            ![Engineering Pattern](../assets/diagrams/engineering_pattern_small.png)
        </Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4.7 2 0" max="5 3 1" thickness=".05">
        (2) Ponto de Armazenamento #1: Na sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 0" max="4.3 2 1" thickness=".05">
        (3) Ponto de Exportação #1: Filtrado para Silício. Tem 2 Cartões de Aceleração
        <Row><ItemImage id="silicon" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 4 0" max="4.3 3 1" thickness=".05">
        (4) Ponto de Exportação #2: Filtrado para Barra de Ouro. Tem 2 Cartões de Aceleração
        <Row><ItemImage id="minecraft:gold_ingot" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 5 0" max="4.3 4 1" thickness=".05">
        (5) Ponto de Exportação #3: Filtrado para Cristal de Quartzo Certus. Tem 2 Cartões de Aceleração
        <Row><ItemImage id="certus_quartz_crystal" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 6 0" max="4.3 5 1" thickness=".05">
        (6) Ponto de Exportação #4: Filtrado para Diamante. Tem 2 Cartões de Aceleração
        <Row><ItemImage id="minecraft:diamond" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 3 0" max="2 2 1" thickness=".05">
        (7) Ponto de Exportação #5: Filtrado para Pó de Redstone. Tem 2 Cartões de Aceleração
        <Row><ItemImage id="minecraft:redstone" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 0" max="3 2 1" thickness=".05">
        (8) Inscritor #1: Na sua configuração padrão. Tem uma Prensa de Silício e 4 Cartões de Aceleração
        <Row><ItemImage id="silicon_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 3 0" max="3 4 1" thickness=".05">
        (9) Inscritor #2: Na sua configuração padrão. Tem uma Prensa Lógica e 4 Cartões de Aceleração
        <Row><ItemImage id="logic_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 4 0" max="3 5 1" thickness=".05">
        (10) Inscritor #3: Na sua configuração padrão. Tem uma Prensa de Cálculo e 4 Cartões de Aceleração
        <Row><ItemImage id="calculation_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 5 0" max="3 6 1" thickness=".05">
        (11) Inscritor #4: Na sua configuração padrão. Tem uma Prensa de Engenharia e 4 Cartões de Aceleração
        <Row><ItemImage id="engineering_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 2 0" max="1 3 1" thickness=".05">
        (12) Inscritor #5: Na sua configuração padrão. Tem 4 Cartões de Aceleração
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 2 0" max="3 1 1" thickness=".05">
        (13) Ponto de Importação #1: Na sua configuração padrão. Tem 2 Cartões de Aceleração
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 4 0" max="3 3 1" thickness=".05">
        (14) Ponto de Importação #2: Na sua configuração padrão. Tem 2 Cartões de Aceleração
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 5 0" max="3 4 1" thickness=".05">
        (15) Ponto de Importação #3: Na sua configuração padrão. Tem 2 Cartões de Aceleração
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 6 0" max="3 5 1" thickness=".05">
        (16) Ponto de Importação #4: Na sua configuração padrão. Tem 2 Cartões de Aceleração
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 3 0" max="1 3.3 1" thickness=".05">
        (17) Ponto de Armazenamento #2: Na sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1.7 0" max="1 2 1" thickness=".05">
        (18) Ponto de Armazenamento #3: Na sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 0" max="0.7 3 1" thickness=".05">
        (19) Ponto de Importação #5: Na sua configuração padrão. Tem 2 Cartões de Aceleração
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="5 0.7 0" max="6 1 1" thickness=".05">
        (20) Ponto de Armazenamento #4: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.3 2.7 0.3" max="3.7 3 0.7" thickness=".05">
        A Fibra de Quartzo alimenta todos os 3 inscritores porque inscritores agem como cabos e assim transmitem energia
  </BoxAnnotation>

<DiamondAnnotation pos="7 1.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="185" pitch="5" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está na sua configuração padrão, com os <ItemLink id="processing_pattern" />s relevantes.
  Note que os padrões vão diretamente dos recursos brutos ao processador completo, e **NÃO** incluem a [prensa](../items-blocks-machines/presses.md).

  ![Logic Pattern](../assets/diagrams/logic_pattern.png)
  ![Calculation Pattern](../assets/diagrams/calculation_pattern.png)
  ![Engineering Pattern](../assets/diagrams/engineering_pattern.png)

* Os <ItemLink id="storage_bus" />s (2, 17, 18, 20) estão nas suas configurações padrão.
* Os <ItemLink id="export_bus" />s (3-7) estão filtrados para o ingrediente relevante. Têm 2 <ItemLink id="speed_card" />s.
    <Row>
      <ItemImage id="silicon" scale="2" />
      <ItemImage id="minecraft:gold_ingot" scale="2" />
      <ItemImage id="certus_quartz_crystal" scale="2" />
      <ItemImage id="minecraft:diamond" scale="2" />
      <ItemImage id="minecraft:redstone" scale="2" />
    </Row>
* Os <ItemLink id="import_bus" />s (13-16, 19) estão nas suas configurações padrão. Têm 2 <ItemLink id="speed_card" />s.
* Os <ItemLink id="inscriber" />s estão nas suas configurações padrão. Têm a [prensa](../items-blocks-machines/presses.md) relevante,
   e 4 <ItemLink id="speed_card" />s.
   <Row>
     <ItemImage id="silicon_press" scale="2" />
     <ItemImage id="logic_processor_press" scale="2" />
     <ItemImage id="calculation_processor_press" scale="2" />
     <ItemImage id="engineering_processor_press" scale="2" />
   </Row>

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para o barril.
2. A primeira [sub-rede de canos](pipe-subnet.md) (laranja) puxa o silício, o pó de redstone e o ingrediente do processador relevante
   (Barra de Ouro, Cristal de Quartzo Certus ou Diamante) do barril e os coloca no <ItemLink id="inscriber" /> relevante.
3. Os primeiros quatro <ItemLink id="inscriber" />s fazem o <ItemLink id="printed_silicon" /> e o <ItemLink id="printed_logic_processor" />,
   <ItemLink id="printed_calculation_processor" /> ou <ItemLink id="printed_engineering_processor" />.
4. A segunda e a terceira [sub-redes de canos](pipe-subnet.md) (verde) tiram os circuitos impressos dos primeiros quatro <ItemLink id="inscriber" />s
    e os colocam no quinto <ItemLink id="inscriber" />, de montagem final.
5. O quinto <ItemLink id="inscriber" /> monta o [processador](../items-blocks-machines/processors.md).
6. A quarta [sub-rede de canos](pipe-subnet.md) (roxa) coloca o processador no provedor de padrões, devolvendo-o à rede principal.
