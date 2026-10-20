---
categories:
  - ME Network/Network Functions
item_ids:
  - ae2:interface
  - ae2:cable_interface
related:
  - Possible Upgrades
navigation:
  title: Interface
---

![Uma imagem de um Bloco de Interface.](../../../assets/large/interface.png)![Uma imagem
de uma Parte de Interface.](../../../assets/large/interface_module.png)A <ItemLink
id="interface"/> é o único componente que pode
ser usado como parte ou como bloco. Fabricar uma interface ME em qualquer uma das formas
produz a outra forma. A forma fina é útil se você quer colocar
várias interfaces diferentes num único bloco de espaço físico, mas cada
uma vai precisar do próprio canal. A forma de bloco permite que vários outros blocos se conectem
a uma única interface ME, usando apenas um canal para a interface.

<ItemGrid>
  <ItemIcon id="interface" />
  <ItemIcon id="cable_interface" />
</ItemGrid>

A <ItemLink id="interface"/> funciona como intermediária
ao trabalhar com canos, tubos, redes ou máquinas de outros mods.

Você pode configurar certos itens para serem exportados da [Rede ME](../../me-network.md) para a <ItemLink
id="interface"/> para uso com outros mods. Ou usar
outros mods para inserir em qualquer <ItemLink
id="interface"/>. Contanto que ela não esteja cheia de
materiais exportados, ela adicionará quaisquer itens inseridos à [Rede ME](../../me-network.md).

A interface normalmente funciona como um baú, porém com uma exceção: se
você colocar um ponto de armazenamento numa interface, você essencialmente inclui a rede
inteira no lugar. Isso permite que redes compartilhem conjuntos enormes de conteúdo e sejam
encadeadas de forma muito eficiente. Além desse modo, se você
configurar sua interface para fornecer explicitamente materiais específicos, o
ponto de armazenamento se comportará como se a interface fosse um baú comum, desativando
esse recurso avançado. (Até o momento, a fabricação automática em outra rede
não usa de forma confiável os itens de uma interface configurada.)

A <ItemLink id="interface"/> exige um
[canal](../channels.md) para funcionar.

<RecipeFor id="interface" />
