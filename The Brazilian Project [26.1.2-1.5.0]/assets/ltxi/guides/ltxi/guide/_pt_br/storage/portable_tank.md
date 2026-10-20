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

**Tanques Portáteis** serão sua opção de armazenamento de fluidos de uso geral. Eles têm E/S configurável e podem ser
[melhorados](../fundamentals/upgrade_system.md). Tanques retêm seu conteúdo quando quebrados e têm **capacidade de manuseio de fluidos**
tanto como itens quanto como entidades de bloco. Como itens, não têm limite de transferência. Como entidades de bloco, seu limite de transferência é 1/10
da sua capacidade total.

> Cuidado ao remover melhorias que concedem capacidade! Se o fluido armazenado exceder a nova capacidade, o excesso será destruído.

## Variantes Infinitas Especiais

<Row>
<BlockImage id="infinite_water_tank" scale="2" />
<BlockImage id="infinite_lava_tank" scale="2" />
</Row>

Estes tanques portáteis têm nome e aparência únicos. Eles fornecem uma fonte funcionalmente infinita (`Integer.MAX_VALUE` se precisarmos
ser exatos) e limite de transferência de fluido. Sua saída automática também é mais rápida que a da variante normal: 5 tiques contra 20.