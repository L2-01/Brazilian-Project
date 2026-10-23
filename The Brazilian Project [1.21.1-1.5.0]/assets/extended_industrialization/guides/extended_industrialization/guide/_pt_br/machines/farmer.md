---
navigation:
  title: "Fazendeiro"
  icon: "steam_farmer"
  parent: extended_industrialization:machines.md
categories:
  - machines
item_ids:
  - extended_industrialization:steam_farmer
  - extended_industrialization:electric_farmer
---

# Fazendeiro

<Row>
	<RecipeFor id="extended_industrialization:steam_farmer" />
	<RecipeFor id="extended_industrialization:electric_farmer" />
</Row>

O fazendeiro não é uma máquina típica que executa receitas; em vez disso, ele lavra e hidrata o solo, planta, fertiliza
e colhe plantações, plantas e árvores. Nem todas essas tarefas precisam ser usadas para o fazendeiro funcionar;
na verdade, às vezes você pode querer evitar certas tarefas. Por exemplo, ao trabalhar com árvores, você não iria querer que o
fazendeiro lavrasse ou hidratasse o solo.

O fazendeiro não operará a menos que receba energia suficiente. O fazendeiro de vapor requer 32 EU/t de vapor,
e o fazendeiro elétrico requer 64 EU/t.

A terra exigida como parte do multibloco do fazendeiro pode ser substituída por qualquer bloco que tenha a tag
`#extended_industrialization:farmer_dirt`.

## Tarefas

### Lavrar o Solo

Quando ativado nas configurações de forma do multibloco, os blocos de terra que fazem parte do multibloco serão convertidos em
terra arada, como se uma enxada tivesse sido usada neles.

### Hidratar o Solo

Quando o fazendeiro recebe água através de uma escotilha de entrada, ele garante que toda a terra arada seja mantida hidratada sem
a necessidade de água colocada por perto.

### Plantar

Quando o fazendeiro recebe itens plantáveis numa escotilha de entrada, ele os planta em quaisquer blocos adequados na sua
área de operação. Apenas itens com a tag de item `#extended_industrialization:farmer_plantable` podem ser plantados.

### Fertilizar

A fertilização é exclusiva do fazendeiro elétrico. Quando recebe um fertilizante fluido aceitável (conforme mostrado no EMI) numa
escotilha de entrada, o fazendeiro aplica um efeito semelhante ao de farinha de osso nas plantas da sua área de operação. Esse efeito
tipo farinha de osso pode se aplicar a plantas que normalmente não podem receber farinha de osso, como cactos e cana-de-açúcar.

### Colher

Quando há uma planta que atingiu maturidade total (como trigo totalmente crescido, ou uma muda que virou árvore)
e há espaço de saída suficiente numa escotilha de saída, ela será quebrada e armazenada.

Itens com a tag `#extended_industrialization:farmer_voidable` têm baixa prioridade para serem armazenados nas escotilhas de saída e,
se não houver espaço para eles quando seriam derrubados por um bloco colhido, eles serão descartados. Um exemplo
disso são <ItemLink id="minecraft:stick" />s e <ItemLink id="minecraft:apple" />s, o que significa que você poderia travar os
espaços de saída da(s) sua(s) escotilha(s) de saída apenas para troncos e mudas, sem precisar se preocupar em armazenar esses itens.

## Fazendeiro de Vapor

<GameScene zoom="1" interactive={true} fullWidth={true}>
    <MultiblockShape controller="extended_industrialization:steam_farmer" />
    <MultiblockShape controller="extended_industrialization:steam_farmer" useBigShape={true} x="-10" z="-10" />
</GameScene>

## Fazendeiro Elétrico

<GameScene zoom="1" interactive={true} fullWidth={true}>
    <MultiblockShape controller="extended_industrialization:electric_farmer" />
    <MultiblockShape controller="extended_industrialization:electric_farmer" useBigShape={true} x="-12" z="-12" />
</GameScene>
