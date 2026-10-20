---
navigation:
  title: Configuração e Ajustes
  icon: deepnullreforged:upgrade_core
  position: 6
---

# Configuração e Ajustes

O DeepNull Reforged expõe grupos de configuração de cliente, comum e servidor para que jogadores e autores de pacotes ajustem tanto comportamentos de qualidade de vida quanto o balanceamento.

## Escopo das Configurações

- Cliente: opções visuais, comportamento da HUD, preferências de controle e dicas de integração local
- Comum: valores padrão gravados em Nulls recém-criados
- Servidor: chaves de gameplay, flags de ativação de melhorias e valores de balanceamento por nível

## Ajustes de Cliente

| Ajuste | O Que Faz |
| --- | --- |
| `showHud` | Ativa a sobreposição de HUD do null na mão. |
| `hudOffsetX` / `hudOffsetY` | Move a HUD horizontal ou verticalmente na tela. |
| `hudBackgroundOpacity` | Muda a transparência do fundo da HUD. |
| `hudDisplayMs` | Controla por quanto tempo a HUD permanece visível após mudanças. |
| `enableShiftScrollSelection` | Permite que `Shift + Scroll` alterne os espaços de DeepNull ou tanques de DampNull selecionados. |
| `invertDampNullInteraction` | Faz os DampNulls se comportarem como tanques do Mekanism: clique direito abre a GUI, enquanto `Shift + Clique Direito` cuida da interação com fluidos. |
| `enableUpdateChecker` | Ativa a mensagem de verificação de versão que leva à página de download do mod. |
| `showGuideMeHint` | Mostra a dica de ferramenta do GuideME quando o GuideME está instalado. |
| `animateDockedNulls` | Ativa a animação de renderização de flutuação e giro no acoplamento. |
| `showFullDeepNullCounts` | Mostra os números armazenados completos na GUI do DeepNull em vez de valores compactos estilo `1.9K` / `2M`. |

## Padrões Comuns

| Ajuste | O Que Faz |
| --- | --- |
| `defaultTransferLocked` | Define o estado inicial de trava de transferência para Nulls recém-criados. |
| `defaultAutoPickupEnabled` | Define o estado inicial de coleta automática para novos DeepNulls. |
| `defaultAutoFeedingEnabled` | Define o estado inicial de Alimentação Automática quando aquela melhoria está instalada. |
| `defaultAutoSmeltingEnabled` | Define o estado inicial de Fundição Automática quando aquela melhoria está instalada. |
| `defaultStoneworksAmount` | Define o valor inicial do monitor de Pedraria para novos DeepNulls. |

## Chaves de Recursos do Servidor

| Ajuste | O Que Faz |
| --- | --- |
| `disableTagMatching` | Desliga a correspondência por tags de dicionário nos filtros do DeepNull. |
| `tagBlacklist` | Bloqueia tags específicas de serem usadas na correspondência por tags. |
| `tagWhitelist` | Se preenchida, apenas as tags listadas são permitidas na correspondência por tags. |
| `enableAutoPickup` | Liga ou desliga globalmente a coleta automática para DeepNulls correspondentes. |
| `enableAutoFeeding` | Liga ou desliga o comportamento de Alimentação Automática. |
| `enableAutoSmelting` | Liga ou desliga o comportamento de Fundição Automática. |
| `enableCompression` | Liga ou desliga o comportamento de Compressão Básica e Avançada. |
| `enableStoneworks` | Liga ou desliga o processamento de Pedraria. |
| `enableStoneGenerator` | Liga ou desliga a saída do Gerador de Pedra do DampNull. |
| `enableObsidianGenerator` | Liga ou desliga a saída do Gerador de Obsidiana do DampNull. |
| `enableSpongeUpgrade` | Liga ou desliga a Melhoria de Esponja do DampNull. |
| `voidFullItemsOnPickup` | Se ativado, a coleta automática do DeepNull ainda absorve e anula itens correspondentes quando a capacidade do espaço armazenado correspondente já está cheia. |
| `voidFullFluidsOnSponge` | Se ativado, a Melhoria de Esponja ainda absorve e anula fluidos correspondentes quando o tanque correspondente já está cheio. |
| `enableChemicalStorage` | Liga ou desliga o suporte a armazenamento e transferência de produtos químicos do Mekanism. |
| `dockGeneratorBufferSize` | Define o tamanho do buffer oculto de saída da estação usado por DampNulls geradores. |

## Arrays de Valores por Nível

Estes ajustes de servidor são lidos na ordem dos níveis:

`Redstone, Lapis, Iron, Gold, Diamond, Emerald, Creative`

| Ajuste | O Que Controla |
| --- | --- |
| `itemCapacityByTier` | Capacidade de itens do DeepNull por espaço. |
| `fluidCapacityByTier` | Capacidade de fluido do DampNull por tanque. |
| `energyCapacityByTier` | Capacidade de FE da Melhoria de Energia. |
| `deepEnergyCapacityByTier` | Capacidade de FE da Melhoria de Energia Profunda. |
| `energyTransferByTier` | Taxa de transferência de FE da Melhoria de Energia. |
| `deepEnergyTransferByTier` | Taxa de transferência de FE da Melhoria de Energia Profunda. |
| `dampNullTankCountByTier` | Número de tanques do DampNull por nível. |
| `stoneGenerationRateByTier` | Taxa de saída do Gerador de Pedra por nível. |
| `spongeAbsorbLimitByTier` | Ajuste legado mantido para compatibilidade. A Esponja agora absorve todos os blocos fonte visíveis no alcance. |
| `spongeRangeWidthByTier` | Tamanho horizontal da caixa da Melhoria de Esponja por nível. |
| `spongeRangeHeightByTier` | Tamanho vertical da caixa da Melhoria de Esponja por nível. |

## Páginas Relacionadas

- [Controles, JEI e Automação](controls-jei-and-automation.md)
- [DeepNulls](deepnulls.md)
- [DampNulls](dampnulls.md)
