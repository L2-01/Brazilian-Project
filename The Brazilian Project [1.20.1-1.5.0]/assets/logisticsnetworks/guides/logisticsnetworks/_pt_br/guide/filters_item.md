---
item_ids: [logisticsnetworks:small_filter, logisticsnetworks:medium_filter, logisticsnetworks:big_filter]
navigation:
  title: Filtros de Item
  parent: filters.md
  icon: logisticsnetworks:small_filter
  position: 1
---

# Filtros de Item

Estes são os filtros gerais baseados em espaços:

1. Filtro Pequeno com 9 entradas
2. Filtro Médio com 18 entradas
3. Filtro Grande com 27 entradas

Cada entrada pode armazenar um alvo:

1. Item
2. Fluido
3. Químico

O tipo de alvo é selecionado na interface do filtro.

Detalhes de correspondência:

1. Entradas de item correspondem por id do item.
2. Entradas de fluido correspondem por fluido com componentes.
3. Entradas de químico correspondem por id exato do químico.

Entradas duplicadas são bloqueadas pela lógica do menu.

## Página de Detalhes do Filtro

Ctrl + clique esquerdo em qualquer espaço de filtro para abrir a página de detalhes. Configurações por entrada:

1. Limite de quantidade
2. Correspondência NBT com suporte a operadores (`=`, `!=`, `>=`, `<=`) e modo SNBT bruto
3. Verificação de durabilidade
4. Mapeamento de espaços (ex.: 0-8,13)
5. Flag de encantado

Remova o item de uma entrada para criar um filtro nbtOnly que corresponde a qualquer item com as configurações de NBT, durabilidade ou encantado definidas.

Ingredientes fantasmas do JEI são suportados na página de detalhes do filtro.

<RecipeFor id="logisticsnetworks:small_filter" />
<RecipeFor id="logisticsnetworks:medium_filter" />
<RecipeFor id="logisticsnetworks:big_filter" />
