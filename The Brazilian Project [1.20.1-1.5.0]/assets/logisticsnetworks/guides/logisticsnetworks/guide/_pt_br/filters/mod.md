---
item_ids: [logisticsnetworks:mod_filter]
navigation:
  title: Filtro de Mod
  parent: filters/index.md
  icon: logisticsnetworks:mod_filter
  position: 4
---

# Filtro de Mod

Corresponde a **todo item ou fluido de um mod específico** com uma única entrada. Muito menor e mais amplo que os filtros de correspondência exata.

## Com o Que Ele Corresponde

Qualquer recurso cujo namespace de registro seja igual ao id de mod configurado. Por exemplo, se o Filtro de Mod estiver definido como `create`, todo item e fluido do mod Create passa no filtro.

## Configuração

- Clique com o botão direito no filtro na mão para abrir o menu.
- Defina o **id do mod** (ex.: `minecraft`, `create`, `mekanism`, `ae2`).
- Esse é o único campo — um Filtro de Mod = um mod.

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — só recursos do mod listado passam.
- **Lista-Negra** — tudo **exceto** recursos do mod listado é permitido.

## Casos de Uso

- Enviar todo item do Create ao armazenamento só-do-Create.
- Colocar na Lista-Negra um mod que você não quer entupindo uma rede geral de triagem.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:mod_filter" />

## Empilhando Filtros de Mod

Se você precisar corresponder a vários mods, coloque múltiplos Filtros de Mod na grade de filtros do mesmo canal e defina o modo de filtro do canal como **Corresponder Qualquer**. Cada filtro corresponde a um mod; juntos eles cobrem todos os mods que você listou.
