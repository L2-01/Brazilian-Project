---
navigation:
  title: Geradores Oceânicos
  icon: nautec:tidal_rotor
  position: 16
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:tidal_rotor
  - nautec:thermal_vent_tap
---

# <Color id="light_purple">Geradores Oceânicos</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="tidal_rotor" scale="2"/>
    <ItemImage id="thermal_vent_tap" scale="2"/>
  </Row>
  Geradores que transformam o oceano em Forge Energy (FE) para as máquinas de outros mods.
</Column>

O NauTec tem quatro geradores de FE. O Rotor de Marés roda com o próprio oceano, o Captador Hidrotermal ferve Água Salgada sobre o calor do leito marinho, o [Dínamo de Combustão](nautec:getting_started/combustion_dynamo.md) queima petróleo cultivado por bactérias, e a [Usina de Fusão](nautec:deep_engineering/fusion_plant.md) é o reator de fim de jogo. Todo gerador empurra sua FE para qualquer cabo ou máquina encostada nele.

***

<Row>
  <ItemImage id="tidal_rotor"/>
  ### <Color id="aqua">Rotor de Marés</Color>
</Row>

Uma turbina de ferro fundido para o início do jogo, de 40 a 80 FE/t sem combustível.

Coloque-a submersa num bioma de oceano. Ela produz 40 FE/t no ponto mais apertado que funciona e mais quanto mais aberta e profunda for a água, chegando a 80 FE/t com água em todos os lados e 24 blocos de água acima. Um rotor enterrado no leito marinho ou apertado contra outros rotores produz menos, então espalhe um campo deles pelo fundo do oceano em vez de empilhá-los.

***

<Row>
  <ItemImage id="thermal_vent_tap"/>
  ### <Color id="aqua">Captador Hidrotermal</Color>
</Row>

Um gerador de meio de jogo que ferve Água Salgada sobre magma ou lava, de 350 a 1.250 FE/t.

* **Calor.** A derivação verifica os nove blocos diretamente abaixo dela à procura de Blocos de Magma ou lava. Um bloco quente dá 350 FE/t, e os nove dão 1.250 FE/t. Uma <ItemLink id="hydrothermal_vent"/> de um campo de fontes conta sozinha como três blocos quentes. No bioma Fontes hidrotermais o leito marinho adiciona mais três, desde que haja pelo menos um bloco quente.
* **Combustível.** Conecte Água Salgada por qualquer lado. A derivação ferve 10 mB por tique enquanto roda, então um [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) mantém duas derivações funcionando com folga.
* **Sal.** A cada 1.000 mB fervidos sobra um <ItemLink id="salt"/>. A derivação o empurra para qualquer baú ou inventário encostado nela, ou você pode puxá-lo de qualquer lado com um cano ou funil. Um slot cheio para o sal, não a energia.

O Jade mostra a produção de cada gerador e o que está faltando a ele.

<RecipeFor id="tidal_rotor"/>

<RecipeFor id="thermal_vent_tap"/>