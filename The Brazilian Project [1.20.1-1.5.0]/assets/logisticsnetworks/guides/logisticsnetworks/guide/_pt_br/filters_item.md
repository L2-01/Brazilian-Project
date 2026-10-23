---
item_ids: [logisticsnetworks:small_filter, logisticsnetworks:medium_filter, logisticsnetworks:big_filter]
navigation:
  title: Filtros de Itens
  parent: filters.md
  icon: logisticsnetworks:small_filter
  position: 1
---

# Filtros de Itens

Estes são os filtros gerais baseados em espaços:

1. Filtro Pequeno com 9 entradas
2. Filtro Médio com 18 entradas
3. Filtro Grande com 27 entradas

Cada entrada pode guardar um alvo:

1. Item
2. Fluido
3. Químico

O tipo de alvo é selecionado na interface do filtro.

Detalhes da correspondência:

1. Entradas de item correspondem pelo id do item.
2. Entradas de fluido correspondem pelo fluido com componentes.
3. Entradas de químico correspondem pelo id exato do químico.

Entradas duplicadas são bloqueadas pela lógica do menu.

## Página de Detalhes do Filtro

Ctrl + Clique Esquerdo em qualquer espaço do filtro para abrir a página de detalhes do filtro. Configurações por entrada:

1. Limite de quantidade
2. Correspondência de NBT com suporte a operadores (`=`, `!=`, `>=`, `<=`) e modo SNBT puro
3. Verificação de durabilidade
4. Mapeamento de espaços (ex.: 0-8,13)
5. Marcação de encantado

Remova o item de uma entrada para criar um filtro somente-NBT que corresponde a qualquer item com as configurações de NBT, durabilidade ou encantado definidas.

Ingredientes fantasma do JEI são suportados na página de detalhes do filtro.

<RecipeFor id="logisticsnetworks:small_filter" />
<RecipeFor id="logisticsnetworks:medium_filter" />
<RecipeFor id="logisticsnetworks:big_filter" />
