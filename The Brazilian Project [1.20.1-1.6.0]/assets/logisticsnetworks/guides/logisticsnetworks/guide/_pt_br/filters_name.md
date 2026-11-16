---
item_ids: [logisticsnetworks:name_filter]
navigation:
  title: Filtro de Regex
  parent: filters.md
  icon: logisticsnetworks:name_filter
  position: 4
---

# Filtro de Regex

O Filtro de Regex corresponde a itens, fluidos ou químicos pelo nome usando padrões de regex Java. Toda correspondência é insensível a maiúsculas e parcial (o padrão não precisa corresponder ao nome inteiro).

Escopo da correspondência:

1. Nome: corresponde apenas ao nome de exibição
2. Tooltip: corresponde apenas às linhas do tooltip
3. Ambos: corresponde ao nome e às linhas do tooltip

## Exemplos

1. `stone` corresponde a qualquer coisa contendo "stone" (ex.: Stone, Cobblestone, Stonecutter)
2. `^Iron` corresponde a nomes começando com "Iron" (ex.: Iron Ingot, Iron Sword)
3. `Sword$` corresponde a nomes terminando com "Sword" (ex.: Diamond Sword, Netherite Sword)
4. `^Diamond .+` corresponde a nomes começando com "Diamond " seguido de qualquer coisa
5. `Potion|Arrow` corresponde a qualquer coisa contendo "Potion" ou "Arrow"
6. `Deepslate.*Ore` corresponde a nomes contendo "Deepslate" seguido de "Ore" (ex.: Deepslate Iron Ore)
7. `^(?!Golden).*Helmet` corresponde a qualquer Helmet exceto Golden Helmet

<RecipeFor id="logisticsnetworks:name_filter" />
