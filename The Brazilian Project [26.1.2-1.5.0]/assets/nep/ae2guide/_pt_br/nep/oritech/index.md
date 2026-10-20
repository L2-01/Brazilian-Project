---
navigation:
  title: Oritech
  icon: oritech:particle_accelerator
  parent: nep/nep-index.md
  position: 95
---
# <Color id="aqua">Oritech</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Oritech</Color>

  <ItemImage id="oritech:particle_accelerator" scale="2"/>

  Codifica as receitas de colisão do Acelerador de Partículas como padrões, e as executa num anel real através do Controlador de Colisão de Partículas, ou sem anel nenhum na Matriz de Colisão de Partículas. As outras máquinas do Oritech recebem itens por inventários comuns, então Padrões de Processamento simples já as dirigem.
</Column>

<Recipe id="nep:module_status/oritech"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="nep:particle_collision_controller" scale="0.5"/> Colisão de Partículas | Um Controlador dirigindo um Acelerador de Partículas | Padrão de Colisão de Partículas |
| <ItemImage id="nep:particle_collision_matrix" scale="0.5"/> Colisão de Partículas | Matriz de Colisão de Partículas | Padrão de Colisão de Partículas |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:oritech_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Oritech só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:oritech_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
