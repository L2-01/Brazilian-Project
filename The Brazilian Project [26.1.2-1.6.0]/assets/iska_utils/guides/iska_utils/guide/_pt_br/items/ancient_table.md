---
navigation:
  title: Mesa Ancestral
  icon: iska_utils:ancient_table
  parent: hubs/entropy_materials.md
  position: 12
item_ids:
  - iska_utils:ancient_table
categories:
  - Entropy materials
---
# Mesa Ancestral

<ItemImage id="iska_utils:ancient_table" />

## O que faz

A **Mesa Ancestral** executa as mesmas fabricações especiais da <ItemImage id="iska_utils:ancient_tablet" /> **Tabuleta Antiga**, mas **automaticamente**. A **ordem dos ingredientes não importa**, e layouts errados nunca destroem suas entradas.

O combustível é <ItemImage id="iska_utils:drop_of_entropy" /> **Gota de Entropia**. Cada gota colocada no slot de combustível é convertida em **combustível interno** (sem NBT do item). A mesa guarda um grande buffer interno de combustível; um comparador lê **apenas** o quanto o slot físico de combustível está cheio, não o buffer interno.

## Como usar

1. Coloque os ingredientes na grade de **entrada** (as contagens de pilha por slot importam).
2. Ponha **Gota de Entropia** no slot de **combustível** (um item só é consumido quando o buffer consegue absorver uma unidade inteira de combustível).
3. Retire os resultados da grade de **saída** quando a fabricação terminar.
4. Use o botão de **redstone** ao lado do slot de combustível (alinhado com a primeira linha de entrada) para controlar quando a mesa funciona (mesmos modos da Fábrica).

Role as grades de entrada e saída quando houver mais de nove slots visíveis.

Um **comparador** no bloco emite **0–15** a partir **somente da contagem da pilha no slot de combustível** (slot vazio = 0, pilha cheia = 15). Ele **não** reflete o combustível interno nem o preenchimento de entrada/saída — útil para ver quando o slot de combustível precisa de reposição.

## Dicas

- Algumas fabricações, como <ItemImage id="iska_utils:entropy_crystal" /> **Cristal de Entropia**, consomem mais combustível interno por operação que outras mais simples.
