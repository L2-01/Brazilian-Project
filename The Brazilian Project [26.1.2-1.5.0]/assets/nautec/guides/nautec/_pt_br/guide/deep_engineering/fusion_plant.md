---
navigation:
  title: Usina de Fusão
  icon: nautec:fusion_controller
  position: 8
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:fusion_controller
  - nautec:fusion_casing
  - nautec:aquamarine_structural_glass
  - nautec:laser_injector
  - nautec:fusion_collector
  - nautec:containment_coil
  - nautec:fusion_port
---

# <Color id="light_purple">Usina de Fusão</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="fusion_controller" scale="2"/>
    <ItemImage id="laser_injector" scale="2"/>
    <ItemImage id="containment_coil" scale="2"/>
  </Row>
  Um reator de fusão a laser construído em torno de um Cristal de Prismarinho Cultivado. Queima Água Salgada e produz Forge Energy (FE) para máquinas de outros mods.
</Column>

Injetores de Laser disparam feixes no coração de cristal. O cristal os dispara adiante como feixes de plasma para dois Coletores de Fusão, e o plasma funde Água Salgada em FE. Uma câmara pequena produz cerca de 20.000 FE/t; uma grande com um conjunto completo de Bobinas de Contenção produz 300.000 FE/t, e cristais satélites nos seus cantos a levam até 700.000 FE/t.

***

## <Color id="gold">O que Ela Precisa</Color>

* Um Cristal de Prismarinho Cultivado, crescido como descrito em [Cultivo de Cristais](crystal_cultivation.md). O coração tem que ser cultivado.
* Feixes de laser com pureza 2.0 ou maior. Pureza 3.0 dá a saída completa, então as usinas mais fortes são alimentadas através de outro cristal. Uma [Célula de Combustível Bacteriana](nautec:aquatic_biology/bacterial_fuel_cell.md) no seu melhor (2.5) dá cinco sextos da saída total.
* Um suprimento constante de Água Salgada de [Drenos do Mar Profundo](nautec:laser_chemistry/drain.md).
* As peças abaixo. O JEI mostra suas receitas: levam Revestimento de Aço Profundo, Ouro Atlântico, Pérolas de Ender, Cristais de Prismarinho Impecáveis e, para o controlador, uma Estrela do Nether.

***

## <Color id="gold">Construindo a Câmara</Color>

O cristal fica no meio de uma caixa quadrada e oca. Por dentro, a caixa é exatamente tão alta quanto o cristal (6 blocos) e tem 3, 5, 7 ou 9 blocos de largura e profundidade. As paredes, o piso e o teto têm um bloco de espessura ao redor daquele espaço.

<GameScene zoom="2.5" background="#333333" interactive={true}>
  <Block id="nautec:fusion_casing" x="0" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="1" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="2" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="3" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="0" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="0" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="0" z="1"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="1"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="0" z="2"/>
  <Block id="nautec:fusion_collector" x="2" y="0" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="0" z="2"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="2"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="3"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="0" z="3"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="0" z="3"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="0" z="3"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="1" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="2" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="3" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="1" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="1" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="1" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="1" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="1" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="1" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="2" z="0"/>
  <Block id="nautec:containment_coil" x="1" y="2" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="2" z="0"/>
  <Block id="nautec:containment_coil" x="3" y="2" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="2" z="0"/>
  <Block id="nautec:fusion_port" x="0" y="2" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="2" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="2" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="2" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="2" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="3" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="3" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="3" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="3" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="3" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="3" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="4" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="4" z="1"/>
  <Block id="nautec:laser_injector" x="0" y="4" z="2" p:facing="east"/>
  <Block id="nautec:laser_injector" x="4" y="4" z="2" p:facing="west"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="4" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="4" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="4" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="5" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="5" z="0"/>
  <Block id="nautec:fusion_controller" x="2" y="5" z="0" p:facing="north"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="5" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="5" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="5" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="5" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="5" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="5" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="5" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="6" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="6" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="6" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="6" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="6" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="6" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="1" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="2" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="3" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="1"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="1"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="2"/>
  <Block id="nautec:fusion_collector" x="2" y="7" z="2"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="2"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="3"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="1" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="2" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="3" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="4"/>
  <BoxAnnotation min="2 1 2" max="3 7 3" color="#52e8ff" thickness="0.6">
    O Cristal de Prismarinho Cultivado fica aqui, preenchendo a câmara do piso ao teto.
  </BoxAnnotation>
  <BlockAnnotation x="2" y="5" z="0" color="#ffd86b">
    Controlador de Fusão, numa parede lateral, voltado para fora.
  </BlockAnnotation>
  <BlockAnnotation x="0" y="4" z="2" color="#52e8ff">
    Injetor de Laser, no meio de uma parede lateral, na altura do núcleo do cristal, apontado para ele.
  </BlockAnnotation>
  <BlockAnnotation x="2" y="0" z="2" color="#b8a6ff">
    Coletor de Fusão, no meio do piso. Outro vai no meio do teto.
  </BlockAnnotation>
  <BlockAnnotation x="1" y="2" z="0" color="#ffd86b">
    Bobina de Contenção, em qualquer ponto de uma parede, piso ou teto.
  </BlockAnnotation>
  <BlockAnnotation x="0" y="2" z="1" color="#8cc4f2">
    Porta de Fusão, em qualquer ponto de uma parede, piso ou teto.
  </BlockAnnotation>
  <IsometricCamera yaw="135" pitch="25"/>
</GameScene>

A cena omite duas paredes e o teto para você poder ver dentro.

* <ItemLink id="fusion_casing"/> vai em todas as bordas da caixa.
* O resto das paredes, piso e teto pode ser <ItemLink id="aquamarine_structural_glass"/>, Revestimento de Fusão, Bobinas de Contenção ou Portas de Fusão. O vidro deixa você assistir ao plasma.
* Um <ItemLink id="fusion_collector"/> vai no meio do teto e outro no meio do piso, alinhados com o cristal.
* Um <ItemLink id="laser_injector"/> vai no meio de qualquer parede lateral, na altura do núcleo do cristal (o quarto bloco a partir da base). Coloque-o olhando para dentro da câmara para que ele aponte para o cristal. Cabem até quatro, um por parede.
* O <ItemLink id="fusion_controller"/> vai em qualquer ponto de uma parede lateral afastado das bordas, voltado para fora. Ele procura o cristal 2 a 5 blocos atrás dele.
* Deixe o interior vazio exceto pelo cristal e por quaisquer cristais satélites nos cantos (veja Cristais Satélites abaixo). Ar e água servem, então a usina pode ser construída debaixo d'água.

Clique com o botão direito no controlador, ou em qualquer Porta de Fusão, para abrir sua tela. Enquanto a câmara estiver incompleta, a linha de baixo diz a primeira coisa errada.

***

## <Color id="gold">Operando</Color>

1. **Combustível.** Envie Água Salgada por canos ao controlador ou a uma <ItemLink id="fusion_port"/>. Eles não aceitam mais nada.
2. **Ignição.** Dispare feixes na parte traseira dos injetores, por fora. Uma usina fria absorve seus primeiros 5.000.000 AP como calor antes de produzir qualquer coisa, o que leva cerca de 40 segundos a 6.000 AP/t ou vários minutos com uma alimentação pequena. A barra à esquerda da tela mostra o calor.
3. **Energia.** Quando a barra de calor enche, cada AP injetado produz até 50 FE. Pureza menor reduz isso: pureza 2.4 dá 40 FE por AP.
4. **Queima.** Cada mB de Água Salgada produz 2.000 FE, então uma usina a 300.000 FE/t queima 150 mB por tique. É o que seis Drenos do Mar Profundo bombeiam.
5. **Saída.** O controlador e toda Porta de Fusão empurram FE para qualquer cabo ou máquina encostando neles.

Se o combustível ou o feixe parar, o plasma esfria e a usina esfria de novo ao longo de 20 segundos. Uma pausa curta custa só o calor perdido, que os feixes repõem rápido.

***

## <Color id="gold">Limite de Saída</Color>

A câmara limita quanto plasma ela comporta. Feixes acima do limite são desperdiçados, e a tela mostra **No limite**.

| Interior | Limite |
|---|---|
| 3 x 3 | 20.000 FE/t |
| 5 x 5 | 50.000 FE/t |
| 7 x 7 | 100.000 FE/t |
| 9 x 9 | 200.000 FE/t |

Cada <ItemLink id="containment_coil"/> na carcaça adiciona 4.000 FE/t, até 300.000 FE/t no total. Uma câmara 9 x 9 chega lá com 25 bobinas, alimentada por 6.000 AP/t de feixes de pureza 3.0.

***

## <Color id="gold">Cristais Satélites</Color>

Uma câmara 7 x 7 ou 9 x 9 tem espaço para mais cristais. Coloque um Cristal de Prismarinho Cultivado em cada um dos quatro cantos internos, apoiado no piso e alcançando o teto da mesma forma que o coração. Cada cristal satélite:

* adiciona 100.000 FE/t ao limite e eleva o teto de 300.000 FE/t na mesma quantia
* adiciona 10 FE ao que cada AP injetado produz, então 50 vira 60 com um satélite e 90 com os quatro

<GameScene zoom="2.5" background="#333333" interactive={true}>
  <ImportStructure src="fusion_plant_satellites.nbt" />
  <IsometricCamera yaw="225" pitch="30" />
  <BoxAnnotation min="3.97 0.97 3.97" max="5.03 7.03 5.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Coração.** O Cristal de Prismarinho Cultivado em torno do qual a usina é construída fica aqui, do piso ao teto.
  </BoxAnnotation>
  <BoxAnnotation min="0.97 0.97 0.97" max="2.03 7.03 2.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Cristal satélite.** Um Cristal de Prismarinho Cultivado fica aqui, do piso ao teto.
  </BoxAnnotation>
  <BoxAnnotation min="6.97 0.97 0.97" max="8.03 7.03 2.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Cristal satélite.** Um Cristal de Prismarinho Cultivado fica aqui, do piso ao teto.
  </BoxAnnotation>
  <BoxAnnotation min="0.97 0.97 6.97" max="2.03 7.03 8.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Cristal satélite.** Um Cristal de Prismarinho Cultivado fica aqui, do piso ao teto.
  </BoxAnnotation>
  <BoxAnnotation min="6.97 0.97 6.97" max="8.03 7.03 8.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Cristal satélite.** Um Cristal de Prismarinho Cultivado fica aqui, do piso ao teto.
  </BoxAnnotation>
  <BoxAnnotation min="3.97 4.97 -0.03" max="5.03 6.03 1.03" color="#ffd86b" thickness="0.06" alwaysOnTop={true}>
    **Controlador de Fusão.** Numa parede lateral afastada das bordas, voltado para fora.
  </BoxAnnotation>
  <BoxAnnotation min="3.97 3.97 -0.03" max="5.03 5.03 1.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Injetor de Laser.** No meio de uma parede lateral, na altura do núcleo do cristal, apontado para ele. Esta usina tem um em cada parede.
  </BoxAnnotation>
  <BoxAnnotation min="3.97 -0.03 3.97" max="5.03 1.03 5.03" color="#b8a6ff" thickness="0.06" alwaysOnTop={true}>
    **Coletor de Fusão.** No meio do piso, e outro no meio do teto.
  </BoxAnnotation>
  <BoxAnnotation min="7.97 1.97 0.97" max="9.03 3.03 2.03" color="#ffb74d" thickness="0.06" alwaysOnTop={true}>
    **Bobina de Contenção.** A parede leste tem duas fileiras delas. Cada uma adiciona 4.000 FE/t ao limite.
  </BoxAnnotation>
  <BoxAnnotation min="-0.03 1.97 3.97" max="1.03 3.03 5.03" color="#8cc4f2" thickness="0.06" alwaysOnTop={true}>
    **Porta de Fusão.** Recebe Água Salgada e fornece FE, como o controlador.
  </BoxAnnotation>
</GameScene>

Uma usina 7 x 7 com os quatro satélites: 88 Revestimentos de Fusão nas bordas, 244 Vidros Estruturais de Água-Marinha, 14 Bobinas de Contenção, 4 Injetores de Laser, 2 Coletores de Fusão, uma Porta de Fusão e o controlador, 354 blocos ao todo, mais os cinco cristais. Os cristais são desenhados pelo seu próprio renderizador, então a cena marca seus lugares em vez de mostrá-los. Arraste a cena para girá-la.

| Satélites | Saída máxima | FE por AP | AP/t de pureza 3.0 para alcançá-la |
|---|---|---|---|
| 0 | 300.000 FE/t | 50 | 6.000 |
| 1 | 400.000 FE/t | 60 | 6.667 |
| 2 | 500.000 FE/t | 70 | 7.143 |
| 3 | 600.000 FE/t | 80 | 7.500 |
| 4 | 700.000 FE/t | 90 | 7.778 |

Todo satélite tem que ser cultivado, veja [Cultivo de Cristais](crystal_cultivation.md), então cada um custa mais 10.000.000 AP de crescimento. A Água Salgada ainda produz 2.000 FE por mB, então uma usina a 700.000 FE/t queima 350 mB por tique, a saída de 14 Drenos do Mar Profundo. A linha Satélites da tela mostra quantos a câmara tem, e um cristal em qualquer outro lugar dentro ainda impede a formação.

Os números são `fusionSatelliteContainment` e `fusionSatelliteFePerAp` em `config/nautec-common.toml`.

<Color id="gold">Dica</Color>: um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) pode realimentar a usina com parte do seu próprio FE como AP. Feixes de conversor têm pureza 0, então mande-os por outro Cristal de Prismarinho primeiro para elevá-los a 3.0.
