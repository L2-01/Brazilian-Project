---
categories:
  - ME Network/Network Functions
item_ids:
  - ae2:interface
  - ae2:cable_interface
related:
  - Possible Upgrades
navigation:
  title: Interface ME
---

![Uma imagem de um Bloco de Interface.](../../../assets/large/interface.png)![Uma imagem
de uma Parte de Interface.](../../../assets/large/interface_module.png)A <ItemLink
id="interface"/> é o único componente que pode
ser usado como parte ou como Bloco. Fabricar uma interface ME em qualquer forma
produz a outra forma. A forma fina é útil se você quiser fornecer
várias interfaces diferentes num único bloco de espaço físico, mas cada
uma precisará do próprio canal. A forma de bloco permite que vários outros blocos se conectem
a uma única interface ME, usando apenas um canal para a interface.

<ItemGrid>
  <ItemIcon id="interface" />
  <ItemIcon id="cable_interface" />
</ItemGrid>

A <ItemLink id="interface"/> atua como intermediária
ao trabalhar com tubos, canos, redes ou máquinas de outros mods.

Você pode configurar certos itens para serem exportados da [Rede ME](../../me-network.md) para a <ItemLink
id="interface"/>, para uso com outros mods. Ou usar
outros mods para inserir itens em qualquer <ItemLink
id="interface"/>. Enquanto não estiver cheia de

materiais exportados, ela adiciona qualquer item inserido à [Rede ME](../../me-network.md).

A interface normalmente funciona como um baú, com uma exceção: se
você colocar um ponto de armazenamento numa interface, você essencialmente inclui a
rede inteira; isso permite que redes compartilhem enormes conjuntos de conteúdo e sejam
encadeadas de forma muito eficiente. Além desse modo, se você
configurar sua interface para fornecer explicitamente materiais específicos, o
ponto de armazenamento se comportará como se a interface fosse um baú comum, desabilitando
esse recurso avançado. (Até o momento, a fabricação automática em outra rede
não usa de forma confiável os itens de uma interface configurada.)

A <ItemLink id="interface"/> exige um
[canal](../channels.md) para funcionar.

<RecipeFor id="interface" />
