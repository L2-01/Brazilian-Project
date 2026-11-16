---
navigation:
    title: "Tanque Portátil"
    position: 2
    parent: storage/index.md
    icon: portable_tank
item_ids:
  - portable_tank
  - infinite_water_tank
  - infinite_lava_tank
---

# Tanque Portátil

<BlockImage id="portable_tank" scale="4" />

**Tanques Portáteis** serão sua opção de armazenamento de fluidos de uso geral. Eles têm E/S configurável e podem
receber [melhorias](../fundamentals/upgrade_system.md). Os tanques retêm seu conteúdo ao serem quebrados e têm
**capacidade de manipulação de fluido** tanto como itens quanto como entidades de bloco. Como itens, não têm limite de
transferência. Como entidades de bloco, seu limite de transferência é 1/10 da capacidade total.

> Cuidado ao remover melhorias de capacidade! Se o fluido armazenado exceder a nova capacidade, qualquer excesso será destruído.

## Variantes Infinitas Especiais

<Row>
<BlockImage id="infinite_water_tank" scale="2" />
<BlockImage id="infinite_lava_tank" scale="2" />
</Row>

Estes tanques portáteis têm nome e aparência únicos. Eles fornecem uma fonte e um limite de transferência de fluido
funcionalmente infinitos (`Integer.MAX_VALUE`, se precisarmos ser exatos). Sua saída automática também é mais rápida
que a da variante normal: 5 tiques contra 20.
