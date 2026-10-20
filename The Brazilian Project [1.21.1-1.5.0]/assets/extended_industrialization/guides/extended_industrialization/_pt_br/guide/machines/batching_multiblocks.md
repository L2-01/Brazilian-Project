---
navigation:
  title: "Multiblocos de Lote"
  icon: "processing_array"
  parent: extended_industrialization:machines.md
categories:
  - Máquinas
item_ids:
  - extended_industrialization:large_steam_furnace
  - extended_industrialization:large_steam_macerator
  - extended_industrialization:large_electric_furnace
  - extended_industrialization:large_electric_macerator
  - extended_industrialization:processing_array
---

# Multiblocos de Lote

Certos multiblocos são capazes de funcionar como uma máquina normal do seu tipo, mas com um multiplicador aplicado à
quantidade de entradas que podem processar de uma só vez. Isso quer dizer que um multibloco capaz de executar um determinado
tipo de receita em lotes de Y pode consumir entre 1x e Yx a quantidade de entradas de uma vez e então produzir os resultados
de acordo com o tamanho do seu lote. A quantidade de EU/t consumida pela máquina também será multiplicada pela quantidade de
lotes que ela está executando no momento.

A quantidade de lotes que um multibloco de lote consegue executar varia. Para ver os valores específicos, consulte o tooltip
no item da máquina.

Exatamente como outras máquinas operam, estas não conseguem executar mais de uma receita por vez.

## Fornalha Grande

A quantidade de lotes que a Fornalha Elétrica Grande consegue executar é determinada pelas bobinas usadas no multibloco,
semelhante a como o Alto-forno Elétrico é construído. Para o tamanho de lote que uma bobina fornece na fornalha, consulte o
tooltip da bobina em questão.

<Row>
	<RecipeFor id="extended_industrialization:large_steam_furnace" />
	<RecipeFor id="extended_industrialization:large_electric_furnace" />
</Row>

<GameScene zoom="2" interactive={true} fullWidth={true}>
    <MultiblockShape controller="extended_industrialization:large_steam_furnace" />
    <MultiblockShape controller="extended_industrialization:large_electric_furnace" x="-6" y="-1" z="-6" />
</GameScene>

## Macerador Grande

<Row>
	<RecipeFor id="extended_industrialization:large_steam_macerator" />
	<RecipeFor id="extended_industrialization:large_electric_macerator" />
</Row>

<GameScene zoom="2" interactive={true} fullWidth={true}>
    <MultiblockShape controller="extended_industrialization:large_steam_macerator" />
    <MultiblockShape controller="extended_industrialization:large_electric_macerator" x="-6" z="-6" />
</GameScene>

## Matriz de Processamento

A Matriz de Processamento é capaz de executar lotes de qualquer máquina de fabricação elétrica não multibloco que seja
fornecida a ela em sua interface. O tamanho dos lotes que a Matriz de Processamento consegue executar é limitado pelo seu
tamanho e pela quantidade de máquinas colocadas dentro dela.

<RecipeFor id="extended_industrialization:processing_array" />

<GameScene zoom="2" interactive={true} fullWidth={true}>
    <MultiblockShape controller="extended_industrialization:processing_array" />
    <MultiblockShape controller="extended_industrialization:processing_array" useBigShape={true} x="-6" z="-8" />
</GameScene>