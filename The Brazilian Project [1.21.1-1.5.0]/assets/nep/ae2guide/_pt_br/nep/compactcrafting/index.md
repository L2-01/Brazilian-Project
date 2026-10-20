---
navigation:
  title: Compact Crafting
  icon: nep:miniaturization_matrix
  parent: nep/nep-index.md
  position: 50
---
# <Color id="aqua">Compact Crafting</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Compact Crafting</Color>

  <ItemImage id="nep:miniaturization_matrix" scale="2"/>

  Executa a fabricação por miniaturização como um passo de fabricação automática ME, numa Matriz que não precisa de campo ou através de um Controlador dirigindo um campo de projetores que você construiu.
</Column>

<Recipe id="nep:module_status/compactcrafting"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="nep:miniaturization_controller" scale="0.5"/> Controlador de Miniaturização | Um Controlador dirigindo um campo real | Padrão de Miniaturização |
| <ItemImage id="nep:miniaturization_matrix" scale="0.5"/> Matriz de Miniaturização | Uma única Matriz, sem campo | Padrão de Miniaturização |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:compact_crafting_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Compact Crafting só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:compact_crafting_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
