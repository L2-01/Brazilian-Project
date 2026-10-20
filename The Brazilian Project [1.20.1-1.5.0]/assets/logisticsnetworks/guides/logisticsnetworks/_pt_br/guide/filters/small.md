---
item_ids: [logisticsnetworks:small_filter]
navigation:
  title: Filtro Pequeno
  parent: filters/index.md
  icon: logisticsnetworks:small_filter
  position: 1
---

# Filtro Pequeno

O filtro de entrada. Corresponde **itens ou fluidos exatos** contra uma lista de até **9 entradas**.

## O Que Ele Corresponde

Qualquer recurso cujo id de item ou id de fluido esteja na lista de entradas do filtro. A correspondência é exata — sem tags, sem curingas de mod inteiro, sem padrões de nome. Se a coisa no espaço de entrada é um lingote de ferro, só lingote de ferro corresponde.

## Espaços de Entrada

- **9 espaços** (grade 3x3 dentro do menu do filtro).
- Clique com o botão direito no filtro enquanto o segura na mão para abrir o menu.
- Coloque qualquer item ou balde de fluido em um espaço de entrada para adicioná-lo à lista. Remova-o para tirá-lo da lista.
- Espaços de entrada vazios são ignorados. Um filtro com zero entradas não corresponde a nada no modo Lista-Branca e corresponde a tudo no modo Lista-Negra.

Cada entrada tem uma página de **Detalhes** oculta com opções por entrada — correspondência por tag, substituição do tamanho de lote, definição de reserva, regras de NBT, restrição a espaços específicos do inventário. Veja [Filtragem Avançada](advanced-filtering.md).

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — apenas as 9 entradas listadas podem se mover por este canal.
- **Lista-Negra** — tudo **exceto** as 9 entradas listadas é permitido.

Alterne o modo dentro do menu do filtro. A tooltip do item mostra o modo atual de relance.

## Casos de Uso

- Restringir o canal de exportação de um baú a um conjunto específico de lingotes.
- Bloquear alguns itens inúteis conhecidos de entrar na sua rede de armazenamento enquanto deixa todo o resto passar (Lista-Negra).

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:small_filter" />
