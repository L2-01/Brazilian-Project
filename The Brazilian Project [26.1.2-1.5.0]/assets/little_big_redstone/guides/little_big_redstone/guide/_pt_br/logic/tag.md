---
navigation:
  title: "Etiqueta"
  icon: "tag"
  parent: little_big_redstone:logic.md
  position: 12
categories:
  - logic
item_ids:
  - little_big_redstone:tag
---

# Etiqueta

<FloatingColumn width="100" align="right">
	### Analógico
	As Etiquetas produzem um valor de sinal de saída igual ao valor do sinal de entrada. No caso de múltiplas
	entradas (como com um limiar > 1), o maior valor de sinal é usado.
</FloatingColumn>

<Recipe id="little_big_redstone:logic/tag" />

As etiquetas permitem enviar sinais entre circuitos sem fios. As etiquetas têm dois modos, sensor e emissor. Os
sensores são como você recebe sinais, e os emissores são como você transmite sinais.

<br />

Cada etiqueta pode ter um rótulo definido. Para que um sensor consiga detectar um emissor, ambos devem ter o
mesmo rótulo. Os rótulos **diferenciam maiúsculas de minúsculas**. Os rótulos não são obrigatórios e, se deixados
vazios, só corresponderão a outras etiquetas que também tenham um rótulo vazio.

Um sensor tem uma configuração de limiar, que determina quantos emissores ele deve detectar para produzir uma
saída LIGADA. Por exemplo, se você tem um sensor com limiar 2 e um rótulo "something", precisa ter 2 emissores
também com o rótulo "something" LIGADOS para que o sensor tenha uma saída LIGADA.

Note que os sensores podem detectar emissores no mesmo circuito.

<br />

Os sensores também podem escolher se são globais ou não. Em outras palavras, se detectam emissores colocados por
outra pessoa num servidor multiplayer. Por padrão, os sensores não são globais — ou seja, só detectarão os seus
emissores.

<br />

Abaixo está um exemplo de um emissor e um sensor de etiqueta com o mesmo rótulo. Como compartilham um rótulo e o
sensor tem limiar de apenas 1, quando o emissor está LIGADO, o sensor também fica LIGADO.

<Row>
	<Column>
		<MicrochipScene color="red" marginWidth="16" includeToolbar={true}>
			<Logic name="input1" x="0" y="0" type="io" hide={true} />
			<Logic name="output1" x="32" y="0" type="tag" data="{config:{input:false,label:'something'}}" />

			<Logic name="tag2" x="64" y="0" type="tag" data="{config:{label:'something'}}" />
			<Logic name="input2" x="64" y="0" type="io" data="{config:{direction:'south'}}" hide={true} />
			<Logic name="output2" x="96" y="0" type="io" data="{config:{input:false,direction:'east',signal_strength:15}}" hide={true} />

			<Wire from="input1" fromPort="0" to="output1" toPort="0" />
			<Wire from="input2" fromPort="0" to="output2" toPort="0" />

			<RedstoneSignal step="0" direction="north" strength="15" />
			<RedstoneSignal step="0" direction="south" strength="15" />
			<RedstoneSignal step="1" direction="north" strength="0" />
			<RedstoneSignal step="1" direction="south" strength="0" />
		</MicrochipScene>
	</Column>
</Row>

Note que abaixo as duas etiquetas têm rótulos diferentes. Por isso, o sensor não detecta o emissor.

<Row>
	<Column>
		<MicrochipScene color="red" marginWidth="16" includeToolbar={true}>
			<Logic name="input1" x="0" y="0" type="io" hide={true} />
			<Logic name="output1" x="32" y="0" type="tag" data="{config:{input:false,label:'something'}}" />

			<Logic name="input2" x="64" y="0" type="tag" data="{config:{label:'something_else'}}" />
			<Logic name="output2" x="96" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

			<Wire from="input1" fromPort="0" to="output1" toPort="0" />
			<Wire from="input2" fromPort="0" to="output2" toPort="0" />

			<RedstoneSignal step="0" direction="north" strength="15" />
			<RedstoneSignal step="1" direction="north" strength="0" />
		</MicrochipScene>
	</Column>
</Row>