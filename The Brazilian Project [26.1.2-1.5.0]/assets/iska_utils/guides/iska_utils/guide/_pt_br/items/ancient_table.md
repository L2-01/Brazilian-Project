---
navigation:
  title: Mesa Ancestral
  icon: iska_utils:ancient_table
  parent: hubs/entropy_materials.md
  position: 12
item_ids:
  - iska_utils:ancient_table
categories:
  - Materiais de Entropia
---
# Mesa Ancestral

<ItemImage id="iska_utils:ancient_table" />

## O que faz

A **Mesa Ancestral** executa as mesmas fabricações especiais da <ItemImage id="iska_utils:ancient_tablet" /> **Tabuleta Antiga**, mas **automaticamente**. A **ordem dos ingredientes não importa**, e layouts errados nunca destroem suas entradas.

O combustível é a <ItemImage id="iska_utils:drop_of_entropy" /> **Gota de Entropia**. Cada gota colocada no espaço de combustível é convertida em **combustível interno** (sem NBT de item). A mesa mantém um grande buffer interno de combustível; um comparador lê **apenas** o quão cheio está o espaço físico de combustível, não o buffer interno.

## Como usar

1. Coloque os ingredientes na grade de **entrada** (a contagem de itens por espaço importa).
2. Ponha **Gota de Entropia** no espaço de **combustível** (um item só é consumido quando o buffer consegue absorver uma unidade inteira de combustível).
3. Pegue os resultados na grade de **saída** quando a fabricação terminar.
4. Use o botão de **redstone** ao lado do espaço de combustível (alinhado com a primeira linha de entrada) para controlar quando a mesa funciona (mesmos modos da Fábrica).

Role as grades de entrada e saída quando tiver mais de nove espaços visíveis.

Um **comparador** no bloco emite **0–15** a partir **apenas da contagem do espaço de combustível** (espaço vazio = 0, pilha cheia = 15). Ele **não** reflete combustível interno nem o preenchimento de entrada/saída — útil para ver quando o espaço de combustível precisa ser reabastecido.

## Dicas

- Algumas fabricações, como o <ItemImage id="iska_utils:entropy_crystal" /> **Cristal de Entropia**, consomem mais combustível interno por operação que as mais simples.