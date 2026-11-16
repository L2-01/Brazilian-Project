---
navigation:
  title: Infusão de Espíritos
  icon: malum:spirit_altar
  parent: nep/malum/index.md
  position: 10
item_ids:
  - nep:spirit_infusion_pattern
---
# <Color id="light_purple">Infusão de Espíritos</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Infusão de Espíritos</Color>

  <ItemImage id="malum:spirit_altar" scale="2"/>

  Um Altar de Espíritos recebe um item, os espíritos que o infundem, e o que mais a receita consumir de pedestais próximos. Nenhum Provedor de Padrões alcança um espaço de espírito ou um pedestal, então a fabricação inteira é entregue num único envio.
</Column>

<Recipe id="nep:module_status/spirit_infusion"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="malum:spirit_altar" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#cc66ff">
    **Altar de Espíritos**, executando a própria infusão
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face do altar e insira nele padrões de <ItemLink id="nep:spirit_infusion_pattern"/>.
* Receitas que consomem ingredientes extras precisam de pedestais ou suportes de itens livres dentro do alcance do próprio altar, quatro blocos para os lados e três para cima ou para baixo. Um pedestal livre por ingrediente extra.
* Nenhum Cartão de Importação é necessário aqui. O altar devolve o item pronto direto ao Provedor que o pediu, e só o derruba no chão quando nada ao redor do altar o aceita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona um Envio</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega a fabricação inteira de uma vez: o item vai para o altar, os espíritos da receita para os seus espaços de espírito, e um ingrediente extra para cada pedestal livre. O altar pega a receita sozinho, então nenhum pulso de redstone nem clique direito é necessário.

A infusão então roda no ritmo do próprio altar, que é o ritmo do Malum: cerca de quinze segundos, reduzidos por cada acelerador de Altar de Espíritos construído ao redor. Um jogador fabricando no mesmo altar à mão vê o resultado cair como sempre.

> <Color id="yellow">A Infusão de Espíritos executa uma fabricação por vez.</Color> O altar segura um único item, então uma pilha de trabalhos enfileirados na rede chega um após o outro conforme cada um termina. Para volume, use a [Matriz de Foco Espiritual](/nep/malum/focused-spirit-matrix.md) em vez disso.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de infusão de espíritos no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:spirit_infusion_pattern"/>.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída casem com exatamente uma receita de infusão de espíritos. Quando duas receitas cabem, o NEP recusa em vez de adivinhar, e o padrão precisa ser codificado pelo JEI.
* Receitas que carregam os dados próprios do ingrediente para o resultado, como uma infusão que preserva os encantamentos de um item, só codificam para um ingrediente comum sem dados próprios. Qualquer outra coisa entregaria à rede algo diferente do que o padrão prometeu.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o altar não puder receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| O altar já está segurando um item | Deixe a infusão em andamento terminar |
| O altar ainda está segurando espíritos | Tire-os; o altar só aceita uma fabricação que pode começar limpa |
| Pedestais livres insuficientes ao alcance | Construa um pedestal livre por ingrediente extra, dentro de quatro blocos |
| O altar decidiu por uma receita diferente | Duas receitas cabem no que foi enviado; codifique o padrão pelo JEI para que ele nomeie a que você quer |
