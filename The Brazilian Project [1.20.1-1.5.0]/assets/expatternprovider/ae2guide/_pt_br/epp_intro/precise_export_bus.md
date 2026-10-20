---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Ponto de Exportação ME Preciso
    icon: expatternprovider:precise_export_bus
categories:
- extended devices
item_ids:
- expatternprovider:precise_export_bus
---

# Ponto de Exportação ME Preciso

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_precise_export_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de Exportação ME Preciso exporta quantidades especificadas de itens ou fluidos. Ele só realiza uma exportação quando o recipiente de destino pode aceitar a saída inteira.

## Modos

### Modo Exato
Ele sempre exporta a quantidade configurada **EXATA** de itens ou fluidos por operação. Instale cartões de aceleração ao exportar grandes quantidades.

### Modo em Lote
Ele tenta exportar a quantidade configurada X vezes por operação.

## Exemplo

![GUI](../pic/pre_bus_gui1.png)

Esta configuração exporta 3 pedregulhos por operação. O ponto para de exportar quando a rede contém menos de 3 pedregulhos.

![GUI](../pic/pre_bus_gui2.png)

O ponto também para de exportar quando o recipiente de destino não consegue comportar a saída completa. Neste exemplo, o baú só tem espaço para mais 2 pedregulhos, então a exportação não pode prosseguir.
