---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Câmara de Vibração
  icon: vibration_chamber
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:vibration_chamber
---

# A Câmara de Vibração

<BlockImage id="vibration_chamber" p:active="true" scale="8" />

Embora o método principal pretendido de fornecer [energia](../ae2-mechanics/energy.md) à sua rede seja um
<ItemLink id="energy_acceptor" />, a câmara de vibração pode gerar diretamente quantidades pequenas a médias de AE.

Por padrão (sem [melhorias](upgrade_cards.md) e configurações padrão), ela produz 40 AE/t.

Quando o armazenamento de [energia](../ae2-mechanics/energy.md) da rede está cheio, a câmara de vibração reduz a atividade para conservar
combustível, mas não consegue desligar completamente.

## Configuraçãourações

*   A câmara de vibração dá acesso à configuração global de exibir energia em AE ou E/FE.

## Melhorias

A câmara de vibração suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="energy_card" /> aumenta a eficiência da câmara em +50%, até um máximo de +150%, ou 250% da eficiência base.
*   <ItemLink id="speed_card" /> aumenta a taxa de queima da câmara em +50%, até um máximo de +150%, ou 250% da saída de energia base.

## Configuração

As propriedades da câmara de vibração podem ser editadas em common.json na pasta ae2 dentro da pasta config do seu diretório
.minecraft.

*   baseEnergyPerFuelTick define a eficiência base, sem melhorias, da câmara de vibração.
*   minEnergyPerGameTick define a geração de energia mínima possível (a câmara sempre usará um pouco de combustível lentamente, mesmo que a rede
    não requeira energia).
*   maxEnergyPerGameTick define a saída máxima sem melhorias (e a velocidade) da câmara de vibração.

## Receita

<RecipeFor id="vibration_chamber" />
