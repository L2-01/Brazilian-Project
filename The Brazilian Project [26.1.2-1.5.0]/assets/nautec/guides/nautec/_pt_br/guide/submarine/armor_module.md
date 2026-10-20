---
navigation:
  title: Módulo de Blindagem
  icon: nautec:armor_module
  position: 8
  parent: submarine/submarine-index.md
item_ids:
  - nautec:armor_module
---

# <Color id="light_purple">Módulo de Blindagem</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="armor_module" scale="2"/>
  Revestimento mais pesado para o casco.
</Column>

O Módulo de Blindagem eleva a resistência da armadura do casco e impede que golpes o empurrem.

***

## <Color id="gold">O que Ele Muda</Color>

| | Sem | Com |
|---|---|---|
| Armadura | 20 | 20 |
| Resistência da armadura | 8 (diamante) | 12 (netherita) |
| Repulsão | Normal | Nenhuma |

A resistência reduz quanto da armadura um golpe grande atravessa, então o módulo importa mais contra atacantes pesados. Sem repulsão, um golpe não o joga mais para fora do rumo.

É passivo, funciona de qualquer slot e não usa energia. Tire-o e o casco volta direto aos números de fábrica. Um basta, já que um segundo não adiciona nada. A resistência que ele dá é configurável (`submarineArmorModuleToughness`).

Combine-o com um [Módulo de Escudo](shield_module.md) para absorver o que a armadura deixa passar. Veja [Casco e Reparo](submarine_hull.md) para o resto das defesas do casco.

***

### <Color id="aqua">Receita do Módulo de Blindagem</Color>

<Recipe id="nautec:armor_module"/>