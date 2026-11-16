---
navigation:
  title: "Microchips"
  icon: "red_microchip"
  position: 1
item_ids:
  - little_big_redstone:white_microchip
  - little_big_redstone:light_gray_microchip
  - little_big_redstone:gray_microchip
  - little_big_redstone:black_microchip
  - little_big_redstone:brown_microchip
  - little_big_redstone:red_microchip
  - little_big_redstone:orange_microchip
  - little_big_redstone:yellow_microchip
  - little_big_redstone:lime_microchip
  - little_big_redstone:green_microchip
  - little_big_redstone:cyan_microchip
  - little_big_redstone:light_blue_microchip
  - little_big_redstone:blue_microchip
  - little_big_redstone:purple_microchip
  - little_big_redstone:magenta_microchip
  - little_big_redstone:pink_microchip
---

# Microchips

<FloatingColumn align="right">
	<PaddedBox left="5">
		<RecipeFor id="red_microchip" />
	</PaddedBox>
</FloatingColumn>

<FloatingColumn>
	<PaddedBox left="5" right="10" bottom="5">
		<GameScene zoom="1.5" padding="0" background="transparent">
			<ImportStructure src="assets/structures/microchips.snbt" />
			<IsometricCamera yaw="135" pitch="30" />
		</GameScene>
	</PaddedBox>
</FloatingColumn>

Os microchips são blocos onde se pode colocar [lógica](logic/introduction.md) para criar sistemas complexos.
[Fios](redstone_bits.md) podem ser colocados entre as lógicas para levar sinais de um componente lógico a outro.

Enquanto estiver no menu do microchip, você pode aproximar e afastar o zoom com a roda de rolagem. Segurar o botão
esquerdo e arrastar move a área de visão do circuito.

### Direções

Ao usar componentes lógicos que recebem entrada do mundo ou emitem saída para ele, você precisará definir a
direção usada. O microchip usa direções cardeais, ou seja, <Color color="#4CFF00">norte</Color>,
<Color color="#0094FF">sul</Color>, <Color color="#FF0000">leste</Color> e <Color color="#FF6A00">oeste</Color>,
além de <Color color="#FFFFFF">acima</Color> e <Color color="#FFD800">abaixo</Color>. A cor de cada direção pode ser
vista na lateral de um microchip pressionando **<KeyBind id="key.sneak" />** e olhando para ele.

### Coloração

Os microchips podem ser tingidos em qualquer uma das 16 cores de corante padrão, e o menu refletirá a cor. Os
componentes lógicos podem ser tingidos separadamente do microchip, mas por padrão herdam a cor do microchip em que
são colocados. Para tingir componentes lógicos, você pode fazê-lo na sua grade de fabricação como de costume, ou
clicar com o botão direito na lógica no menu segurando o corante para aplicá-lo.

Da mesma forma, você pode usar um balde de água ou bolas de neve para remover a cor do componente lógico. Note
que as bolas de neve são consumidas, enquanto os baldes de água não.