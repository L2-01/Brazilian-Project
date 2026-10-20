---
navigation:
  title: Dinamite de Entropia
  icon: iska_utils:entropy_tnt
  parent: hubs/entropy_materials.md
  position: 4
item_ids:
  - iska_utils:entropy_tnt
categories:
  - Materiais de Entropia
---
# Dinamite de Entropia

<ItemImage id="iska_utils:entropy_tnt" />

Um bloco de explosivo de entropia altamente instável. Manuseie com extremo cuidado.

## Comportamento

Quando colocada, ela detona se o bloco receber energia de **redstone** (inclusive quando já é colocada energizada). Uma mudança de sinal de vizinho também pode dispará-la.

A explosão é um **elipsoide progressivo**:

| Eixo | Raio (blocos) |
|------|-----------------|
| Horizontal (X / Z) | **250** |
| Vertical (Y) | **50** |

Ela destrói o terreno nesse volume, incluindo blocos normalmente inquebráveis (como a rocha-mãe). A explosão se expande ao longo do tempo em vez de limpar a área toda instantaneamente.