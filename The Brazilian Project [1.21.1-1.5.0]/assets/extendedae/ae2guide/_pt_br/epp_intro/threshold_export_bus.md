---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Ponto de Exportação ME com Limite
    icon: extendedae:threshold_export_bus
categories:
- extended devices
item_ids:
- extendedae:threshold_export_bus
---

# Ponto de Exportação ME com Limite

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_threshold_export_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de Exportação ME com Limite opera quando a quantidade de um item armazenada na rede ME está acima ou abaixo do limite.

## Exemplo

![GUI](../pic/thr_bus_gui1.png)

O limite de cobre está definido como 128, então o ponto exporta cobre quando a rede armazena mais de 128.

![GUI](../pic/thr_bus_gui2.png)

O limite é o mesmo de cima, mas o modo está definido como ABAIXO. O ponto exporta cobre quando a rede armazena menos de 128.
