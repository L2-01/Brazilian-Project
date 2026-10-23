---
categories:
  - ME Network/Network Functions
item_ids:
  - ae2:level_emitter
related:
  - Possible Upgrades
navigation:
  title: Emissor de Nível ME
---

![Um Emissor de Nível ativo](../../../assets/large/emitter2.png)O <ItemLink
id="level_emitter"/> pode indicar o
nível de um item específico ou o nível de energia da [Rede ME](../../me-network.md).
Você pode definir o limite e se o <ItemLink
id="level_emitter"/> emitirá um sinal de redstone
ou ficará desligado.

Exige um [canal](../channels.md) para funcionar; se a energia ou o
canal for perdido, o emissor passa ao estado desligado.

Eles podem interagir com o sistema de fabricação quando um cartão de fabricação está instalado,
permitindo emitir redstone enquanto um item está sendo fabricado, ou até
configurar o sistema para emitir redstone e executar uma tarefa de fabricação. É
importante notar que você não pode misturar fabricação via redstone do emissor de nível com
padrões de interface.

<RecipeFor id="level_emitter" />
