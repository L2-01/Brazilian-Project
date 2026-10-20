---
navigation:
  title: Impregnação
  icon: ars_nouveau:imbuement_chamber
  parent: nep/ars_nouveau/index.md
  position: 20
item_ids:
  - nep:imbuement_pattern
---
# <Color id="gold">Impregnação</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Impregnação</Color>

  <ItemImage id="ars_nouveau:imbuement_chamber" scale="2"/>

  Uma Câmara de Impregnação segura um item e canaliza fonte para dentro dele ao longo do tempo. A maioria das receitas de impregnação é aquele item sozinho, e o resto também precisa de um item em cada Pedestal Arcano encostado na câmara. Esses itens de pedestal nunca são consumidos.
</Column>

<Recipe id="nep:module_status/imbuement_chamber"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="ars_nouveau:imbuement_chamber" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Câmara de Impregnação**, com Jarras de Fonte ao alcance
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da câmara e largue padrões <ItemLink id="nep:imbuement_pattern"/> nele.
* Adicione um <ItemLink id="nep:import_card"/> a esse Provedor. A câmara deixa o item concluído no próprio espaço, exatamente onde o reagente entrou.
* Mantenha Jarras de Fonte por perto. A câmara só alcança dois blocos para fonte, bem menos que o aparato, e um envio é recusado quando não há o suficiente dentro disso.
* Se uma receita pedir itens de pedestal, coloque Pedestais Arcanos encostados na câmara e ponha esses itens neles você mesmo. Eles ficam lá para toda fabricação, então uma câmara atende as receitas que dividem seus itens de pedestal.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como um Envio Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor coloca o reagente na câmara e nada mais. A câmara encontra a receita a partir do reagente e dos itens de pedestal, drena a fonte de que precisa e troca o reagente pelo resultado no lugar.

> <Color id="yellow">O resultado fica no espaço de entrada.</Color> Nada mais pode ser enviado até ele ser retirado, o que faz do Cartão de Importação algo que vale a pena adicionar, e não opcional.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Não Pode Ser Codificado</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A câmara é aberta a addons: vários registram receitas de impregnação próprias, para carregar um amuleto, escrever um códice em massa ou gravar um feitiço num pergaminho. Todas essas leem seu resultado do item que entrou, então não há saída fixa para nomear nem padrão para codificar. Elas ficam manuais, e a câmara ainda as executa normalmente.

Receitas adicionadas por um addon como receitas de impregnação **comuns** são outra história e funcionam exatamente como as do próprio Ars Nouveau, sem suporte extra necessário.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de impregnação no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:imbuement_pattern"/> carregando apenas o reagente.
* Um padrão de processamento comum também funciona, desde que sua única entrada seja o reagente e corresponda a exatamente uma receita de impregnação. Um que também liste os itens de pedestal é recusado, já que esses sairiam da rede para sempre.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Recusa | O que fazer |
|---|---|
| A câmara já está segurando um item | Recolha o item concluído; um Cartão de Importação faz isso sozinho |
| Os pedestais não seguram os itens desta receita | Coloque exatamente os itens de pedestal da receita em pedestais encostados na câmara |
| Fonte insuficiente por perto | Adicione Jarras de Fonte a até dois blocos da câmara |
