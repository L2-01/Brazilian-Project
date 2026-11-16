---
navigation:
  title: "Bateria"
  icon: "battery"
  parent: little_big_redstone:logic.md
  position: 13
categories:
  - logic
item_ids:
  - little_big_redstone:battery
---

# Bateria

<FloatingColumn width="100" align="right">
	### Analógico
	O sinal de saída da bateria será igual à força de sinal configurada. O sinal não excederá a faixa de 0 a 15.
</FloatingColumn>

<Row>
	<Column>
		<Recipe id="little_big_redstone:logic/battery" />
	</Column>

	<Column>
		<GameScene zoom="1.48" padding="3" interactive={true}>
			<ImportStructure src="../assets/structures/battery.snbt" />
			<IsometricCamera yaw="150" pitch="30" />
		</GameScene>
	</Column>
</Row>

A bateria é um componente lógico bem simples. A força do sinal de saída será sempre igual ao valor de força de
sinal configurado.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="battery" x="0" y="0" type="battery" />
	<Logic name="output" x="32" y="0" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

	<Wire from="battery" fromPort="0" to="output" toPort="0" />
</MicrochipScene>