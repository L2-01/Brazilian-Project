---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Ponto de Exportação ME com Limite
    icon: expatternprovider:threshold_export_bus
categories:
- extended devices
item_ids:
- expatternprovider:threshold_export_bus
---

# Ponto de Exportação ME com Limite

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_threshold_export_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de Exportação ME com Limite funciona quando a quantidade de um item armazenado na rede ME está acima ou abaixo do limite.

## Exemplo

![GUI](../pic/thr_bus_gui1.png)

O limite para cobre está definido em 128, então ele exporta cobre quando o cobre armazenado na rede passa de 128.

![GUI](../pic/thr_bus_gui2.png)

O limite é o mesmo do exemplo acima, mas o modo está definido como ABAIXO. Ele exporta cobre quando o cobre armazenado fica abaixo de 128.
