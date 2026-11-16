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

  Executa infusão de espíritos, foco de espíritos e trabalho rúnico como etapas de fabricação automática ME, no Altar de Espíritos, Cadinho de Espíritos e Bancada Rúnica reais com seus próprios espíritos, pedestais, aprimoramentos e aceleradores, ou numa Matriz que substitui os três.
</Column>

<Recipe id="nep:module_status/malum"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Máquinas Suportadas</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Processo | Preparação | Padrão |
|---|---|---|
| <ItemImage id="malum:spirit_altar" scale="0.5"/> Infusão de Espíritos | Altar de Espíritos, com pedestais para receitas que precisam de ingredientes extras | Padrão de Infusão Espiritual |
| <ItemImage id="malum:spirit_crucible" scale="0.5"/> Foco de Espíritos | Cadinho de Espíritos, segurando o ímpeto do nó que você quer | Padrão de Foco Espiritual |
| <ItemImage id="malum:runic_workbench" scale="0.5"/> Trabalho Rúnico | Bancada Rúnica, com o segundo ingrediente fornecido pela rede em vez da sua mão | Padrão de Trabalho Rúnico |
| <ItemImage id="nep:focused_spirit_matrix" scale="0.5"/> Infusão de Espíritos | Matriz de Foco Espiritual, um bloco, nada construído ao redor | Padrão de Infusão Espiritual |
| <ItemImage id="nep:focused_spirit_matrix" scale="0.5"/> Foco de Espíritos | Matriz de Foco Espiritual, com um Ímpeto de Matriz no seu espaço de ímpeto | Padrão de Foco Espiritual |
| <ItemImage id="nep:focused_spirit_matrix" scale="0.5"/> Trabalho Rúnico | Matriz de Foco Espiritual, tirando os espíritos de uma runa do próprio banco | Padrão de Trabalho Rúnico |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Segredos do Vazio</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Malum mantém seu tier do vazio fora de vista até você descobrir os Segredos do Vazio, e uma receita escondida assim está ausente em vez de trancada, o que é fácil de ler como uma receita que não existe. Qualquer item nosso cujas receitas todas estejam escondidas carrega uma linha dizendo isso, e a linha some assim que a revelação que a esconde é descoberta.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Módulo de Codificação</Color>

  <ItemImage id="nep:malum_encoding_module" scale="1.5"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Num servidor que ativa **Exigir Decodificador**, padrões do Malum só codificam numa rede cujo [Decodificador de Padrões](/nep/pattern-decoder.md) carrega este módulo. Sem ele, codificam como Padrões de Processamento comuns.

<Recipe id="nep:malum_encoding_module"/>

<ItemImage id="minecraft:air" scale="0.5"/>

<SubPages icons={true} />
