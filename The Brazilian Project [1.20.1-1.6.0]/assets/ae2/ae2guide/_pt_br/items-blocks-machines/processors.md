---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Processadores
  icon: logic_processor
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:logic_processor
- ae2:calculation_processor
- ae2:engineering_processor
- ae2:printed_silicon
- ae2:printed_logic_processor
- ae2:printed_calculation_processor
- ae2:printed_engineering_processor
- ae2:silicon
---

# Processadores

<Row>
  <ItemImage id="logic_processor" scale="4" />

  <ItemImage id="calculation_processor" scale="4" />

  <ItemImage id="engineering_processor" scale="4" />
</Row>

Processadores são um dos ingredientes primários em [dispositivos](../ae2-mechanics/devices.md) e máquinas do AE2. Também são um dos seus primeiros
grandes desafios de automação. Há três tipos de processador, feitos com ouro, <ItemLink id="certus_quartz_crystal" />
e diamante, respectivamente. Eles são feitos usando [prensas](presses.md) num <ItemLink id="inscriber" />, num processo
de várias etapas (normalmente alcançado via uma série de inscritores e canos filtrados).

## Etapas de Produção

<Column gap="5">
  1.  Reúna/faça os ingredientes necessários: silício, redstone, ouro, <ItemLink id="certus_quartz_crystal" />, diamante.

  <RecipeFor id="silicon" />

  <br />

  2.  Prense os componentes de circuito impresso pré-requisitos

  <Row>
    <RecipeFor id="printed_silicon" />

    <RecipeFor id="printed_logic_processor" />
  </Row>

  <Row>
    <RecipeFor id="printed_calculation_processor" />

    <RecipeFor id="printed_engineering_processor" />
  </Row>

  <br />

  3.  Montagem final

  <Row>
    <RecipeFor id="logic_processor" />

    <RecipeFor id="calculation_processor" />
  </Row>

  <RecipeFor id="engineering_processor" />
</Column>
