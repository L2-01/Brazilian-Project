---
item_ids: [logisticsnetworks:dimensional_upgrade, logisticsnetworks:mekanism_chemical_upgrade, logisticsnetworks:ars_source_upgrade, logisticsnetworks:network_upgrade]
navigation:
  title: Melhorias Especiais
  parent: nodes/index.md
  icon: logisticsnetworks:dimensional_upgrade
  position: 5
---

# Melhorias Especiais

Melhorias especiais não mudam os tetos de vazão de um nó. A Melhoria Dimensional desbloqueia transferências entre dimensões e a Melhoria de Rede desbloqueia acesso a rede de armazenamento; ambas podem ser combinadas com uma [melhoria de desempenho](upgrades-performance.md) no mesmo nó. Os itens de melhoria Química do Mekanism e de Fonte de Ars são mantidos para compatibilidade futura, mas estão atualmente inativos.

Os espaços de melhoria ficam no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas, mas melhorias ativas diferentes podem dividir os quatro espaços.

## Melhoria Dimensional

**Desbloqueia transferências entre dimensões.** Sem esta melhoria, um nó só pode falar com nós na mesma dimensão. Instale a Melhoria Dimensional e o nó pode transferir de e para nós em outras dimensões — entre a Superfície e o Nether, o End e a Superfície, ou qualquer dimensão de mod.

**As duas pontas precisam dela.** Tanto o nó Emissor quanto o nó Receptor precisam de uma Melhoria Dimensional instalada. Instalar em um lado só não basta — o motor verifica os dois nós antes de permitir um salto entre dimensões.

Dentro da mesma dimensão a melhoria não faz nada extra — transferências normais funcionam sem ela.

<RecipeFor id="logisticsnetworks:dimensional_upgrade" />

## Melhoria Química do Mekanism

Este item é mantido para compatibilidade futura. Atualmente ele não desbloqueia canais ou transferências químicas. Sua receita só aparece quando o Mekanism está carregado.

<RecipeFor id="logisticsnetworks:mekanism_chemical_upgrade" fallbackText="Install Mekanism to unlock this recipe." />

## Melhoria de Fonte de Ars

Este item é mantido para compatibilidade futura. Atualmente ele não desbloqueia canais ou transferências de Fonte. Sua receita só aparece quando o Ars Nouveau está carregado.

<RecipeFor id="logisticsnetworks:ars_source_upgrade" fallbackText="Install Ars Nouveau to unlock this recipe." />

## Melhoria de Rede

**Desbloqueia acesso direto à rede de armazenamento.** Um nó com esta melhoria numa Interface de Applied Energistics 2 ou Refined Storage move itens e fluidos direto por toda a rede de armazenamento conectada, como descrito em [Configurações de Canal](channel-settings.md). Sem ela, a Interface é só mais um inventário e o nó só vê o que está estocado na própria Interface.

Cada nó numa Interface que deve alcançar a rede precisa da sua própria Melhoria de Rede. Nós em outros blocos não precisam dela.

Existem duas receitas, uma por mod de armazenamento. Cada uma só aparece quando aquele mod está carregado.

<Recipe id="logisticsnetworks:network_upgrade_ae2" fallbackText="Install Applied Energistics 2 to unlock this recipe." />

<Recipe id="logisticsnetworks:network_upgrade_refinedstorage" fallbackText="Install Refined Storage to unlock this recipe." />
