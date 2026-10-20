---
navigation:
  title: Infusão Espiritual
  icon: malum:spirit_altar
  parent: nep/malum/index.md
  position: 10
item_ids:
  - nep:spirit_infusion_pattern
---
# <Color id="light_purple">Infusão Espiritual</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Infusão Espiritual</Color>

  <ItemImage id="malum:spirit_altar" scale="2"/>

  Um Altar dos Espíritos recebe um item, os espíritos que o infundem, e o que mais a receita consumir dos pedestais próximos. Nenhum Provedor de Padrões alcança um espaço de espírito ou um pedestal, então a fabricação inteira é entregue num único envio.
</Column>

<Recipe id="nep:module_status/spirit_infusion"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="malum:spirit_altar" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#cc66ff">
    **Altar dos Espíritos**, executando a própria infusão
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face do altar e largue padrões <ItemLink id="nep:spirit_infusion_pattern"/> nele.
* Receitas que consomem ingredientes extras precisam de pedestais ou suportes de item livres dentro do alcance do próprio altar, quatro blocos para os lados e três para cima ou para baixo. Um pedestal livre por ingrediente extra.
* Nenhum Cartão de Importação é necessário aqui. O altar devolve o item concluído direto ao Provedor que o encomendou, e só o joga no chão quando nada ao redor do altar o aceita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como um Envio Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega a fabricação inteira de uma vez: o item vai para dentro do altar, os espíritos da receita para seus espaços de espírito, e um ingrediente extra para cada pedestal livre. O altar pega a receita sozinho, então nenhum pulso de redstone e nenhum clique é necessário.

A infusão então roda no ritmo do próprio altar, que é o ritmo do Malum: cerca de quinze segundos, reduzidos por cada acelerador de Altar dos Espíritos construído ao redor dele. Um jogador fabricando no mesmo altar à mão vê o resultado cair como sempre viu.

> <Color id="yellow">A Infusão Espiritual executa uma fabricação por vez.</Color> O altar comporta um único item, então uma pilha de trabalhos enfileirados na rede chega um depois do outro conforme cada um termina. Para volume, use a [Matriz de Foco Espiritual](/nep/malum/focused-spirit-matrix.md) em vez disso.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de infusão espiritual no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:spirit_infusion_pattern"/>.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída correspondam a exatamente uma receita de infusão espiritual. Onde duas receitas couberem, o NEP recusa em vez de adivinhar, e o padrão precisa ser codificado a partir do JEI.
* Receitas que carregam os dados do próprio ingrediente para o resultado, como uma infusão que mantém os encantamentos de um item, só codificam para um ingrediente comum sem dados próprios. Qualquer outra coisa entregaria à rede algo diferente do que o padrão prometeu.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o altar não consegue receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| O altar já está segurando um item | Deixe a infusão que ele está executando terminar |
| O altar ainda está segurando espíritos | Retire-os; o altar só aceita uma fabricação que consegue iniciar limpa |
| Pedestais livres insuficientes no alcance | Construa um pedestal livre por ingrediente extra, dentro de quatro blocos |
| O altar escolheu uma receita diferente | Duas receitas couberam no que foi enviado; codifique o padrão a partir do JEI para que ele nomeie a que você quer |
