---
item_ids: [logisticsnetworks:mod_filter]
navigation:
  title: Filtro de Mod
  parent: filters.md
  icon: logisticsnetworks:mod_filter
  position: 3
---

# Filtro de Mod

O Filtro de Mod corresponde itens, fluidos ou químicos pelo namespace do mod. Você pode digitar um namespace ou colocar um item no espaço extrator e selecionar no seletor.

A correspondência é exata na porção do namespace do id do item (a parte antes dos dois-pontos).

## Exemplos

1. `minecraft` corresponde a todos os itens vanilla (ex.: minecraft:stone, minecraft:diamond)
2. `mekanism` corresponde a todos os itens e químicos do Mekanism
3. `create` corresponde a todos os itens e fluidos do mod Create
4. `thermal` corresponde a todos os itens da Thermal Series
5. `ae2` corresponde a todos os itens do Applied Energistics 2

Digitar `minecraft:stone` será normalizado para `minecraft`.

<RecipeFor id="logisticsnetworks:mod_filter" />
