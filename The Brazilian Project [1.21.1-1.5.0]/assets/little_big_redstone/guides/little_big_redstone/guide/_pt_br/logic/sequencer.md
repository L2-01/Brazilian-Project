---
navigation:
  title: "Sequenciador"
  icon: "sequencer"
  parent: little_big_redstone:logic.md
  position: 19
categories:
  - logic
item_ids:
  - little_big_redstone:sequencer
---

# Sequenciador

<FloatingColumn width="100" align="right">
	### Analógico
	Os Sequenciadores produzem um valor de sinal de saída igual ao valor do sinal de entrada. No caso dos
	sequenciadores, o valor de entrada não precisa estar LIGADO em todas as circunstâncias para a saída ficar LIGADA.
	Nesse caso, o valor da entrada LIGADA que levou à saída LIGADA será usado na saída.
</FloatingColumn>

<Row>
	<Column>
		<RecipeFor id="sequencer" />
	</Column>

	<Column>
		<GameScene zoom="1.48" padding="3" interactive={true}>
			<ImportStructure src="../assets/structures/sequencer.snbt" />
			<BoxAnnotation min="2 1 0" max="3 1.5 1" color="#FFFFFF">
				O sequenciador é bem mais flexível que um repetidor, mas é semelhante em conceito.
			</BoxAnnotation>
			<IsometricCamera yaw="150" pitch="30" />
		</GameScene>
	</Column>
</Row>

> **Nota:** No Minecraft, há 20 tiques por segundo da vida real.

O sequenciador é um componente lógico que permite atrasar sinais com controle preciso.

Há três modos diferentes que podem ser usados: Fraco, Forte e Contador (veja as seções abaixo para mais 
informações). O sequenciador tem um contador interno que vai de 0 ao atraso definido (padrão 20). Dependendo do
modo selecionado, o contador incrementará ou decrementará de forma diferente. Quando o contador do sequenciador
está no máximo, a saída fica LIGADA; caso contrário, fica DESLIGADA.

O sequenciador pode ser configurado para resetar seu contador interno para 0 ao atingir o valor máximo. Nesse
momento, ele emitirá um sinal LIGADO por exatamente 1 tique.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input" x="0" y="0" type="io" hide={true} />
	<Logic name="sequencer" x="32" y="0" type="sequencer" data="{config:{delay:30,auto_reset:true}}" />
	<Logic name="output" x="80" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal direction="north" strength="15" />
</MicrochipScene>

Além disso, o sequenciador pode ser configurado para ter uma segunda porta de entrada. Sempre que essa segunda
porta de entrada estiver LIGADA, o contador interno do sequenciador será resetado para 0.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input1" x="0" y="12" type="io" data="{config:{direction:'east'}}" hide={true} />
	<Logic name="input2" x="0" y="20" type="io" data="{config:{direction:'west'}}" hide={true} />
	<Logic name="sequencer" x="32" y="16" type="sequencer" data="{config:{delay:50,reset_port:true}}" />
	<Logic name="output" x="80" y="16" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input1" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="input2" fromPort="0" to="sequencer" toPort="1" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal step="0" direction="east" strength="15" />
	<RedstoneSignal step="1" direction="east" strength="0" />
	<RedstoneSignal step="2" direction="east" strength="0" />
	<RedstoneSignal step="3" direction="west" strength="15" />
	<RedstoneSignal step="4" direction="west" strength="0" />
</MicrochipScene>

<br />

### Modo Fraco

Depois que um sinal LIGADO é passado à primeira porta de entrada do sequenciador, independentemente da duração
do sinal, o sequenciador incrementará até atingir o atraso configurado. Use este modo quando quiser simplesmente
atrasar um sinal por um tempo determinado.

Abaixo está um exemplo de um sequenciador configurado para atrasar 100 tiques (5 segundos) e resetar
automaticamente ao completar. O sinal de entrada é um tanto breve, mas o sequenciador continua incrementando,
independentemente de a entrada permanecer ligada ou não.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input" x="0" y="0" type="io" hide={true} />
	<Logic name="sequencer" x="32" y="0" type="sequencer" data="{config:{delay:100,auto_reset:true}}" />
	<Logic name="output" x="80" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal step="0" direction="north" strength="15" />
	<RedstoneSignal step="1" direction="north" strength="0" />
	<RedstoneSignal step="2" direction="north" strength="0" />
	<RedstoneSignal step="3" direction="north" strength="0" />
</MicrochipScene>

<br />

### Modo Forte

Enquanto um sinal LIGADO for passado à primeira porta de entrada do sequenciador, o sequenciador incrementará.
No entanto, se o sinal cessar, o sequenciador decrementará.

Abaixo estão exemplos de um sequenciador configurado para atrasar 100 tiques (5 segundos).

Este tem um sinal LIGADO longo o suficiente para o sequenciador atingir seu estado LIGADO, e depois fica
desligado por igual tempo, de modo que retorna ao seu estado original.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input" x="0" y="0" type="io" hide={true} />
	<Logic name="sequencer" x="32" y="0" type="sequencer" data="{config:{delay:100,mode:'strong'}}" />
	<Logic name="output" x="80" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal step="0" direction="north" strength="15" />
	<RedstoneSignal step="1" direction="north" strength="15" />
	<RedstoneSignal step="2" direction="north" strength="15" />
	<RedstoneSignal step="3" direction="north" strength="15" />
	<RedstoneSignal step="4" direction="north" strength="0" />
	<RedstoneSignal step="5" direction="north" strength="0" />
	<RedstoneSignal step="6" direction="north" strength="0" />
	<RedstoneSignal step="7" direction="north" strength="0" />
</MicrochipScene>

Este tem um sinal LIGADO apenas tempo suficiente para o sequenciador chegar mais ou menos à metade. Então o
sinal de entrada desliga, e ele decrementa todo o caminho de volta ao estado original. Por isso, ele nunca atinge o
estado completo e a saída fica sempre DESLIGADA.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input" x="0" y="0" type="io" hide={true} />
	<Logic name="sequencer" x="32" y="0" type="sequencer" data="{config:{delay:100,mode:'strong'}}" />
	<Logic name="output" x="80" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal step="0" direction="north" strength="15" />
	<RedstoneSignal step="1" direction="north" strength="15" />
	<RedstoneSignal step="2" direction="north" strength="0" />
	<RedstoneSignal step="3" direction="north" strength="0" />
</MicrochipScene>

<br />

### Modo Contador

Enquanto um sinal LIGADO for passado à primeira porta de entrada do sequenciador, o sequenciador incrementará.
A única forma de o sequenciador diminuir neste modo é sendo resetado, seja pela opção de reset automático ou pela
porta de reset.

Abaixo está um exemplo de um sequenciador configurado para atrasar 100 tiques (5 segundos) e resetar
automaticamente ao completar. A entrada liga e desliga com frequência, mas o sequenciador não decrementa quando a
entrada está DESLIGADA.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input" x="0" y="0" type="io" hide={true} />
	<Logic name="sequencer" x="32" y="0" type="sequencer" data="{config:{delay:100,mode:'counter',auto_reset:true}}" />
	<Logic name="output" x="80" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal step="0" direction="north" strength="15" />
	<RedstoneSignal step="1" direction="north" strength="0" />
</MicrochipScene>

Abaixo está um exemplo de um sequenciador configurado para atrasar 5 tiques e resetar automaticamente ao
completar. A entrada é limitada por um [Limitador de Pulso](pulse_throttler.md) para impedir que o sinal de entrada
dure mais que um único tique. Assim, o sequenciador só emitirá um sinal de saída por um único tique depois que 5
entradas LIGADAS distintas tiverem sido recebidas.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="input" x="0" y="0" type="io" hide={true} />
	<Logic name="pulse_throttler" x="32" y="0" type="pulse_throttler" />
	<Logic name="sequencer" x="64" y="0" type="sequencer" data="{config:{delay:5,mode:'counter',auto_reset:true}}" />
	<Logic name="output" x="112" y="0" type="io" data="{config:{input:false,direction:'south',signal_strength:15}}" hide={true} />

	<Wire from="input" fromPort="0" to="pulse_throttler" toPort="0" />
	<Wire from="pulse_throttler" fromPort="0" to="sequencer" toPort="0" />
	<Wire from="sequencer" fromPort="0" to="output" toPort="0" />

	<RedstoneSignal step="0" direction="north" strength="15" />
	<RedstoneSignal step="1" direction="north" strength="0" />
</MicrochipScene>