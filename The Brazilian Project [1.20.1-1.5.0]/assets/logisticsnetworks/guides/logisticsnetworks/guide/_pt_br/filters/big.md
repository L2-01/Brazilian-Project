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

## Com o Que Ele Corresponde

Qualquer recurso cujo id de item ou de fluido esteja na lista de entradas do filtro. A correspondência é exata.

## Espaços de Entrada

- **27 espaços** (grade 3x9 dentro do menu do filtro — uma fileira inteira de baú duplo em entradas).
- Clique com o botão direito no filtro na mão para abrir o menu.
- Espaços vazios são ignorados.

Cada entrada tem uma página **Detalhes** oculta com opções por entrada — veja [Filtragem Avançada](advanced-filtering.md).

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — só as entradas listadas passam.
- **Lista-Negra** — tudo exceto as entradas listadas é permitido.

## Casos de Uso

- Uma grande Lista-Branca explícita de cada bloco de construção que você quer enviado ao baú de um construtor.
- Uma configuração de canal único que precisa verificar pelo nome um lote grande de ingredientes de fabricação.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:big_filter" />
