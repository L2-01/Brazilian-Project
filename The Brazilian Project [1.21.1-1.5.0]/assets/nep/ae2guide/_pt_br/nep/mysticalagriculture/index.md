---
navigation:
  title: Mystical Agriculture
  icon: mysticalagriculture:infusion_altar
  parent: nep/nep-index.md
  position: 80
---
# <Color id="aqua">Mystical Agriculture</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Mystical Agriculture</Color>

  <ItemImage id="mysticalagriculture:infusion_altar" scale="2"/>

  Executa infusão e despertar como passos de fabricação automática ME, seja num altar real com seus pedestais ou numa Matriz cujos tanques de essência substituem os recipientes.
</Column>

<Recipe id="nep:module_status/mysticalagriculture"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="mysticalagriculture:infusion_altar" scale="0.5"/> Infusão | Altar de Infusão com oito Pedestais | Padrão de Infusão |
| <ItemImage id="mysticalagriculture:awakening_altar" scale="0.5"/> Despertar | Altar de Despertar com quatro Pedestais e quatro Recipientes | Padrão de Despertar |
| <ItemImage id="nep:infused_awakening_matrix" scale="0.5"/> Infusão e Despertar | Uma única Matriz, sem altar | Padrão de Infusão ou Despertar |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:mystical_agriculture_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Mystical Agriculture só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:mystical_agriculture_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
