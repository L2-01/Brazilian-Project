---
navigation:
  title: Create
  icon: create:mechanical_crafter
  parent: nep/nep-index.md
  position: 60
---
# <Color id="aqua">Create</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Create</Color>

  <ItemImage id="create:mechanical_crafter" scale="2"/>

  Executa as máquinas do Create como passos de fabricação automática ME: conjuntos de Fabricadores Mecânicos, Implantadores, Bicas e linhas de Montagem Sequenciada, além de uma Matriz que executa uma montagem inteira num único bloco.
</Column>

<Recipe id="nep:module_status/create"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="create:deployer" scale="0.5"/> Aplicação | Implantador sobre um Depósito | Padrão de Fabricação em Andesito |
| <ItemImage id="create:spout" scale="0.5"/> Envase | Bica sobre um Depósito | Padrão de Fabricação em Andesito |
| <ItemImage id="create:mechanical_crafter" scale="0.5"/> Fabricação Mecânica | Conjunto de fabricadores | Padrão de Fabricação Mecânica |
| <ItemImage id="nep:sequenced_assembly_controller" scale="0.5"/> Montagem Sequenciada | Linha de esteiras com um Controlador | Padrão de Montagem Sequenciada |
| <ItemImage id="nep:sequenced_assembly_matrix" scale="0.5"/> Montagem Sequenciada | Uma única Matriz, sem linha | Padrão de Montagem Sequenciada |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:create_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Create só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:create_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
