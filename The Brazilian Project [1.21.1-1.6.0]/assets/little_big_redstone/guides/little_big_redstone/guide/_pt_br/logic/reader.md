---
navigation:
  title: "Leitor"
  icon: "reader"
  parent: little_big_redstone:logic.md
  position: 11
categories:
  - logic
item_ids:
  - little_big_redstone:reader
---

# Leitor

<FloatingColumn width="100" align="right">
	### Analógico
	No modo comparador, o leitor produzirá um valor de saída igual à força de sinal analógico que o bloco emite para
	comparadores. Caso contrário, os leitores só produzem um valor de saída de 0 (DESLIGADO) ou 1 (LIGADO).
</FloatingColumn>

<RecipeFor id="reader" />

O leitor é um componente lógico que não tem entrada dentro do circuito. Em vez disso, o leitor emite um sinal
baseado no nível de preenchimento do contêiner diretamente adjacente ao microchip na direção em que ele está
configurado.

Os contêineres válidos para o leitor consistem em contêineres de itens (baús, barris, fornalhas etc.), contêineres
de fluido (tanques de fluido de mods) e contêineres de energia (contêineres de FE de mods, como baterias). Por
padrão ele lê o preenchimento de itens, mas você pode mudar isso no menu de configuração da lógica.

Um leitor pode ser configurado para detectar um certo limite do nível de conteúdo de um contêiner para que ele
tenha uma saída LIGADA. Esse limite pode ser uma porcentagem ou um valor constante. Para usar uma porcentagem,
basta incluir um % no fim do valor.

Abaixo está um exemplo de um leitor sendo usado para acender uma lâmpada de redstone quando o baú está pelo
menos 50% cheio.

<PaddedBox left="5" top="5">
	<Row>
		<Column>
			<PaddedBox top="4">
				<GameScene zoom="2" padding="0">
					<Block id="minecraft:chest" />
					<BlockAnnotation>
						O baú está pelo menos 50% cheio
					</BlockAnnotation>
					<Block id="red_microchip" x="-1" />
					<Block id="minecraft:redstone_lamp" x="-2" p:lit="true" />
					<IsometricCamera yaw="200" pitch="30" />
				</GameScene>
			</PaddedBox>
		</Column>
	
		<Column>
			<MicrochipScene color="red" padding="0" marginWidth="16">
				<Logic name="reader" x="0" y="0" type="reader" data="{config:{direction:'west'}}" />
				<Logic name="output" x="32" y="0" type="io" data="{config:{direction:'east',input:false,signal_strength:15}}" />
	
				<Wire from="reader" fromPort="0" to="output" toPort="0" powered="1" />
			</MicrochipScene>
		</Column>
	</Row>
	
	<Row>
		<Column>
			<PaddedBox top="4">
				<GameScene zoom="2" padding="0">
					<Block id="minecraft:chest" />
					<BlockAnnotation>
						O baú está menos de 50% cheio
					</BlockAnnotation>
					<Block id="red_microchip" x="-1" />
					<Block id="minecraft:redstone_lamp" x="-2" p:lit="false" />
					<IsometricCamera yaw="200" pitch="30" />
				</GameScene>
			</PaddedBox>
		</Column>
	
		<Column>
			<MicrochipScene color="red" padding="0" marginWidth="16">
				<Logic name="reader" x="0" y="0" type="reader" data="{config:{direction:'west'}}" />
				<Logic name="output" x="32" y="0" type="io" data="{config:{direction:'east',input:false,signal_strength:15}}" />
	
				<Wire from="reader" fromPort="0" to="output" toPort="0" />
			</MicrochipScene>
		</Column>
	</Row>
</PaddedBox>