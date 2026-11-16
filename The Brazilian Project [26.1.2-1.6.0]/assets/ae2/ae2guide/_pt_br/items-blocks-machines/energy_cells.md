---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Células de Energia
  icon: energy_cell
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_cell
- ae2:dense_energy_cell
- ae2:creative_energy_cell
---

# Células de Energia

<Row gap="20">
  <BlockImage id="energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="8" />
</Row>

Células de energia dão à rede mais armazenamento de [energia](../ae2-mechanics/energy.md). Uma certa quantidade de buffer de energia ajuda a suavizar
picos de consumo quando grandes quantidades de itens são inseridas ou extraídas, e quantidades maiores de armazenamento de energia
permitem que a rede funcione enquanto energia não está sendo gerada (como à noite com painéis solares) ou aguentam o consumo instantâneo
massivo do [armazenamento espacial](../ae2-mechanics/spatial-io.md).

## Barras de Carga

<Row>
<BlockImage id="energy_cell" scale="4" p:fullness="0" />
<BlockImage id="energy_cell" scale="4" p:fullness="1" />
<BlockImage id="energy_cell" scale="4" p:fullness="2" />
<BlockImage id="energy_cell" scale="4" p:fullness="3" />
<BlockImage id="energy_cell" scale="4" p:fullness="4" />
</Row>

As barras na lateral de uma célula correspondem a quanta energia ela tem.

*   0 quando abaixo de 25% de carga
*   1 quando entre 25% e 50% de carga
*   2 quando entre 50% e 75% de carga
*   3 quando entre 75% e 99% de carga
*   4 quando acima de 99% de carga

## Tipos de Célula

*   A <ItemLink id="energy_cell" /> pode armazenar 200k AE, e apenas uma deve ser suficiente para a maioria dos casos, lidando com os picos de energia
    do uso normal da rede com facilidade.
*   A <ItemLink id="dense_energy_cell" /> pode armazenar 1,6M AE e serve para quando você quer operar uma rede a partir de energia armazenada ou
    lidar com o consumo instantâneo massivo de grandes configurações de [armazenamento espacial](../ae2-mechanics/spatial-io.md).
*   A <ItemLink id="creative_energy_cell" /> é um item criativo para testes, fornecendo ENERGIA ILIMITADAAAA ou algo assim.

## Receitas

<Row>
  <RecipeFor id="energy_cell" />

  <RecipeFor id="dense_energy_cell" />
</Row>
