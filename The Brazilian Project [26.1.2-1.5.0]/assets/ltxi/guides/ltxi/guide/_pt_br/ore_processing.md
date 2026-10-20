---
navigation:
    title: Processamento de Minérios
    icon: crushed_silver_ore
    position: 21
---

# Processamento de Minérios

À medida que suas instalações crescem, provavelmente também cresce sua intolerância a longas e árduas expedições de mineração. Provavelmente. De qualquer forma, nossas
máquinas são capazes de processar minérios por uma cadeia complexa de 5 estágios que pode multiplicar seus minérios por um fator médio
de **10,125**!

Caso isso não pareça atraente, você ainda precisa processar pelo menos minérios de Titânio, Olivina e Cobre para extrair
Tungstênio, Piroxênio e Rênio respectivamente.

<ItemGrid>
<ItemIcon id="raw_silver" />
<ItemIcon id="silver_ore" />
</ItemGrid>

Você começará com matérias-primas ou blocos de minério, que serão processados através das suas formas Britada, Lavada, Pedaço,
Solução e Cristal.

<ItemGrid>
<ItemIcon id="crushed_silver_ore" />
<ItemIcon id="washed_silver_ore" />
<ItemIcon id="silver_ore_chunk" />
<ItemIcon id="silver_ore_solution" />
<ItemIcon id="silver_ore_crystal" />
</ItemGrid>

A qualquer momento você pode parar o processamento e fundir o material de minério nas suas respectivas formas de produto final (ex.: Minério de Prata
Britado ou Solução de Minério de Prata em Lingote de Prata). O estágio 1 garante duplicação do minério; cada estágio seguinte
tem 50% de chance de duplicar cada item processado. Isso significa que, *em média*, os estágios 2-5 têm multiplicadores médios de 3x,
4,5x, 6,75x e 10,125x.

## Estágio 1

O primeiro estágio do processamento de minérios é feito pelo [Moedor](machines/processing/grinder.md), que tritura
matérias-primas/blocos de minério em Minério Britado. Este é o único estágio que não requer melhorias nem o
[modo de receita](fundamentals/recipe_modes.md) de Processamento de Minérios. Ele está disponível bem cedo, então priorize conseguir um Moedor o quanto
antes.

## Estágio 2

<UpgradeEntry id="ore_process_2" />

A [Hidropeneira](machines/processing/hydrosieve.md) processará Minérios Britados em Minérios Lavados. Neste estágio você começará a
precisar do modo de receita de Processamento de Minérios, que não está disponível por padrão em nenhuma das máquinas. Você precisará
fabricar e instalar o módulo de melhoria acima na sua Hidropeneira.

## Estágio 3

<UpgradeEntry id="ore_process_3" />

O [Injetor Voltaico](machines/processing/voltaic_injector.md) refina Minérios Lavados em Pedaços de Minério. O custo dos módulos de
melhoria dá um salto para cima por volta deste ponto. Investir em módulos de melhoria de nível de energia é fortemente recomendado
neste ponto para evitar gargalos.

### Piroxênio e Tungstênio

<ItemGrid>
<ItemIcon id="pyroxene" />
<ItemIcon id="tungsten_trioxide" />
</ItemGrid>

Piroxênio e Trióxido de Tungstênio aparecerão como subprodutos do processamento de Olivina e Titânio.

## Estágio 4

<UpgradeEntry id="ore_process_4" />

O [Laboratório Químico](machines/processing/chem_lab.md) dissolverá Pedaços de Minério em frascos de Solução de Minério usando uma pequena
quantidade de [Ácido Sulfúrico](resources/acids.md#sulfuric-acid). Uma linha de produção dedicada de Ácido Sulfúrico somente
para o processamento de minérios é recomendada.

## Estágio 5

<UpgradeEntry id="ore_process_5" />

A [Eletrocentrífuga](machines/processing/electrocentrifuge.md) precipitará Solução de Minério em Cristais de Minério com
[Ácido Clorídrico](resources/acids.md#hydrochloric-acid). Mais uma vez, uma linha de suprimento dedicada de ácido é recomendada,
já que os resíduos da produção de Borracha de Silicone e Fluoropolímero não são suficientes.

### Óxido de Rênio(VII)

<ItemGrid>
<ItemIcon id="rhenium_7_oxide" />
</ItemGrid>

O Óxido de Rênio(VII) aparecerá no final do processamento de minérios de Cobre. Se o suprimento de ácido for de alguma forma um gargalo
tão tarde na árvore de progressão, priorize minérios de cobre, pois o Rênio é usado nas melhores melhorias e equipamentos.