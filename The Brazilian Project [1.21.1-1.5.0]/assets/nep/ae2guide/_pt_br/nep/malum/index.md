---
navigation:
  title: Malum
  icon: malum:spirit_altar
  parent: nep/nep-index.md
  position: 90
---
# <Color id="light_purple">Malum</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Malum</Color>

  <ItemImage id="malum:spirit_altar" scale="2"/>

  Executa infusão espiritual, foco espiritual e trabalho rúnico como passos de fabricação automática ME, no Altar dos Espíritos, no Cadinho de Espíritos e na Bancada de Trabalho Rúnica reais com seus próprios espíritos, pedestais, melhorias e aceleradores, ou numa Matriz que substitui os três.
</Column>

<Recipe id="nep:module_status/malum"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Configuração | Padrão |
|---|---|---|
| <ItemImage id="malum:spirit_altar" scale="0.5"/> Infusão Espiritual | Altar dos Espíritos, com pedestais para receitas que precisam de ingredientes extras | Padrão de Infusão Espiritual |
| <ItemImage id="malum:spirit_crucible" scale="0.5"/> Foco Espiritual | Cadinho de Espíritos, segurando o ímpeto do nó que você quer | Padrão de Foco Espiritual |
| <ItemImage id="malum:runic_workbench" scale="0.5"/> Trabalho Rúnico | Bancada de Trabalho Rúnica, com o segundo ingrediente fornecido pela rede em vez da sua mão | Padrão de Trabalho Rúnico |
| <ItemImage id="nep:focused_spirit_matrix" scale="0.5"/> Infusão Espiritual | Matriz de Foco Espiritual, um bloco, nada construído ao redor | Padrão de Infusão Espiritual |
| <ItemImage id="nep:focused_spirit_matrix" scale="0.5"/> Foco Espiritual | Matriz de Foco Espiritual, com um Ímpeto de Matriz no seu espaço de ímpeto | Padrão de Foco Espiritual |
| <ItemImage id="nep:focused_spirit_matrix" scale="0.5"/> Trabalho Rúnico | Matriz de Foco Espiritual, tirando os espíritos de uma runa do seu próprio banco | Padrão de Trabalho Rúnico |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Segredos do Vazio</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Malum mantém seu tier do vazio fora de vista até você descobrir os Segredos do Vazio, e uma receita escondida dessa forma está ausente em vez de bloqueada, o que é fácil de ler como uma receita que não existe. Qualquer item nosso cujas receitas estejam todas escondidas carrega uma linha dizendo isso, e a linha some assim que a revelação que a esconde é descoberta.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:malum_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que liga **Require Decoder**, os padrões do Malum só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carregue este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:malum_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
