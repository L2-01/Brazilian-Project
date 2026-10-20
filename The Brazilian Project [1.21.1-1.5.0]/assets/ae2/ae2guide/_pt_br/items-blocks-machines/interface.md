---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Interface
  icon: interface
  position: 210
categories:
- devices
item_ids:
- ae2:interface
- ae2:cable_interface
---

# A Interface

<Row gap="20">
<BlockImage id="interface" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_interface.snbt" />
</GameScene>
</Row>

Interfaces agem como um pequeno baú e tanque de fluido que se enche a partir do e se esvazia para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md),
dependendo do que você configurou para manter em estoque nos seus slots. Ela tenta completar isso num único tique de jogo, então pode se encher com
ou se esvaziar de até 9 montes por tique de jogo, tornando-a um método rápido de importação ou exportação se você tiver canos de itens rápidos.

Outro traço útil é que, enquanto a maioria dos tanques de fluido só armazena 1 tipo de fluido, interfaces podem armazenar até 9, além de itens.
Elas são essencialmente só baús/tanques multi-fluido com funcionalidade extra, e você pode impedir essa funcionalidade extra mantendo-as
desconectadas de quaisquer redes.
Assim, elas são úteis em alguns casos de nicho em que você quer armazenar uma pequena quantidade de um monte de coisas diferentes.

## Como uma Interface Funciona Internamente

Como dito antes, uma interface é essencialmente um baú/tanque com uns <ItemLink id="import_bus" />s e
<ItemLink id="export_bus" />s superpoderosos acoplados, com um monte de <ItemLink id="level_emitter" />s.

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_internals.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 0.3 1.3" max="9.7 1 1.7">
        Um monte de emissores de nível para controlar a quantidade de estoque pedida
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 4 1.3" max="9.7 4.7 1.7">
        Um monte de emissores de nível para controlar a quantidade de estoque pedida
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 1.3 1.3" max="9.7 2 1.7">
        Um monte de pontos de importação superpoderosos que podem transferir 1 monte por tique de jogo
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/import_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 3 1.3" max="9.7 3.7 1.7">
        Um monte de pontos de exportação superpoderosos que podem transferir 1 monte por tique de jogo
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/export_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="10 3 2">
        9 slots internos separados
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="15" />
</GameScene>

## Interações Especiais

Interfaces também têm algumas funcionalidades especiais com outros [dispositivos](../ae2-mechanics/devices.md) AE2:

Um <ItemLink id="storage_bus" /> numa interface não configurada apresentará a totalidade do [armazenamento da rede](../ae2-mechanics/import-export-storage.md)
da sua rede à rede do ponto de armazenamento, como se a rede da interface fosse um baú grande no qual o ponto de armazenamento foi colocado.
Definir um item para ser estocado nos slots de filtro da interface desabilita isso.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Provedores de padrões têm uma interação especial com interfaces em [sub-redes](../ae2-mechanics/subnetworks.md): se a interface não estiver configurada,
o provedor pulará a interface inteiramente e empurrará direto para o [armazenamento](../ae2-mechanics/import-export-storage.md) daquela sub-rede,
pulando a interface e não enchendo-a de lotes de receita, e, mais importante, não inserindo o próximo lote até que haja espaço no armazenamento.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Interface (deve ser plana, não bloco inteiro)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Pontos de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Lugares para os quais você quer fornecer padrões (múltiplas máquinas, ou múltiplas faces de 1 máquina)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## Variantes

Interfaces vêm em 2 variantes diferentes: normal e plana/[subparte](../ae2-mechanics/cable-subparts.md). Isso afeta de quais lados específicos seus inventários podem ser acessados
e a quais lados elas fornecem uma conexão de rede.

*   Interfaces normais permitem que coisas empurrem, puxem e acessem seu inventário por todos os lados e, como a maioria das máquinas AE2, agem
    como um cabo, fornecendo conexão de rede a todos os lados.

*   Interfaces planas são [subpartes de cabo](../ae2-mechanics/cable-subparts.md), então várias podem ser colocadas no mesmo cabo, permitindo esquemas compactos.
    Elas permitem que coisas empurrem, puxem e acessem seu inventário pela sua face, mas não fornecem conexão de rede na sua face.

Interfaces podem ser alternadas entre normal e plana numa grade de fabricação.

## Configurações

Os slots de cima na interface determinam o que a interface é configurada para estocar dentro de si. Quando algo é colocado
neles ou arrastado do JEI/REI, uma chave-inglesa aparece, permitindo definir a quantidade.

Clique com o botão direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

Quando você configura um slot para o modo de estoque, ele também impedirá que máquinas externas insiram qualquer outra coisa naquele slot.

## Melhorias

A interface suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> permite à interface filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="crafting_card" /> permite à interface enviar pedidos de fabricação ao seu sistema de [autofabricação](../ae2-mechanics/autocrafting.md)
    para conseguir os itens que deseja. Ela puxará os itens do armazenamento se possível, antes de fazer um pedido
    de fabricação de um item novo.

## Prioridade

Prioridades podem ser definidas clicando na chave-inglesa no canto superior direito da GUI. Interfaces com prioridade maior receberão seus itens
antes daquelas com prioridade menor.

## Receitas

<Recipe id="network/blocks/interfaces_interface" />

<RecipeFor id="cable_interface" />
