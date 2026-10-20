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

Ele funciona como um relé de retenção. Ele desliga seu sinal de redstone quando a quantidade de um item na rede é menor que
o limite inferior e o liga quando a quantidade é maior que o limite superior.

Por exemplo, suponha que o limite inferior esteja definido como 100 e o limite superior como 150.

No início, a rede está vazia, então o emissor está inativo.

Quando a quantidade do item aumenta acima de 150, o emissor envia um sinal de redstone.

Quando a quantidade diminui abaixo de 150, o emissor continua enviando o sinal.

Quando a quantidade cai abaixo de 100, o emissor desliga.
