---
item_ids: [logisticsnetworks:dimensional_upgrade, logisticsnetworks:mekanism_chemical_upgrade, logisticsnetworks:ars_source_upgrade, logisticsnetworks:network_upgrade]
navigation:
  title: Melhorias Especiais
  parent: nodes/index.md
  icon: logisticsnetworks:dimensional_upgrade
  position: 5
---

# Melhorias Especiais

Melhorias especiais não mudam os limites de vazão de um nó. Elas desbloqueiam **novas capacidades** — transferências entre dimensões, químicos do Mekanism, fonte do Ars Nouveau, acesso à rede de armazenamento. Cada uma ocupa um espaço de melhoria e pode ser combinada com uma [melhoria de desempenho](upgrades-performance.md) no mesmo nó.

Os espaços de melhoria ficam no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas, mas melhorias diferentes se combinam bem — um nó típico de ponta pode ter uma Netherita + uma Dimensional + uma Química do Mekanism + uma de Fonte de Ars.

## Melhoria Dimensional

**Desbloqueia transferências entre dimensões.** Sem esta melhoria, um nó só conversa com nós na mesma dimensão. Instale a Melhoria Dimensional e o nó pode transferir de e para nós em outras dimensões — entre a Superfície e o Nether, o End e a Superfície, ou qualquer dimensão de mod.

**As duas pontas precisam dela.** Tanto o nó Emissor quanto o nó Receptor precisam de uma Melhoria Dimensional instalada. Instalá-la em apenas um lado não basta — o motor verifica os dois nós antes de permitir um salto entre dimensões.

Dentro da mesma dimensão a melhoria não faz nada extra — transferências normais funcionam sem ela.

<RecipeFor id="logisticsnetworks:dimensional_upgrade" />

## Melhoria Química do Mekanism

**Desbloqueia o tipo de canal Químico.** Sem esta melhoria, a configuração de Tipo nas [Configurações de Canal](channel-settings.md) não pode ser definida como Químico no nó. Instalada, o nó pode detectar e transferir químicos do Mekanism (gases, tipos de infusão, pigmentos, polpas) por qualquer canal cujo Tipo seja Químico.

A melhoria só importa no nó onde o canal está configurado. Um Emissor Químico precisa da melhoria; um Receptor Químico também precisa da melhoria no seu próprio nó. Nós que não movem químicos não precisam dela.

Exige o mod **Mekanism** instalado tanto para fabricar quanto para usar. A receita abaixo só aparece quando o Mekanism está carregado.

<RecipeFor id="logisticsnetworks:mekanism_chemical_upgrade" fallbackText="Install Mekanism to unlock this recipe." />

## Melhoria de Fonte de Ars

**Desbloqueia o tipo de canal Fonte.** Mesmo padrão da Melhoria Química do Mekanism, mas para a fonte do Ars Nouveau. Instalada, o nó pode definir o Tipo de um canal como Fonte e mover fonte entre jarras de fonte do Ars Nouveau e qualquer outro bloco compatível com fonte.

Cada nó que move fonte (Emissor ou Receptor) precisa da sua própria Melhoria de Fonte de Ars.

Exige o mod **Ars Nouveau** instalado tanto para fabricar quanto para usar. A receita abaixo só aparece quando o Ars Nouveau está carregado.

<RecipeFor id="logisticsnetworks:ars_source_upgrade" fallbackText="Install Ars Nouveau to unlock this recipe." />

## Melhoria de Rede

**Desbloqueia acesso direto à rede de armazenamento.** Um nó com esta melhoria em uma Interface do Applied Energistics 2 ou do Refined Storage move itens e fluidos diretamente por toda a rede de armazenamento conectada, como descrito em [Configurações de Canal](channel-settings.md). Sem ela, a Interface é só mais um inventário e o nó só vê o que está estocado na própria Interface.

Cada nó em uma Interface que deva alcançar a rede precisa da sua própria Melhoria de Rede. Nós em outros blocos não precisam dela.

Há duas receitas, uma por mod de armazenamento. Cada uma só aparece quando aquele mod está carregado.

<Recipe id="logisticsnetworks:network_upgrade_ae2" fallbackText="Install Applied Energistics 2 to unlock this recipe." />

<Recipe id="logisticsnetworks:network_upgrade_refinedstorage" fallbackText="Install Refined Storage to unlock this recipe." />
