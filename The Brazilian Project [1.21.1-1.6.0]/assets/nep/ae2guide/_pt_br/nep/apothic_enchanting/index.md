---
navigation:
  title: Apothic Enchanting
  icon: apothic_enchanting:raven_enchanting_table
  parent: nep/nep-index.md
  position: 40
---
# <Color id="aqua">Apothic Enchanting</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Apothic Enchanting</Color>

  <ItemImage id="apothic_enchanting:raven_enchanting_table" scale="2"/>

  Executa a infusão de encantamento como etapa de fabricação automática ME na Mesa do Corvo, independentemente de quaisquer estantes ao redor.
</Column>

<Recipe id="nep:module_status/apothic_enchanting"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Preparação | Padrão |
|---|---|---|
| <ItemImage id="apothic_enchanting:raven_enchanting_table" scale="0.5"/> Infusão de Encantamento | Mesa do Corvo, estantes opcionais | Padrão de Processamento |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:apothic_enchanting_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que ativa **Exigir Decodificador**, padrões do Apothic Enchanting só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carrega este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:apothic_enchanting_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
