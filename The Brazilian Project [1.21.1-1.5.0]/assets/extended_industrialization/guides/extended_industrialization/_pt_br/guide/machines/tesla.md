---
navigation:
  title: "Tesla"
  icon: "tesla_coil"
  parent: extended_industrialization:machines.md
categories:
  - Máquinas
item_ids:
  - extended_industrialization:tesla_calibrator
  - extended_industrialization:tesla_handheld_receiver
  - extended_industrialization:tesla_interdimensional_upgrade
  - extended_industrialization:tesla_coil
  - extended_industrialization:tesla_receiver
  - extended_industrialization:lv_tesla_receiver_hatch
  - extended_industrialization:mv_tesla_receiver_hatch
  - extended_industrialization:hv_tesla_receiver_hatch
  - extended_industrialization:ev_tesla_receiver_hatch
  - extended_industrialization:superconductor_tesla_receiver_hatch
  - extended_industrialization:tesla_tower
  - extended_industrialization:aluminum_tesla_winding
  - extended_industrialization:annealed_copper_tesla_winding
  - extended_industrialization:copper_tesla_winding
  - extended_industrialization:electrum_tesla_winding
  - extended_industrialization:superconductor_tesla_winding
---

# Tesla

Bobinas e receptores Tesla permitem transferir EU sem fio a um custo. Uma rede tesla é limitada a um transmissor
(Bobina de Tesla ou Torre Tesla) e não tem limite intrínseco de Receptores Tesla. Cada transmissor terá seu próprio
alcance definido e seus custos de consumo passivo.

## Calibrador Tesla

Para vincular um transmissor tesla a receptores, primeiro pressione **<KeyBind id="key.sneak" />** + **<KeyBind id="key.use" />**
enquanto segura um Calibrador Tesla no transmissor. Depois, basta pressionar **<KeyBind id="key.use" />** com o calibrador
em qualquer receptor para vinculá-lo.

<RecipeFor id="extended_industrialization:tesla_calibrator" />

## Transmissores Tesla

Os transmissores tesla são a fonte de toda rede tesla.

Um transmissor não consegue transmitir energia para um receptor que não seja exatamente da mesma voltagem. Por exemplo, uma
Bobina de Tesla com um Mecanismo de Máquina Avançada não consegue transmitir para um Receptor Tesla sem mecanismo, mas
consegue para um que também tenha um Mecanismo de Máquina Avançada.

O custo de consumo passivo de EU/t de uma Bobina de Tesla é determinado pela voltagem do mecanismo (ou pela ausência dele)
colocado dentro dela.

<RecipeFor id="extended_industrialization:tesla_coil" />

A voltagem transmitida por uma Torre Tesla é determinada pelas escotilhas de entrada de energia usadas.

O custo de consumo passivo de EU/t, o limite de transferência e o alcance de uma Torre Tesla são determinados pelos
enrolamentos usados. Os detalhes de cada enrolamento são descritos em seus respectivos tooltips.

<Row>
	<GameScene zoom="0.75" interactive={true} fullWidth={false}>
		<MultiblockShape controller="extended_industrialization:tesla_tower" />
	</GameScene>
	<RecipeFor id="extended_industrialization:tesla_tower" />
</Row>

## Receptores Tesla

Os receptores tesla são os destinos da energia transmitida pelo seu transmissor.

O Receptor Tesla armazena a energia recebida e a ejeta pela sua face de saída. Energia também pode ser extraída dele
usando cabos, como você faria com qualquer outro bloco emissor de energia.

<RecipeFor id="extended_industrialization:tesla_receiver" />

A Escotilha Receptora Tesla recebe energia da mesma forma que um Receptor Tesla normal, porém funciona como uma escotilha
de entrada de energia para um multibloco. Em vez de precisar de um receptor e ainda de uma escotilha de entrada de energia
para ejetar, isso combina os dois em apenas uma escotilha.

<RecipeFor id="extended_industrialization:lv_tesla_receiver_hatch" />