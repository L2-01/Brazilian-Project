---
navigation:
  title: "Porta de E/S"
  icon: "io"
  parent: little_big_redstone:logic.md
  position: 10
categories:
  - logic
item_ids:
  - little_big_redstone:io
---

# Porta de E/S

<FloatingColumn width="100" align="right">
	### Analógico
	As portas de E/S produzem um valor de sinal de saída igual ao valor do sinal de entrada.
</FloatingColumn>

<Recipe id="little_big_redstone:logic/io" />

As portas de E/S são como você pode inserir e emitir sinais de redstone de e para os seus circuitos. Quando
portas de E/S são colocadas num circuito, você poderá ver faces de redstone nas laterais do bloco de microchip que
podem aceitar ou fornecer um sinal de redstone.

<br />

Cada porta de E/S tem uma direção à qual ela se vincula: <Color color="#4CFF00">norte</Color>,
<Color color="#0094FF">sul</Color>, <Color color="#FF0000">leste</Color>, <Color color="#FF6A00">oeste</Color>,
<Color color="#FFFFFF">acima</Color> e <Color color="#FFD800">abaixo</Color>. A cor de cada direção pode ser vista na
lateral de um microchip ao agachar e olhar para ele.

**NOTA:** Cada direção só pode atuar como entrada ou como saída, não como ambas. Se portas de E/S forem colocadas
num circuito de modo que uma seja entrada e a outra saída na mesma face — nenhuma das portas funcionará e um
indicador de aviso será exibido.

<br />

Você também pode configurar a força de sinal de uma porta de E/S. Quando a porta está no modo de entrada, o sinal
de redstone inserido deve atingir ou exceder o sinal para que a porta forneça uma saída LIGADA. Quando a porta está
no modo de saída e a porta de entrada recebe um sinal LIGADO, o sinal de redstone fornecido será igual à força de
sinal definida.

<Row>
	<Column>
		<MicrochipScene color="red" marginWidth="16" includeToolbar={true}>
			<Logic name="input" x="0" y="0" type="io" />
			<Logic name="output" x="32" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

			<Wire from="input" fromPort="0" to="output" toPort="0" />
		</MicrochipScene>
	</Column>
	
	<Column>
		<MicrochipScene color="red" marginWidth="16" includeToolbar={true}>
			<Logic name="input" x="0" y="0" type="io" hide={true} />
			<Logic name="output" x="32" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" />
		
			<Wire from="input" fromPort="0" to="output" toPort="0" />
		</MicrochipScene>
	</Column>
</Row>