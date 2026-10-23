---
navigation:
  title: Config e Configurações
  icon: deepnullreforged:upgrade_core
  position: 6
---

# Config e Configurações

O DeepNull Reforged expõe grupos de config de cliente, comum e de servidor para que jogadores e autores de packs ajustem tanto o comportamento de qualidade de vida quanto o balanceamento.

## Escopo da Config

- Cliente: opções visuais, comportamento da HUD, preferências de controle e dicas de integração local
- Comum: valores padrão gravados nos Nulls recém-criados
- Servidor: alternâncias de gameplay, flags de ativação de melhorias e valores de balanceamento por nível

## Configurações do Cliente

| Configuração | O Que Faz |
| --- | --- |
| `showHud` | Ativa a sobreposição de HUD do null segurado. |
| `hudOffsetX` / `hudOffsetY` | Move a HUD horizontal ou verticalmente na tela. |
| `hudBackgroundOpacity` | Altera a transparência do fundo da HUD. |
| `hudDisplayMs` | Controla por quanto tempo a HUD permanece visível após mudanças. |
| `enableShiftScrollSelection` | Permite que `Shift + Scroll` alterne os slots selecionados do DeepNull ou os tanques do DampNull. |
| `invertDampNullInteraction` | Faz os DampNulls se comportarem como tanques do Mekanism: clique direito abre a interface, enquanto `Shift + Right Click` faz a interação de fluido. |
| `enableUpdateChecker` | Ativa a mensagem de verificação de versão que leva à página de download do mod. |
| `showGuideMeHint` | Mostra a dica de tooltip do GuideME quando o GuideME está instalado. |
| `animateDockedNulls` | Ativa a animação de flutuação e giro dos nulls acoplados. |
| `showFullDeepNullCounts` | Mostra os números completos armazenados na interface do DeepNull em vez de valores compactos como `1.9K` / `2M`. |

## Padrões Comuns

| Configuração | O Que Faz |
| --- | --- |
| `defaultTransferLocked` | Define o estado inicial de trava de transferência dos Nulls recém-criados. |
| `defaultAutoPickupEnabled` | Define o estado inicial de coleta automática dos novos DeepNulls. |
| `defaultAutoFeedingEnabled` | Define o estado inicial de Alimentação Automática quando essa melhoria está instalada. |
| `defaultAutoSmeltingEnabled` | Define o estado inicial de Fundição Automática quando essa melhoria está instalada. |
| `defaultStoneworksAmount` | Define o valor inicial do monitor de Pedraria dos novos DeepNulls. |

## Alternâncias de Recursos do Servidor

| Configuração | O Que Faz |
| --- | --- |
| `disableTagMatching` | Desativa a correspondência por tags de dicionário nos filtros dos DeepNulls. |
| `tagBlacklist` | Bloqueia tags específicas de serem usadas na correspondência por tags. |
| `tagWhitelist` | Se preenchida, só as tags listadas são permitidas na correspondência por tags. |
| `enableAutoPickup` | Ativa ou desativa globalmente a coleta automática nos DeepNulls correspondentes. |
| `enableAutoFeeding` | Ativa ou desativa o comportamento de Alimentação Automática. |
| `enableAutoSmelting` | Ativa ou desativa o comportamento de Fundição Automática. |
| `enableCompression` | Ativa ou desativa o comportamento de Compressão Básica e Avançada. |
| `enableStoneworks` | Ativa ou desativa o processamento de Pedraria. |
| `enableStoneGenerator` | Ativa ou desativa a produção do Gerador de Pedra do DampNull. |
| `enableObsidianGenerator` | Ativa ou desativa a produção do Gerador de Obsidiana do DampNull. |
| `enableSpongeUpgrade` | Ativa ou desativa a Melhoria de Esponja do DampNull. |
| `voidFullItemsOnPickup` | Se ativado, a coleta automática do DeepNull ainda absorve e anula os itens correspondentes quando a capacidade do slot armazenado correspondente já está cheia. |
| `voidFullFluidsOnSponge` | Se ativado, a Melhoria de Esponja ainda absorve e anula os fluidos correspondentes quando o tanque correspondente já está cheio. |
| `enableChemicalStorage` | Ativa ou desativa o suporte a armazenamento e transferência de produtos químicos do Mekanism. |
| `dockGeneratorBufferSize` | Define o tamanho do buffer oculto de saída da estação usado pelos DampNulls geradores. |

## Conjuntos de Valores por Nível

Estas configurações de servidor são lidas na ordem dos níveis:

`Redstone, Lapis, Iron, Gold, Diamond, Emerald, Creative`

| Configuração | O Que Controla |
| --- | --- |
| `itemCapacityByTier` | Capacidade de itens do DeepNull por slot. |
| `fluidCapacityByTier` | Capacidade de fluido do DampNull por tanque. |
| `energyCapacityByTier` | Capacidade de FE da Melhoria de Energia. |
| `deepEnergyCapacityByTier` | Capacidade de FE da Melhoria de Energia Profunda. |
| `energyTransferByTier` | Taxa de transferência de FE da Melhoria de Energia. |
| `deepEnergyTransferByTier` | Taxa de transferência de FE da Melhoria de Energia Profunda. |
| `dampNullTankCountByTier` | Número de tanques do DampNull por nível. |
| `stoneGenerationRateByTier` | Taxa de produção do Gerador de Pedra por nível. |
| `spongeAbsorbLimitByTier` | Configuração legada mantida para compatibilidade. A Esponja agora absorve todos os blocos-fonte visíveis no alcance. |
| `spongeRangeWidthByTier` | Tamanho horizontal da caixa da Melhoria de Esponja por nível. |
| `spongeRangeHeightByTier` | Tamanho vertical da caixa da Melhoria de Esponja por nível. |

## Páginas Relacionadas

- [Controles, JEI e Automação](controls-jei-and-automation.md)
- [DeepNulls](deepnulls.md)
- [DampNulls](dampnulls.md)
