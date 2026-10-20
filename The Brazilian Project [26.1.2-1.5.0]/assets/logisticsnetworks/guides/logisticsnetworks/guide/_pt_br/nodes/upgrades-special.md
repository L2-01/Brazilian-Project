---
item_ids: [logisticsnetworks:dimensional_upgrade, logisticsnetworks:mekanism_chemical_upgrade, logisticsnetworks:ars_source_upgrade, logisticsnetworks:network_upgrade]
navigation:
  title: Melhorias Especiais
  parent: nodes/index.md
  icon: logisticsnetworks:dimensional_upgrade
  position: 5
---

# Melhorias Especiais

As melhorias especiais não mudam os tetos de vazão de um nó. A Melhoria Dimensional destrava transferências entre dimensões e a Melhoria de Rede destrava acesso à rede de armazenamento; ambas podem ser combinadas com uma [melhoria de desempenho](upgrades-performance.md) no mesmo nó. Os itens de melhoria Química e de Fonte são mantidos para compatibilidade futura, mas estão inativos no momento.

Os slots de melhoria ficam no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas, mas melhorias ativas diferentes podem dividir os quatro slots.

## Melhoria Dimensional

**Destrava transferências entre dimensões.** Sem esta melhoria, um nó só conversa com nós na mesma dimensão. Instale a Melhoria Dimensional e o nó pode transferir de e para nós em outras dimensões — entre o Overworld e o Nether, o End e o Overworld, ou qualquer dimensão de mod.

**As duas pontas precisam dela.** Tanto o nó Remetente quanto o Destinatário precisam de uma Melhoria Dimensional instalada. Instalá-la em só um lado não basta — o motor verifica os dois nós antes de permitir um salto entre dimensões.

Dentro da mesma dimensão a melhoria não faz nada extra — as transferências normais funcionam sem ela.

<RecipeFor id="logisticsnetworks:dimensional_upgrade" />

## Melhoria Química do Mekanism

Este item é mantido para compatibilidade futura. No momento ele não destrava canais ou transferências de Químico. Sua receita só aparece quando o Mekanism está carregado.

<RecipeFor id="logisticsnetworks:mekanism_chemical_upgrade" fallbackText="Instale o Mekanism para desbloquear esta receita." />

## Melhoria de Fonte do Ars

Este item é mantido para compatibilidade futura. No momento ele não destrava canais ou transferências de Fonte. Sua receita só aparece quando o Ars Nouveau está carregado.

<RecipeFor id="logisticsnetworks:ars_source_upgrade" fallbackText="Instale o Ars Nouveau para desbloquear esta receita." />

## Melhoria de Rede

**Destrava acesso direto à rede de armazenamento.** Um nó com esta melhoria numa Interface do Applied Energistics 2 ou do Refined Storage move itens e fluidos direto por toda a rede de armazenamento conectada, como descrito em [Configurações de Canal](channel-settings.md). Sem ela, a Interface é só mais um inventário e o nó só vê o que está estocado na própria Interface.

Cada nó numa Interface que deva alcançar a rede precisa da sua própria Melhoria de Rede. Nós em outros blocos não precisam dela.

Há duas receitas, uma por mod de armazenamento. Cada uma só aparece quando aquele mod está carregado.

<Recipe id="logisticsnetworks:network_upgrade_ae2" fallbackText="Instale o Applied Energistics 2 para desbloquear esta receita." />

<Recipe id="logisticsnetworks:network_upgrade_refinedstorage" fallbackText="Instale o Refined Storage para desbloquear esta receita." />
