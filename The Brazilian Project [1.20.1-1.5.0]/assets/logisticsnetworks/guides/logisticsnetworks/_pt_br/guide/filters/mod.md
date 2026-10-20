---
item_ids: [logisticsnetworks:mod_filter]
navigation:
  title: Filtro de Mod
  parent: filters/index.md
  icon: logisticsnetworks:mod_filter
  position: 4
---

# Filtro de Mod

Corresponde **todo item ou fluido de um mod específico** com uma única entrada. Muito menor e mais abrangente que os filtros de correspondência exata.

## O Que Ele Corresponde

Qualquer recurso cujo namespace de registro seja igual ao id de mod configurado. Por exemplo, se o Filtro de Mod estiver definido como `create`, todo item e fluido do mod Create passa pelo filtro.

## Configuração

- Clique com o botão direito no filtro na mão para abrir o menu.
- Defina o **id do mod** (ex.: `minecraft`, `create`, `mekanism`, `ae2`).
- Esse é o único campo — um Filtro de Mod = um mod.

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — apenas recursos do mod listado podem passar.
- **Lista-Negra** — tudo **exceto** recursos do mod listado é permitido.

## Casos de Uso

- Enviar todo item do Create para o armazenamento só do Create.
- Lista-negra de um mod que você não quer entupindo uma rede de separação geral.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:mod_filter" />

## Empilhando Filtros de Mod

Se você precisa corresponder vários mods, coloque múltiplos Filtros de Mod na grade de filtros do mesmo canal e defina o modo de filtro do canal como **Qualquer**. Cada filtro corresponde a um mod; juntos eles cobrem todos os mods que você listou.
