---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Ponto de Exportação ME Preciso
    icon: extendedae:precise_export_bus
categories:
- extended devices
item_ids:
- extendedae:precise_export_bus
---

# Ponto de Exportação ME Preciso

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_precise_export_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de Exportação ME Preciso exporta itens ou fluidos em quantidades especificadas. Ele só exporta quando o recipiente pode aceitar toda a saída.

## Exemplo

![GUI](../pic/pre_bus_gui1.png)

Este ajuste exporta 3 unidades de pedregulho por operação. Ele para de exportar quando a rede contém menos de 3 unidades.

![GUI](../pic/pre_bus_gui2.png)

Ele também para de exportar quando o recipiente de destino não pode conter toda a saída. O baú só pode conter mais 2 unidades de pedregulho, então o ponto de exportação para.
