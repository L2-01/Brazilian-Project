---
item_ids: [logisticsnetworks:dimensional_upgrade, logisticsnetworks:mekanism_chemical_upgrade, logisticsnetworks:ars_source_upgrade, logisticsnetworks:network_upgrade]
navigation:
  title: Melhorias Especiais
  parent: nodes/index.md
  icon: logisticsnetworks:dimensional_upgrade
  position: 5
---

# Melhorias Especiais

As melhorias especiais não mudam os tetos de vazão de um nó. Elas desbloqueiam **novas capacidades** — transferências entre dimensões, produtos químicos do Mekanism, fonte do Ars Nouveau, acesso à rede de armazenamento. Cada uma ocupa um slot de melhoria e pode ser combinada com uma [melhoria de desempenho](upgrades-performance.md) no mesmo nó.

Os slots de melhoria ficam no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas, mas melhorias diferentes se combinam bem — um nó avançado típico pode ter uma de Netherita + uma Dimensional + uma Química do Mekanism + uma de Fonte de Ars.

## Melhoria Dimensional

**Destrava transferências entre dimensões.** Sem esta melhoria, um nó só conversa com nós na mesma dimensão. Instale a Melhoria Dimensional e o nó pode transferir de e para nós em outras dimensões — entre o Overworld e o Nether, o End e o Overworld, ou qualquer dimensão de mod.

**As duas pontas precisam dela.** Tanto o nó Emissor quanto o Receptor precisam de uma Melhoria Dimensional instalada. Instalá-la em só um lado não basta — o motor verifica os dois nós antes de permitir um salto entre dimensões.

Dentro da mesma dimensão a melhoria não faz nada extra — as transferências normais funcionam sem ela.

<RecipeFor id="logisticsnetworks:dimensional_upgrade" />

## Melhoria Química do Mekanism

**Desbloqueia o tipo de canal Químico.** Sem esta melhoria, a configuração Tipo em [Configurações de Canal](channel-settings.md) não pode ser definida como Químico no nó. Instalada, o nó pode detectar e transferir produtos químicos do Mekanism (gases, tipos de infusão, pigmentos e polpas) por qualquer canal cujo Tipo esteja definido como Químico.

A melhoria só importa no nó onde o canal está configurado. Um Emissor de Químicos precisa da melhoria; um Receptor de Químicos também precisa da melhoria no seu próprio nó. Nós que não movem produtos químicos não precisam dela.

Exige o mod **Mekanism** instalado tanto para fabricar quanto para usar. A receita abaixo só aparece quando o Mekanism está carregado.

<RecipeFor id="logisticsnetworks:mekanism_chemical_upgrade" fallbackText="Instale o Mekanism para desbloquear esta receita." />

## Melhoria de Fonte de Ars

**Desbloqueia o tipo de canal Fonte.** Mesmo padrão da Melhoria Química do Mekanism, mas para a fonte do Ars Nouveau. Instalada, o nó pode definir o Tipo de um canal como Fonte e mover fonte entre Jarras de Fonte do Ars Nouveau e qualquer outro bloco compatível com fonte.

Cada nó que move fonte (Emissor ou Receptor) precisa da sua própria Melhoria de Fonte de Ars.

Exige o mod **Ars Nouveau** instalado tanto para fabricar quanto para usar. A receita abaixo só aparece quando o Ars Nouveau está carregado.

<RecipeFor id="logisticsnetworks:ars_source_upgrade" fallbackText="Instale o Ars Nouveau para desbloquear esta receita." />

## Melhoria de Rede

**Destrava acesso direto à rede de armazenamento.** Um nó com esta melhoria numa Interface do Applied Energistics 2 ou do Refined Storage move itens e fluidos direto por toda a rede de armazenamento conectada, como descrito em [Configurações de Canal](channel-settings.md). Sem ela, a Interface é só mais um inventário e o nó só vê o que está estocado na própria Interface.

Cada nó numa Interface que deva alcançar a rede precisa da sua própria Melhoria de Rede. Nós em outros blocos não precisam dela.

Há duas receitas, uma por mod de armazenamento. Cada uma só aparece quando aquele mod está carregado.

<Recipe id="logisticsnetworks:network_upgrade_ae2" fallbackText="Instale o Applied Energistics 2 para desbloquear esta receita." />

<Recipe id="logisticsnetworks:network_upgrade_refinedstorage" fallbackText="Instale o Refined Storage para desbloquear esta receita." />
