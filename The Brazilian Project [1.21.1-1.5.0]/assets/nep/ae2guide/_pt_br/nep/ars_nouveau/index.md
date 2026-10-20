---
navigation:
  title: Ars Nouveau
  icon: ars_nouveau:enchanting_apparatus
  parent: nep/nep-index.md
  position: 85
---
# <Color id="aqua">Ars Nouveau</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Ars Nouveau</Color>

  <ItemImage id="ars_nouveau:enchanting_apparatus" scale="2"/>

  Dirige as máquinas de pedestais como passos de fabricação automática ME, funde as duas numa única Matriz, abre a rede aos caminhos de itens do próprio Ars Nouveau e mantém um Braseiro Ritualístico funcionando sem um jogador vigiando.
</Column>

<Recipe id="nep:module_status/ars_nouveau"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="ars_nouveau:enchanting_apparatus" scale="0.5"/> Encantamento | Aparato de Encantamento com seus Pedestais Arcanos | Padrão de Aparato |
| <ItemImage id="ars_nouveau:imbuement_chamber" scale="0.5"/> Impregnação | Câmara de Impregnação com quaisquer Pedestais Arcanos encostados | Padrão de Impregnação |
| <ItemImage id="nep:arcane_lectern" scale="0.5"/> Escrita de glifos | Atril Arcano perto de uma Mesa do Escriba | Nenhum, a mesa puxa |
| <ItemImage id="nep:ritual_conductor" scale="0.5"/> Rituais | Condutor Ritualístico ao lado de um Braseiro Ritualístico | Nenhum, rituais não têm saída |
| <ItemImage id="nep:arcane_enchanting_matrix" scale="0.5"/> Encantamento e impregnação | Matriz de Encantamento Arcano, sem pedestais | Padrão de Aparato ou de Impregnação |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Fonte Ainda é Sua</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Nada aqui fornece fonte. As máquinas reais a consomem da forma que o Ars Nouveau pretende, de Jarras de Fonte ao seu próprio alcance, então uma configuração funcional ainda precisa de produção de fonte ao lado. A [Matriz de Encantamento Arcano](/nep/ars_nouveau/arcane-enchanting-matrix.md) mantém um estoque próprio, abastecido por Relés de Fonte, jarras próximas ou a rede ME através do Ars Énergistique.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:ars_nouveau_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Ars Nouveau só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:ars_nouveau_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
