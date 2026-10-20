---
categories:
  - ME Network/Network Functions
item_ids:
  - ae2:level_emitter
related:
  - Possible Upgrades
navigation:
  title: Emissor de Nível
---

![Um Emissor de Nível ativo](../../../assets/large/emitter2.png)O <ItemLink
id="level_emitter"/> pode indicar tanto o
nível de um item específico quanto o nível de energia da [Rede ME](../../me-network.md).
Você pode definir o limite e se o <ItemLink
id="level_emitter"/> emitirá um sinal de redstone
ou o desligará.

Exige um [canal](../channels.md) para funcionar; se a energia ou o
canal for perdido, o emissor muda para o estado desligado.

Eles podem se ligar ao sistema de fabricação quando um cartão de fabricação está instalado,
permitindo emitir redstone enquanto um item está sendo fabricado, ou até
configurar o sistema para emitir redstone a fim de executar uma tarefa de fabricação. É
importante notar que você não pode misturar fabricação via redstone do emissor de nível com
padrões de interface.

<RecipeFor id="level_emitter" />
