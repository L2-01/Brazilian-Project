---
navigation:
  title: "Tesla"
  icon: "tesla_coil"
  parent: extended_industrialization:machines.md
categories:
  - machines
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

As bobinas e receptores Tesla permitem transferir EU sem fio a um custo. Uma rede tesla é limitada a um transmissor
(Bobina de Tesla ou Torre Tesla) e não tem limite intrínseco de Receptores Tesla. Cada transmissor terá seu próprio
alcance definido e custos de consumo passivo.

## Calibrador Tesla

Para vincular um transmissor tesla a receptores, primeiro pressione **<KeyBind id="key.sneak" />** + **<KeyBind id="key.use" />**
segurando um Calibrador Tesla sobre o transmissor. Depois, basta pressionar **<KeyBind id="key.use" />** com o calibrador
sobre qualquer receptor para vinculá-lo.

<RecipeFor id="extended_industrialization:tesla_calibrator" />

## Transmissores Tesla

Os transmissores tesla são a fonte de toda rede tesla.

Um transmissor não pode transmitir energia para um receptor que não seja exatamente da mesma voltagem. Por exemplo, uma Bobina de
Tesla com um Casco de Máquina Avançado não pode transmitir para um Receptor Tesla sem casco, mas poderia para um que também tenha um
Casco de Máquina Avançado.

O custo de consumo passivo de EU/t de uma Bobina de Tesla é determinado pela voltagem do casco (ou sua ausência) colocado dentro.

<RecipeFor id="extended_industrialization:tesla_coil" />

A voltagem transmitida por uma Torre Tesla é determinada pelas escotilhas de entrada de energia usadas.

O custo de consumo passivo de EU/t, o limite de transferência e o alcance de uma Torre Tesla são determinados pelos enrolamentos usados. Detalhes
de cada enrolamento são descritos nas suas respectivas dicas.

<Row>
	<GameScene zoom="0.75" interactive={true} fullWidth={false}>
		<MultiblockShape controller="extended_industrialization:tesla_tower" />
	</GameScene>
	<RecipeFor id="extended_industrialization:tesla_tower" />
</Row>

## Receptores Tesla

Os receptores tesla são os destinos da energia transmitida pelo seu transmissor.

O Receptor Tesla armazena a energia recebida e a ejeta pela sua face de saída. A energia também pode ser extraída dele
usando cabos, como você faria com qualquer outro bloco que fornece energia.

<RecipeFor id="extended_industrialization:tesla_receiver" />

A Escotilha Receptora Tesla recebe energia da mesma forma que um Receptor Tesla comum, porém funciona como uma escotilha de
entrada de energia para um multibloco. Em vez de precisar de um receptor e também de uma escotilha de entrada de energia para ejetar,
isso combina os dois numa única escotilha.

<RecipeFor id="extended_industrialization:lv_tesla_receiver_hatch" />
