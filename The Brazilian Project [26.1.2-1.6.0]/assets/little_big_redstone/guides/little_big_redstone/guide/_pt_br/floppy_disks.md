---
navigation:
  title: "Disquetes"
  icon: "red_floppy_disk"
  position: 4
item_ids:
  - little_big_redstone:white_floppy_disk
  - little_big_redstone:light_gray_floppy_disk
  - little_big_redstone:gray_floppy_disk
  - little_big_redstone:black_floppy_disk
  - little_big_redstone:brown_floppy_disk
  - little_big_redstone:red_floppy_disk
  - little_big_redstone:orange_floppy_disk
  - little_big_redstone:yellow_floppy_disk
  - little_big_redstone:lime_floppy_disk
  - little_big_redstone:green_floppy_disk
  - little_big_redstone:cyan_floppy_disk
  - little_big_redstone:light_blue_floppy_disk
  - little_big_redstone:blue_floppy_disk
  - little_big_redstone:purple_floppy_disk
  - little_big_redstone:magenta_floppy_disk
  - little_big_redstone:pink_floppy_disk
---

# Disquetes

<FloatingColumn align="right">
	<PaddedBox left="5">
		<Recipe id="little_big_redstone:floppy_disk/red" />
	</PaddedBox>
</FloatingColumn>

<FloatingColumn>
	<PaddedBox left="5" right="10" bottom="0">
		<Row gap="1">
			<ItemImage id="red_floppy_disk" />
			<ItemImage id="orange_floppy_disk" />
			<ItemImage id="yellow_floppy_disk" />
			<ItemImage id="lime_floppy_disk" />
		</Row>
		<Row gap="1">
			<ItemImage id="green_floppy_disk" />
			<ItemImage id="cyan_floppy_disk" />
			<ItemImage id="light_blue_floppy_disk" />
			<ItemImage id="blue_floppy_disk" />
		</Row>
		<Row gap="1">
			<ItemImage id="purple_floppy_disk" />
			<ItemImage id="magenta_floppy_disk" />
			<ItemImage id="pink_floppy_disk" />
			<ItemImage id="brown_floppy_disk" />
		</Row>
		<Row gap="1">
			<ItemImage id="white_floppy_disk" />
			<ItemImage id="light_gray_floppy_disk" />
			<ItemImage id="gray_floppy_disk" />
			<ItemImage id="black_floppy_disk" />
		</Row>
	</PaddedBox>
</FloatingColumn>

Os disquetes permitem guardar o programa de um [Microchip](microchips.md) e depois instalá-lo em outro microchip
com facilidade.

Ao pressionar **<KeyBind id="key.sneak" />** + **<KeyBind id="key.use" />** num microchip segurando um disquete,
o programa do microchip será guardado no disquete.

Depois que um programa for guardado no disquete, você pode pressionar **<KeyBind id="key.use" />** num microchip para
instalá-lo, desde que tenha os componentes lógicos e os bits de redstone necessários. Isso também pode ser feito ao
segurar um disquete na mão secundária enquanto coloca um microchip. Itens em [Matrizes Lógicas](logic_arrays.md)
contam como itens do seu inventário para instalar programas. Os itens necessários para instalar o programa são
exibidos acima da hotbar ao olhar para um microchip com um disquete na mão.

Os programas também podem ser salvos e carregados do seu computador local! Abra o menu para isso pressionando
**<KeyBind id="key.use" />** segurando um disquete (sem olhar para um microchip). O botão "Salvar" salvará o
programa atualmente guardado num arquivo com o nome que você digitar na caixa de texto "Nome do Programa". Da mesma
forma, o botão "Carregar" carregará o programa do arquivo com o nome informado. Se não existir um arquivo com esse
nome, o botão "Carregar" não ficará clicável. Os programas salvos ficam no diretório **/little_big_redstone/microchips**
do diretório do seu jogo. Esses arquivos são acessíveis entre mundos e servidores.