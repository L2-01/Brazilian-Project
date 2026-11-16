---
navigation:
  title: Trabalho Rúnico
  icon: malum:runic_workbench
  parent: nep/malum/index.md
  position: 18
item_ids:
  - nep:runeworking_pattern
---
# <Color id="light_purple">Trabalho Rúnico</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Trabalho Rúnico</Color>

  <ItemImage id="malum:runic_workbench" scale="2"/>

  Uma Bancada Rúnica conforma runas a partir de uma forma de pedra ou madeira e um segundo ingrediente. À mão, o segundo sai do seu punho, que é o que faz das runas a única fabricação do Malum de que você não pode sair. Um Provedor de Padrões o fornece da rede em vez disso.
</Column>

<Recipe id="nep:module_status/runeworking"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="6">
  <Block id="malum:runic_workbench" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#cc66ff">
    **Bancada Rúnica**, conformando a própria runa
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da bancada e insira nele padrões de <ItemLink id="nep:runeworking_pattern"/>.
* Nada vai na bancada à mão. O Provedor deposita a forma e fornece o segundo ingrediente no mesmo momento, que é a parte que um jogador estaria segurando.
* Nenhum Cartão de Importação é necessário. A runa pronta volta direto ao Provedor que a pediu, e só cai no chão quando nada ao redor da bancada a aceita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Mão É o Problema Inteiro</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Toda outra máquina do Malum pega seus ingredientes do mundo: um altar dos seus pedestais, um cadinho do seu próprio espaço. Uma Bancada Rúnica pega a forma da bancada e o segundo ingrediente do que você estiver segurando ao clicar nela, então um funil ou um barramento de exportação pode encher a bancada e ainda assim nunca produzir uma runa.

Esse segundo ingrediente geralmente são espíritos, e as contagens não são pequenas. Alimentá-lo da rede é a diferença entre uma linha de runas e uma tarefa de clicar.

> <Color id="yellow">A bancada precisa estar livre.</Color> Uma forma que você deixou nela à mão bloqueia o Provedor, porque o padrão traz a própria. Tire-a e o próximo envio aterrissa.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Numa Matriz em Vez Disso</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma <ItemLink id="nep:focused_spirit_matrix"/> também executa padrões de trabalho rúnico, junto do seu trabalho de infusão e foco. Os espíritos que uma runa pede saem do banco de espíritos da Matriz como qualquer outro custo de espíritos, e Obeliscos de Pau-Runa no seu espaço de melhoria cortam o tempo do mesmo jeito que cortam uma infusão.

Uma Matriz portanto cobre os três sistemas do Malum, enquanto uma bancada real continua a opção mais barata se runas são tudo que você quer.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de trabalho rúnico no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:runeworking_pattern"/>.
* Um padrão de processamento comum também funciona, já que toda runa tem sua própria saída e os dois ingredientes nomeiam a receita por conta própria.
* O padrão carrega os dois ingredientes como entradas comuns. Qual dos dois vai parar na bancada é decidido pela receita, não pela ordem em que você os codificou.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que a bancada não puder receber uma runa inteira:

| Recusa | O que fazer |
|---|---|
| A bancada já está segurando um item | Tire-o; o padrão fornece a própria forma |
| A bancada ainda está conformando uma runa | Deixe a que está rodando terminar |
| O espaço da bancada não comporta a forma | A receita pede mais do que um espaço comporta, então execute-a numa Matriz |
