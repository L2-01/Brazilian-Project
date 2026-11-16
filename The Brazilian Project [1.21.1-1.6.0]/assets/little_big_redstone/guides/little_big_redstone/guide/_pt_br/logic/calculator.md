---
navigation:
  title: "Calculador"
  icon: "calculator"
  parent: little_big_redstone:logic.md
  position: 24
categories:
  - logic
item_ids:
  - little_big_redstone:calculator
---

# Calculador

<FloatingColumn width="100" align="right">
	### Analógico
	O sinal de saída do calculador será igual ao valor total calculado de todas as entradas. O sinal não excederá a
	faixa de 0 a 15.
</FloatingColumn>

<RecipeFor id="calculator" />

O calculador pode receber de 2 a 10 entradas. Os sinais de entrada serão somados ou subtraídos dependendo do modo
selecionado. O sinal de saída é então o resultado total calculado das entradas.

<Row>
	<Column>
		<MicrochipScene color="red" includeToolbar={true}>
			<Logic name="a" x="0" y="4" type="io" data="{config:{direction:'east'}}" hide={true} />
			<Logic name="b" x="16" y="12" type="io" data="{config:{direction:'west'}}" hide={true} />
			<Logic name="calculator" x="48" y="8" type="calculator" />
			<Logic name="output" x="80" y="8" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

			<Wire from="a" fromPort="0" to="calculator" toPort="0" />
			<Wire from="b" fromPort="0" to="calculator" toPort="1" />
			<Wire from="calculator" fromPort="0" to="output" toPort="0" />

			<RedstoneSignal step="0" direction="east" strength="0" />
			<RedstoneSignal step="0" direction="west" strength="0" />

			<RedstoneSignal step="1" direction="east" strength="1" />
			<RedstoneSignal step="1" direction="west" strength="1" />

			<RedstoneSignal step="2" direction="east" strength="0" />
			<RedstoneSignal step="2" direction="west" strength="0" />

			<RedstoneSignal step="3" direction="east" strength="10" />
			<RedstoneSignal step="3" direction="west" strength="5" />
		</MicrochipScene>
	</Column>

	<Column>
		<MicrochipScene color="red" includeToolbar={true}>
			<Logic name="a" x="0" y="4" type="io" data="{config:{direction:'east'}}" hide={true} />
			<Logic name="b" x="16" y="12" type="io" data="{config:{direction:'west'}}" hide={true} />
			<Logic name="calculator" x="48" y="8" type="calculator" data="{config:{mode:'subtraction'}}" />
			<Logic name="output" x="80" y="8" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

			<Wire from="a" fromPort="0" to="calculator" toPort="0" />
			<Wire from="b" fromPort="0" to="calculator" toPort="1" />
			<Wire from="calculator" fromPort="0" to="output" toPort="0" />

			<RedstoneSignal step="0" direction="east" strength="0" />
			<RedstoneSignal step="0" direction="west" strength="0" />

			<RedstoneSignal step="1" direction="east" strength="2" />
			<RedstoneSignal step="1" direction="west" strength="1" />

			<RedstoneSignal step="2" direction="east" strength="0" />
			<RedstoneSignal step="2" direction="west" strength="0" />

			<RedstoneSignal step="3" direction="east" strength="10" />
			<RedstoneSignal step="3" direction="west" strength="5" />
		</MicrochipScene>
	</Column>
</Row>

Note que a ordem das entradas é levada em conta. Isso significa que, no modo de subtração, se você tiver um valor
menor primeiro e um valor maior depois, a saída será 0. Isso porque o sinal não pode ficar negativo. Por exemplo,
num calculador em modo de subtração, se a entrada A for 5 e a entrada B for 10, o valor calculado seria -5. No
entanto, o sinal de saída seria 0, e portanto desligado.