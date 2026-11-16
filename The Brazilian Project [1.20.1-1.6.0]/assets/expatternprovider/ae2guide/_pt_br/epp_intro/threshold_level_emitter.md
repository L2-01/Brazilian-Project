---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Emissor de Nível Limite ME
    icon: expatternprovider:threshold_level_emitter
categories:
- extended devices
item_ids:
- expatternprovider:threshold_level_emitter
---

# Emissor de Nível Limite ME

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_threshold_level_emitter.snbt"></ImportStructure>
</GameScene>

Ele funciona como uma trava set-reset. Desliga o sinal de redstone quando a quantidade de um item na rede fica abaixo do
limite inferior e liga o sinal quando a quantidade passa do limite superior.

Por exemplo, suponha que o limite inferior seja definido em 100 e o limite superior em 150.

No início a rede está vazia, então o emissor não estará ativo.

À medida que a quantidade do item passa de 150, o emissor envia um sinal de redstone.

Quando a quantidade cai abaixo de 150, o emissor ainda envia sinal.

Por fim, quando a quantidade cai abaixo de 100, o emissor desliga.
