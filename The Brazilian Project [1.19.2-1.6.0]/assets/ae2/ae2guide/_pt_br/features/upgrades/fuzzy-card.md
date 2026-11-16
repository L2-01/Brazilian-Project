---
categories:
  - Upgrades
item_ids:
  - ae2:fuzzy_card
navigation:
  title: Cartão de Imprecisão
---

Usado para adicionar comportamento impreciso ao <ItemLink
id="formation_plane"/>, <ItemLink
id="export_bus"/>, <ItemLink
id="import_bus"/>, <ItemLink
id="level_emitter"/>, <ItemLink
id="storage_bus"/>, <ItemLink
id="view_cell"/> e à <ItemLink
id="item_storage_cell_1k"/>, bem como a outras [células de armazenamento](../me-network/storage-cells.md) não espaciais.

### Detalhes da Comparação Imprecisa

Abaixo há um exemplo de como funcionam os modos de comparação imprecisa de dano: o lado esquerdo é a
configuração do ponto; o topo é o item comparado.

| 25%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Totalmente Reparada |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada  | ✅                  | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            | ✅                  | ✅                  | ✅                  |

| 50%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Totalmente Reparada |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada  | ✅                  | ✅                  | \*\*\*\*            | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            | \*\*\*\*            | ✅                  | ✅                  |

| 75%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Totalmente Reparada |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada  | ✅                  | ✅                  | \*\*\*\*            | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            |                     | ✅                  | ✅                  |

| 99%                    | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Totalmente Reparada |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada  | ✅                  | ✅                  | ✅                  | \*\*\*\*            |
| Picareta Totalmente Reparada | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            | ✅                  |

| Ignorar                | Picareta 10% Danificada | Picareta 30% Danificada | Picareta 80% Danificada | Picareta Totalmente Reparada |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| Picareta Quase Quebrada  | ✅                  | ✅                  | ✅                  | **✅**              |
| Picareta Totalmente Reparada | **✅**              | **✅**              | **✅**              | ✅                  |

<RecipeFor id="fuzzy_card" />
