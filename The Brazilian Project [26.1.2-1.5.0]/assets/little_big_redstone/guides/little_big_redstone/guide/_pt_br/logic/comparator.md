---
navigation:
  title: "Comparador"
  icon: "comparator"
  parent: little_big_redstone:logic.md
  position: 23
categories:
  - logic
item_ids:
  - little_big_redstone:comparator
---

# Comparador

<FloatingColumn width="100" align="right">
	### Analógico
	Os comparadores produzem um valor de sinal de saída igual ao valor comparado. Pode ser o valor constante
	definido nas configurações ou, quando o comparador está definido para passar, o valor da primeira entrada.
</FloatingColumn>

<Recipe id="little_big_redstone:logic/comparator" />

O comparador é um componente lógico que permite comparar a força de sinal de 1 a 10 entradas (B₁ - B₁₀) contra
outra força de sinal (A). A opção de modo do comparador determina se todas ou apenas uma das entradas devem
satisfazer a comparação para a saída ficar LIGADA. Quando a saída está LIGADA, a força do sinal de saída será igual
à força de sinal da configuração de substituição de saída. Quando a substituição de saída está definida para passar,
o sinal de saída será igual à entrada A.

O comparador pode ser configurado para ter uma porta de entrada para a entrada A definindo a força de sinal para
passar. Alternativamente, pode ser configurado para usar um sinal constante na comparação; nesse caso, ele não terá
uma porta de entrada para a entrada A.

Assim como outros componentes lógicos que fazem comparações de força de sinal, o comparador pode ser configurado
para exigir que os valores sejam maiores ou iguais, iguais, ou menores ou iguais à entrada A.

<Row>
	<Column>
		<MicrochipScene color="red" includeToolbar={true}>
			<Logic name="a" x="0" y="4" type="io" data="{config:{direction:'east'}}" hide={true} />
			<Logic name="b" x="16" y="12" type="io" data="{config:{direction:'west'}}" hide={true} />
			<Logic name="comparator" x="48" y="8" type="comparator" />
			<Logic name="output" x="80" y="8" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

			<Wire from="a" fromPort="0" to="comparator" toPort="0" />
			<Wire from="b" fromPort="0" to="comparator" toPort="1" />
			<Wire from="comparator" fromPort="0" to="output" toPort="0" />

			<RedstoneSignal step="0" direction="east" strength="0" />
			<RedstoneSignal step="0" direction="west" strength="0" />

			<RedstoneSignal step="1" direction="east" strength="0" />
			<RedstoneSignal step="1" direction="west" strength="15" />

			<RedstoneSignal step="2" direction="east" strength="15" />
			<RedstoneSignal step="2" direction="west" strength="0" />

			<RedstoneSignal step="3" direction="east" strength="15" />
			<RedstoneSignal step="3" direction="west" strength="15" />
		</MicrochipScene>
	</Column>

	<Column>
		<MicrochipScene color="red" includeToolbar={true}>
			<Logic name="a" x="0" y="0" type="io" data="{config:{direction:'east'}}" hide={true} />
			<Logic name="comparator" x="32" y="0" type="comparator" data="{config:{signal_strength:15}}" />
			<Logic name="output" x="64" y="0" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

			<Wire from="a" fromPort="0" to="comparator" toPort="0" />
			<Wire from="comparator" fromPort="0" to="output" toPort="0" />

			<RedstoneSignal step="0" direction="east" strength="0" />

			<RedstoneSignal step="1" direction="east" strength="10" />

			<RedstoneSignal step="2" direction="east" strength="15" />
		</MicrochipScene>
	</Column>

	<Column>
		<MicrochipScene color="red" includeToolbar={true}>
			<Logic name="a" x="0" y="-5" type="io" data="{config:{direction:'north'}}" hide={true} />
			<Logic name="b" x="0" y="0" type="io" data="{config:{direction:'south'}}" hide={true} />
			<Logic name="c" x="0" y="5" type="io" data="{config:{direction:'east'}}" hide={true} />
			<Logic name="comparator" x="32" y="0" type="comparator" data="{config:{signal_strength:15,inputs:3}}" />
			<Logic name="output" x="64" y="0" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

			<Wire from="a" fromPort="0" to="comparator" toPort="0" />
			<Wire from="b" fromPort="0" to="comparator" toPort="1" />
			<Wire from="c" fromPort="0" to="comparator" toPort="2" />
			<Wire from="comparator" fromPort="0" to="output" toPort="0" />

			<RedstoneSignal step="0" direction="north" strength="10" />
			<RedstoneSignal step="0" direction="south" strength="0" />
			<RedstoneSignal step="0" direction="east" strength="0" />

			<RedstoneSignal step="1" direction="north" strength="10" />
			<RedstoneSignal step="1" direction="south" strength="0" />
			<RedstoneSignal step="1" direction="east" strength="10" />

			<RedstoneSignal step="2" direction="north" strength="10" />
			<RedstoneSignal step="2" direction="south" strength="15" />
			<RedstoneSignal step="2" direction="east" strength="15" />

			<RedstoneSignal step="3" direction="north" strength="15" />
			<RedstoneSignal step="3" direction="south" strength="15" />
			<RedstoneSignal step="3" direction="east" strength="15" />
		</MicrochipScene>
	</Column>
</Row>