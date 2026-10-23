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
[armazenamento de rede](../ae2-mechanics/import-export-storage.md).

Há também uma versão que emite um sinal de redstone dependendo da [energia](../ae2-mechanics/energy.md) armazenada
na sua rede.

Itens e fluidos podem ser arrastados para o slot a partir do JEI/REI mesmo que você não tenha nenhum daquele item.

Clique com o botão direito usando um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

Diferente de outros [dispositivos](../ae2-mechanics/devices.md), emissores de nível *não* requerem um [canal](../ae2-mechanics/channels.md).

## Configurações

*   O Emissor de Nível pode ser configurado para o modo "maior que/igual a" ou "menor que"
*   Quando um <ItemLink id="crafting_card" /> é inserido, ele pode ser configurado para "emitir redstone enquanto o item está sendo fabricado" ou
    "emitir redstone para fabricar o item"

## Melhorias

O emissor de nível suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> permite ao emissor filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="crafting_card" /> habilita a funcionalidade de fabricação

## Funcionalidade de Fabricação

Se um <ItemLink id="crafting_card" /> for inserido, o emissor será alternado para o modo de fabricação.

Isso habilita duas opções:

A primeira opção, "emitir redstone enquanto o item está sendo fabricado", faz o emissor emitir um sinal de redstone enquanto sua [fabricação automática](../ae2-mechanics/autocrafting.md)
está fabricando algum item específico através de <ItemLink id="pattern_provider" />s. Isso é útil para ligar configurações de automação
que consomem muita energia apenas quando estão realmente em uso.

A segunda opção, "emitir redstone para fabricar o item", é extremamente útil para casos específicos como farms infinitas e
configurações de automação que só têm uma chance de produzir uma saída, em vez de uma saída garantida.
Essa configuração cria um [padrão](patterns.md) virtual para a [fabricação automática](../ae2-mechanics/autocrafting.md) usar, para qualquer item
que esteja no slot de filtro do emissor.
(Para o funcionamento correto, um padrão real para o mesmo item **não deve existir** nos seus <ItemLink id="pattern_provider" />s)

Este "padrão" não define ingredientes — nem se importa com eles.
Tudo que ele diz é "Se você emitir redstone deste emissor de nível, o sistema ME receberá este item em algum ponto do
futuro próximo ou distante". Isso é geralmente usado para ativar e desativar farms infinitas que não requerem ingredientes de entrada,
ou para ativar [um sistema que lida com receitas recursivas](../example-setups/recursive-crafting-setup.md) (que a fabricação automática padrão não consegue entender),
como, por exemplo, "1 pedregulho = 2 pedregulhos" se você tiver uma máquina que duplica pedregulho.

## Receita

<RecipeFor id="level_emitter" />

<RecipeFor id="energy_level_emitter" />
