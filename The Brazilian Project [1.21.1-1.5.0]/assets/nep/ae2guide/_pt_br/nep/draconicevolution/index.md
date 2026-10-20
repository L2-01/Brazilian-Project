---
navigation:
  title: Draconic Evolution
  icon: draconicevolution:crafting_core
  parent: nep/nep-index.md
  position: 70
---
# <Color id="aqua">Draconic Evolution</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Draconic Evolution</Color>

  <ItemImage id="draconicevolution:crafting_core" scale="2"/>

  Executa a Fabricação por Fusão como um passo de fabricação automática ME, num Núcleo de Fusão real com seus Injetores ou numa Matriz que substitui o multibloco inteiro.
</Column>

<Recipe id="nep:module_status/draconicevolution"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="draconicevolution:crafting_core" scale="0.5"/> Fabricação por Fusão | Núcleo de Fusão com Injetores | Padrão de Fabricação por Fusão |
| <ItemImage id="nep:fusion_matrix" scale="0.5"/> Fabricação por Fusão | Uma única Matriz, sem multibloco | Padrão de Fabricação por Fusão |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:draconic_evolution_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Draconic Evolution só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:draconic_evolution_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
