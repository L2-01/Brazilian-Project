---
navigation:
  title: Occultism
  icon: occultism:golden_sacrificial_bowl
  parent: nep/nep-index.md
  position: 92
---
# <Color id="aqua">Occultism</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Occultism</Color>

  <ItemImage id="occultism:golden_sacrificial_bowl" scale="2"/>

  Leva o trabalho com espíritos do Occultism para a fabricação automática ME: fogo espiritual, trituração e cristalização dentro de uma única Matriz, espíritos operários reais alimentados direto de um Provedor de Padrões, e rituais de fabricação executados no seu próprio pentáculo.
</Column>

<Recipe id="nep:module_status/occultism"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="nep:bound_spirit_matrix" scale="0.5"/> Fogo espiritual, trituração e cristalização | Uma única Matriz, com um Livro Infundido com Espírito para trituração ou cristalização | Padrão de Processamento |
| <ItemImage id="nep:spirit_provider" scale="0.5"/> Trituração, cristalização, fundição e troca | Um Provedor de Espíritos dentro da área de trabalho de um espírito operário | Padrão de Processamento |
| <ItemImage id="nep:ritual_controller" scale="0.5"/> Rituais de fabricação | Um Controlador de Rituais ao lado da tigela dourada de um pentáculo, com um Livro Infundido com Espírito | Padrão de Ritual |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:occultism_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os Padrões de Ritual só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:occultism_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
