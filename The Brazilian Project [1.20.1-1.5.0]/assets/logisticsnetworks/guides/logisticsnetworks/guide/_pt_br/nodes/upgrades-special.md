---
item_ids: [logisticsnetworks:dimensional_upgrade, logisticsnetworks:mekanism_chemical_upgrade, logisticsnetworks:ars_source_upgrade]
navigation:
  title: Melhorias Especiais
  parent: nodes/index.md
  icon: logisticsnetworks:dimensional_upgrade
  position: 5
---

# Melhorias Especiais

Melhorias especiais não mudam os tetos de vazão de um nó. Elas destravam **novas capacidades** — transferências entre dimensões, químicos do Mekanism, fonte do Ars Nouveau. Cada uma ocupa um espaço de melhoria e pode ser combinada com uma [melhoria de desempenho](upgrades-performance.md) no mesmo nó.

Os espaços de melhoria ficam no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas, mas melhorias diferentes acumulam sem problema — um nó de ponta típico pode ter uma de Netherita + uma Dimensional + uma Química do Mekanism + uma de Fonte de Ars.

## Melhoria Dimensional

**Destrava transferências entre dimensões.** Sem esta melhoria, um nó só consegue falar com nós na mesma dimensão. Instale a Melhoria Dimensional e o nó pode transferir de e para nós em outras dimensões — entre a Superfície e o Nether, o End e a Superfície, ou qualquer dimensão de mods.

**As duas pontas precisam dela.** Tanto o nó Emissor quanto o nó Receptor precisam de uma Melhoria Dimensional instalada. Instalá-la só num lado não basta — o motor verifica os dois nós antes de permitir um salto entre dimensões.

Dentro da mesma dimensão a melhoria não faz nada extra — transferências normais funcionam sem ela.

<RecipeFor id="logisticsnetworks:dimensional_upgrade" />

## Melhoria Química do Mekanism

**Destrava o tipo de canal Químico.** Sem esta melhoria, a configuração Tipo em [Configurações de Canal](channel-settings.md) não pode ser definida como Químico no nó. Instalada, o nó pode sentir e transferir químicos do Mekanism (gases, tipos de infusão, pigmentos, lamas) por qualquer canal cujo Tipo esteja definido como Químico.

A melhoria só importa no nó onde o canal está configurado. Um Emissor de Químico precisa da melhoria; um Receptor de Químico também precisa da melhoria no seu próprio nó. Nós que não movem químicos não precisam dela.

Exige o mod **Mekanism** instalado tanto para fabricar quanto para usar. A receita abaixo só aparece quando o Mekanism está carregado.

<RecipeFor id="logisticsnetworks:mekanism_chemical_upgrade" fallbackText="Install Mekanism to unlock this recipe." />

## Melhoria de Fonte de Ars

**Destrava o tipo de canal Fonte.** Mesmo padrão da Melhoria Química do Mekanism, mas para fonte do Ars Nouveau. Instalada, o nó pode definir o Tipo de um canal como Fonte e mover fonte entre jarros de fonte do Ars Nouveau e qualquer outro bloco compatível com fonte.

Todo nó que move fonte (Emissor ou Receptor) precisa da sua própria Melhoria de Fonte de Ars.

Exige o mod **Ars Nouveau** instalado tanto para fabricar quanto para usar. A receita abaixo só aparece quando o Ars Nouveau está carregado.

<RecipeFor id="logisticsnetworks:ars_source_upgrade" fallbackText="Install Ars Nouveau to unlock this recipe." />
