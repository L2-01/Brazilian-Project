---
navigation:
  title: Encantamento
  icon: ars_nouveau:enchanting_apparatus
  parent: nep/ars_nouveau/index.md
  position: 10
item_ids:
  - nep:apparatus_pattern
---
# <Color id="gold">Encantamento</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Encantamento</Color>

  <ItemImage id="ars_nouveau:enchanting_apparatus" scale="2"/>

  Um Aparato de Encantamento recebe um reagente mais um item em cada um dos seus Pedestais Arcanos. Nenhum Provedor de Padrões alcança um pedestal, então a fabricação inteira é entregue num único envio.
</Column>

<Recipe id="nep:module_status/enchanting_apparatus"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="ars_nouveau:arcane_core" y="0"/>
  <Block id="ars_nouveau:enchanting_apparatus" y="1"/>
  <Block id="ae2:pattern_provider" y="2"/>

  <BlockAnnotation y="2" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="1" color="#88cc00">
    **Aparato de Encantamento**, com seus Pedestais Arcanos montados ao redor
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#ffaa00">
    **Núcleo Arcano**, que aceita um Provedor igualmente
  </BlockAnnotation>
</GameScene>

* Monte o aparato e seus pedestais como o Ars Nouveau pede, com o Núcleo Arcano diretamente atrás dele. Os padrões seguem as mesmas regras de montagem da fabricação manual, então um aparato sem núcleo, ou com o núcleo virado para o lado errado, não executa nada. Os pedestais fazem parte da máquina, não são decoração.
* Coloque um Provedor de Padrões contra qualquer face do aparato e insira nele padrões de <ItemLink id="nep:apparatus_pattern"/>.
* O Núcleo Arcano sob o aparato também funciona como ponto de encaixe, e geralmente é o mais fácil de alcançar. Um Provedor contra o núcleo dirige o aparato ao qual ele pertence, então o próprio aparato fica livre para pedestais e decoração.
* Adicione um <ItemLink id="nep:import_card"/> a esse Provedor. O aparato deixa seu resultado no próprio espaço, e o cartão é o que o traz de volta à rede.
* Mantenha Jarras de Fonte a até dez blocos. Um envio é recusado de cara quando não há Fonte suficiente para a receita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona um Envio</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega todos os itens de uma vez: o reagente vai para o aparato, e um ingrediente para cada pedestal. O aparato então se inicia sozinho, então nenhum clique direito é necessário.

> <Color id="yellow">Receitas que preservam um ingrediente são recusadas.</Color> Qualquer coisa na tag `apparatus_not_consumed`, ou com resto de fabricação, sairia de volta, e um padrão não tem como dizer isso. Essas receitas ficam manuais.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Não Pode Ser Codificado</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Duas famílias derivam seu resultado do que o jogador põe, então não há saída fixa para codificar:

| Família | Por quê |
|---|---|
| Prestidigitação | O resultado depende do que entrou |
| Escrita de feitiço | O resultado carrega o feitiço sendo escrito |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Encantamentos e Melhorias de Armadura</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de encantamento ou melhoria de armadura cobre muitos itens, então o padrão é codificado para o reagente que o JEI está mostrando quando você aperta a seta de transferência.

* **Encantamentos** levam exatamente o livro que o padrão nomeia: um Livro comum para o primeiro nível, e o livro um nível abaixo para cada nível seguinte. O resultado é aquele livro um nível acima. Codifique um padrão por nível e o AE2 os encadeia, então pedir um terceiro nível fabrica o segundo a partir do primeiro no caminho. Um livro carregando outros encantamentos nunca casa, então um livro valioso nunca é gasto.
* **Melhorias de armadura** levam qualquer peça daquela armadura no tier abaixo, sejam quais forem as linhas, encantamentos ou nome que ela carrega. A peça melhorada volta com tudo isso, e o trabalho de fabricação a conta como a peça que o padrão prometeu.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de aparato no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:apparatus_pattern"/>.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída casem com exatamente uma receita de aparato. Quando duas receitas cabem, o NEP recusa em vez de adivinhar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o aparato não puder receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| Nenhum Núcleo Arcano atrás do aparato | Coloque um no lado oposto ao que o aparato está virado |
| O Núcleo Arcano está virado para o lado errado | Quebre-o e coloque de novo olhando para o aparato |
| O aparato já está fabricando | Deixe a fabricação em andamento terminar |
| O aparato ainda segura um item pronto | Colete-o; um Cartão de Importação faz isso sozinho |
| Um pedestal já está segurando um item | Limpe os restos à mão |
| Menos pedestais que a receita precisa | Construa um pedestal por ingrediente |
| Fonte insuficiente por perto | Adicione Jarras de Fonte a até dez blocos |

Um Provedor num Núcleo Arcano que não faz nada é outro problema: o núcleo não tem aparato para dirigir. O aparato precisa ser o bloco na face contra a qual o núcleo foi montado, que numa montagem normal é a diretamente acima dele.
