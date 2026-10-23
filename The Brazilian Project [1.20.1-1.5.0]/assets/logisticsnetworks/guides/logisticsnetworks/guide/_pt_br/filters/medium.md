---
item_ids: [logisticsnetworks:medium_filter]
navigation:
  title: Filtro Médio
  parent: filters/index.md
  icon: logisticsnetworks:medium_filter
  position: 2
---

# Filtro Médio

Mesmo comportamento de correspondência exata do [Filtro Pequeno](small.md), só que com mais espaço: **18 espaços de entrada** em vez de 9.

## Com o Que Ele Corresponde

Qualquer recurso cujo id de item ou de fluido esteja na lista de entradas do filtro. A correspondência é exata.

## Espaços de Entrada

- **18 espaços** (dispostos numa grade 3x6 dentro do menu do filtro).
- Clique com o botão direito no filtro na mão para abrir o menu.
- Espaços vazios são ignorados.

Cada entrada tem uma página **Detalhes** oculta com opções por entrada — veja [Filtragem Avançada](advanced-filtering.md).

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — só as entradas listadas passam.
- **Lista-Negra** — tudo exceto as entradas listadas é permitido.

## Casos de Uso

- Rotear todos os minérios comuns (carvão, ferro, ouro, cobre, diamante, esmeralda, redstone, lápis-lazúli — mais suas variantes de ardósia) por um único canal.
- Colocar na Lista-Negra um conjunto médio de itens só-de-reserva que você nunca quer saindo do armazenamento.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:medium_filter" />
