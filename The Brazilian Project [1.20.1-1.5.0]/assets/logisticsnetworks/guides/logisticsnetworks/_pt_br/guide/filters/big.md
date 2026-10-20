---
item_ids: [logisticsnetworks:big_filter]
navigation:
  title: Filtro Grande
  parent: filters/index.md
  icon: logisticsnetworks:big_filter
  position: 3
---

# Filtro Grande

O maior filtro de correspondência exata. Mesmo comportamento do [Filtro Pequeno](small.md), expandido para **27 espaços de entrada**.

## O Que Ele Corresponde

Qualquer recurso cujo id de item ou id de fluido esteja na lista de entradas do filtro. A correspondência é exata.

## Espaços de Entrada

- **27 espaços** (grade 3x9 dentro do menu do filtro — o equivalente a uma fileira inteira de baú duplo em entradas).
- Clique com o botão direito no filtro na mão para abrir o menu.
- Espaços vazios são ignorados.

Cada entrada tem uma página de **Detalhes** oculta com opções por entrada — veja [Filtragem Avançada](advanced-filtering.md).

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — apenas as entradas listadas podem passar.
- **Lista-Negra** — tudo exceto as entradas listadas é permitido.

## Casos de Uso

- Uma grande lista-branca explícita de cada bloco de construção que você quer enviado a um baú de construtor.
- Uma configuração de canal único que precisa verificar o nome de um lote grande de ingredientes de fabricação.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:big_filter" />
