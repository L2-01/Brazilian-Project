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

Interfaces agem como um pequeno baú e tanque de fluido que se enche a partir do e se esvazia para o [armazenamento de rede](../ae2-mechanics/import-export-storage.md),
dependendo do que você a configurar para manter em estoque em seus slots. Ela tenta fazer isso num único tick, então pode se encher
ou se esvaziar de até 9 pilhas por tick, tornando-a um método rápido de importação ou exportação se você tiver tubos de itens rápidos.

Outra característica útil é que, enquanto a maioria dos tanques de fluido só consegue armazenar 1 tipo de fluido, interfaces podem armazenar até 9, além de itens.
Elas são essencialmente baús/tanques multifluido com alguma funcionalidade extra, e você pode desativar essa funcionalidade extra mantendo-as
desconectadas de qualquer rede.
Assim, elas são úteis em casos de nicho em que você quer armazenar uma pequena quantidade de muitas coisas diferentes.

## Como uma Interface Funciona Internamente

Como dito antes, uma interface é essencialmente um baú/tanque com <ItemLink id="import_bus" />es e
<ItemLink id="export_bus" />es superpoderosos acoplados, mais um monte de <ItemLink id="level_emitter" />s.

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_internals.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 0.3 1.3" max="9.7 1 1.7">
        Um monte de emissores de nível para controlar a quantidade de estoque requisitada
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 4 1.3" max="9.7 4.7 1.7">
        Um monte de emissores de nível para controlar a quantidade de estoque requisitada
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 1.3 1.3" max="9.7 2 1.7">
        Um monte de pontos de importação superpoderosos que podem transferir 1 pilha por tick
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/import_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 3 1.3" max="9.7 3.7 1.7">
        Um monte de pontos de exportação superpoderosos que podem transferir 1 pilha por tick
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

Interfaces também têm algumas funcionalidades especiais com outros [dispositivos](../ae2-mechanics/devices.md) do AE2:

Um <ItemLink id="storage_bus" /> numa interface não configurada apresentará todo o [armazenamento de rede](../ae2-mechanics/import-export-storage.md)
de sua rede à rede do ponto de armazenamento, como se a rede da interface fosse um grande baú no qual o ponto de armazenamento foi colocado.
Configurar um item para ser estocado nos slots de filtro da interface desativa isso.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Provedores de padrões têm uma interação especial com interfaces em [sub-redes](../ae2-mechanics/subnetworks.md): se a interface não estiver configurada,
o provedor pulará a interface completamente e empurrará diretamente para o [armazenamento](../ae2-mechanics/import-export-storage.md) daquela sub-rede,
ignorando a interface e não a enchendo de lotes de receita — e, mais importante, não inserindo o próximo lote até haver espaço no armazenamento.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Interface (precisa ser plana, não de bloco cheio)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Pontos de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Lugares para os quais você quer prover padrões (multiple machines, or multiple faces of 1 machine)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## Variantes

Interfaces vêm em 2 variantes: normal e plana/[subparte](../ae2-mechanics/cable-subparts.md). Isso afeta por quais lados específicos seus inventários podem ser acessados
e a quais lados elas fornecem conexão de rede.

*   Interfaces normais permitem que coisas empurrem, puxem e acessem seu inventário por todos os lados e, como a maioria das máquinas do AE2, agem
    como um cabo fornecendo conexão de rede a todos os lados.

*   Interfaces planas são [subpartes de cabo](../ae2-mechanics/cable-subparts.md), então várias podem ser colocadas no mesmo cabo, permitindo configurações compactas.
    Elas permitem que coisas empurrem, puxem e acessem seu inventário pela sua face, mas não fornecem conexão de rede pela face.

Interfaces podem ser trocadas entre normal e plana numa grade de fabricação.

## Configurações

Os slots superiores da interface determinam o que a interface está configurada para estocar dentro de si. Quando algo é colocado neles
ou arrastado do JEI/REI, uma chave aparece permitindo definir a quantidade.

Clique com o botão direito usando um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como filtro em vez do item balde ou tanque.

Quando você define um slot para o modo de estoque, ele também impede que máquinas externas insiram qualquer outra coisa naquele slot.

## Melhorias

A interface suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> permite à interface filtrar por nível de dano e/ou ignorar o NBT do item
*   <ItemLink id="crafting_card" /> permite à interface enviar requisições de fabricação ao seu sistema de
    [fabricação automática](../ae2-mechanics/autocrafting.md) para obter os itens desejados. Ela puxará os itens do armazenamento, se possível, antes de fazer uma requisição
    de um novo item a fabricar.

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI. Interfaces com prioridade maior receberão seus itens
antes daquelas com prioridade menor.

## Receitas

<Recipe id="network/blocks/interfaces_interface" />

<RecipeFor id="cable_interface" />
