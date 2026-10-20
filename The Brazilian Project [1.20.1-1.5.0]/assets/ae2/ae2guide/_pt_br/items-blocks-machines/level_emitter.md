---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Emissor de Nível
  icon: level_emitter
  position: 220
categories:
- devices
item_ids:
- ae2:level_emitter
- ae2:energy_level_emitter
---

# O Emissor de Nível

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/level_emitter.snbt" />
</GameScene>

O Emissor de Nível emite um sinal de redstone dependendo da quantidade de um item no
[armazenamento da rede](../ae2-mechanics/import-export-storage.md).

Há também uma versão que emite um sinal de redstone dependendo da [energia](../ae2-mechanics/energy.md) armazenada
na sua rede.

Itens e fluidos podem ser arrastados ao slot a partir do JEI/REI mesmo que você não tenha de fato nenhum daquele item.

Clique com o botão direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

Ao contrário de outros [dispositivos](../ae2-mechanics/devices.md), emissores de nível *não* requerem um [canal](../ae2-mechanics/channels.md).

## Configurações

*   O Emissor de Nível pode ser configurado para o modo "maior que/igual a" ou "menor que"
*   Quando um <ItemLink id="crafting_card" /> é inserido, ele pode ser configurado para "emitir redstone enquanto o item está fabricando" ou
    "emitir redstone para fabricar o item"

## Melhorias

O emissor de nível suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> permite ao emissor filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="crafting_card" /> habilita a funcionalidade de fabricação

## Funcionalidade de Fabricação

Se um <ItemLink id="crafting_card" /> for inserido, o emissor mudará para o modo de fabricação.

Isso habilita duas opções:

A primeira opção, "emitir redstone enquanto o item está fabricando", faz o emissor emitir um sinal de redstone enquanto sua [autofabricação](../ae2-mechanics/autocrafting.md)
estiver fabricando algum item específico através de <ItemLink id="pattern_provider" />s. Isso é útil para só ligar esquemas
de automação gastões específicos enquanto eles estão de fato sendo usados.

A segunda opção, "emitir redstone para fabricar o item", é extremamente útil para casos de uso específicos como farms infinitas e
esquemas de automação que só têm uma chance de produzir uma saída, em vez de uma saída garantida.
Esta configuração cria um [padrão](patterns.md) virtual para a [autofabricação](../ae2-mechanics/autocrafting.md) usar, para qualquer item
que esteja no slot de filtro do emissor.
(Para funcionar corretamente, um padrão real para o mesmo item **não deve existir** nos seus <ItemLink id="pattern_provider" />s)

Este "padrão" não define, nem se importa com ingredientes.
Tudo que ele diz é "Se você emitir redstone a partir deste emissor de nível, o sistema ME receberá este item em algum momento num
futuro próximo ou distante". Isso normalmente é usado para ativar e desativar farms infinitas que não requerem ingredientes de entrada,
ou para ativar um sistema que lida com receitas recursivas (que a autofabricação padrão não consegue entender) como, por exemplo, "1 pedregulho = 2 pedregulhos"
se você tiver uma máquina que duplica pedregulho.

## Receita

<RecipeFor id="level_emitter" />

<RecipeFor id="energy_level_emitter" />
