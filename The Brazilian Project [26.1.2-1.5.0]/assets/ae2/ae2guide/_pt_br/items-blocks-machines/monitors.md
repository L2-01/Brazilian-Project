---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Monitores
  icon: storage_monitor
  position: 210
categories:
- devices
item_ids:
- ae2:storage_monitor
- ae2:conversion_monitor
---

# Monitores

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/monitors.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Monitores permitem visualizar e interagir com um único tipo de item ou fluido, sem abrir uma GUI.

Monitores herdam a cor do [cabo](cables.md) em que estão montados.

Se o monitor estiver no chão ou no teto, você pode girá-lo com uma <ItemLink id="certus_quartz_wrench" />.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

# Monitor de Armazenamento

Mostrará um item ou fluido e sua quantidade. Coloque-os ao lado das suas farms ou algo assim...

*Não* requer um [canal](../ae2-mechanics/channels.md).

Atalhos:

*   Clique com o botão direito com um item ou clique duas vezes com o botão direito com um recipiente de fluido para definir o monitor para aquele item/fluido.
*   Clique com o botão direito com a mão vazia para limpar o monitor.
*   Shift-clique com o botão direito com a mão vazia para travar o monitor.

## Receita

<RecipeFor id="storage_monitor" />

# Monitor de Conversão

O Monitor de Conversão é semelhante a um monitor de armazenamento, mas permite inserir ou extrair seu item configurado.

Se o item configurado for [autofabricável](../ae2-mechanics/autocrafting.md) e não houver nenhum em estoque, tentar pegar um
item abrirá em vez disso uma UI para especificar a quantidade a fabricar.

*Requer* um [canal](../ae2-mechanics/channels.md).

Atalhos adicionais:

*   Clique com o botão esquerdo para extrair um monte do item configurado (ou, se não houver nenhum em estoque, para pedir a fabricação daquele item).
*   Clique com o botão direito com qualquer item para inserir aquele item.
*   Clique com o botão direito com a mão vazia para inserir todo o item configurado do seu inventário.

## Receita

<RecipeFor id="conversion_monitor" />
