---
navigation:
    title: Processamento de Minérios
    icon: crushed_silver_ore
    position: 21
---

# Processamento de Minérios

À medida que suas instalações crescem, provavelmente cresce também sua intolerância a viagens de mineração longas e
árduas. Provavelmente. De qualquer forma, nossas máquinas são capazes de processar minérios por uma cadeia complexa
de 5 estágios que pode multiplicar seus minérios por um fator médio de **10,125**! 

Caso isso não pareça atraente, você ainda precisa processar ao menos minérios de Titânio, Olivina e Cobre para extrair
Tungstênio, Piroxênio e Rênio respectivamente. 

<ItemGrid>
<ItemIcon id="raw_silver" />
<ItemIcon id="silver_ore" />
</ItemGrid>

Você começará com matérias-primas ou blocos de minério que serão processados por suas formas Britada, Lavada, Pedaço,
Solução e Cristal.

<ItemGrid>
<ItemIcon id="crushed_silver_ore" />
<ItemIcon id="washed_silver_ore" />
<ItemIcon id="silver_ore_chunk" />
<ItemIcon id="silver_ore_solution" />
<ItemIcon id="silver_ore_crystal" />
</ItemGrid>

A qualquer momento você pode parar o processamento e fundir o material de minério em suas respectivas formas de produto
final (ou seja, Minério de Prata Britado ou Solução de Minério de Prata em Lingote de Prata). O estágio 1 garante a
duplicação do minério, cada estágio seguinte tem 50% de chance de duplicar cada item processado. Isso significa que, em
*média*, os estágios 2-5 têm multiplicadores médios de 3x, 4.5x, 6.75x e 10.125x.

## Estágio 1

O primeiro estágio do processamento de minérios é feito pelo [Moedor](machines/processing/grinder.md), que tritura
matérias-primas/blocos de minério em Minério Britado.

## Estágio 2

A [Hidropeneira](machines/processing/hydrosieve.md) processa Minérios Britados em Minérios Lavados. Este passo consome Água, embora
seja um recurso tão abundante que quase não vale a pena mencionar. Quase.

## Estágio 3

O [Injetor Voltaico](machines/processing/voltaic_injector.md) refina Minérios Lavados em Pedaços de Minério. Você precisará de um
cristal de [Olivina](resources/gems.md#olivine) para fabricar o Injetor Voltaico, então você já deveria ter uma
Hidropeneira montada para produzir ao menos Olivina passivamente.

### Piroxênio e Tungstênio

<ItemGrid>
<ItemIcon id="pyroxene" />
<ItemIcon id="tungsten_trioxide" />
</ItemGrid>

Piroxênio e Trióxido de Tungstênio aparecem como subprodutos do processamento de Olivina e Titânio.

## Estágio 4

O [Laboratório Químico](machines/processing/chem_lab.md) dissolve Pedaços de Minério em frascos de Solução de Minério usando uma pequena
quantidade de [Ácido Sulfúrico](resources/acids.md#sulfuric-acid). Uma linha de produção dedicada de Ácido Sulfúrico apenas
para o processamento de minérios é recomendada.

## Estágio 5

A [Eletrocentrífuga](machines/processing/electrocentrifuge.md) precipita a Solução de Minério em Cristais de Minério com
[Ácido Clorídrico](resources/acids.md#hydrochloric-acid). Mais uma vez, uma linha de fornecimento de ácido dedicada é recomendada,
já que os resíduos da produção de Borracha de Silicone e Fluoropolímero não são suficientes.

### Óxido de Rênio(VII)

<ItemGrid>
<ItemIcon id="rhenium_7_oxide" />
</ItemGrid>

O Óxido de Rênio(VII) aparece no final do processamento de minérios de Cobre. Se o fornecimento de ácido for um gargalo
tão tarde na árvore de progressão, priorize minérios de cobre, já que o Rênio é usado nas melhores melhorias e equipamentos.
