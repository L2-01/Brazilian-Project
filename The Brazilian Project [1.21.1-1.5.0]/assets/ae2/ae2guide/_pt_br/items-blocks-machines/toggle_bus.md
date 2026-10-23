---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Ponto Interruptor
  icon: toggle_bus
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:toggle_bus
- ae2:inverted_toggle_bus
---

# O Ponto Interruptor

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/toggle_bus.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Um ponto que funciona de forma parecida com um <ItemLink id="fluix_glass_cable" /> ou outros cabos, mas que
permite alternar seu estado de conexão via redstone. Isso permite cortar
uma seção de uma [Rede ME](../ae2-mechanics/me-network-connections.md).

Quando um sinal de redstone é fornecido, a parte ativa a conexão; o <ItemLink id="inverted_toggle_bus" /> fornece o comportamento
reverso, desativando a conexão em vez disso.

Vale notar que alterná-los pode fazer a rede reiniciar e recalcular os dispositivos conectados.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Receitas

<RecipeFor id="toggle_bus" />

<RecipeFor id="inverted_toggle_bus" />
