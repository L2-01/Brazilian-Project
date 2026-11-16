---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Emissor de Nível Limite ME
    icon: extendedae:threshold_level_emitter
categories:
- extended devices
item_ids:
- extendedae:threshold_level_emitter
---

# Emissor de Nível Limite ME

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_threshold_level_emitter.snbt"></ImportStructure>
</GameScene>

Ele funciona como um trinco reset-set. Ele desliga o sinal de redstone quando a quantidade de um item na rede é menor que
o limite inferior e liga quando a quantidade passa do limite superior.

Por exemplo, suponha que o limite inferior esteja em 100 e o limite superior em 150.

Inicialmente, a rede está vazia, então o emissor fica inativo.

Quando a quantidade do item passa de 150, o emissor envia um sinal de redstone.

Quando a quantidade cai abaixo de 150, o emissor ainda envia o sinal.

Por fim, quando a quantidade cai abaixo de 100, o emissor desliga.
