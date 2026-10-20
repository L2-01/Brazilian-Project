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

  Uma Bancada de Trabalho Rúnica molda runas a partir de uma base de pedra ou madeira e um segundo ingrediente. À mão o segundo sai do seu punho, que é o que faz das runas a única fabricação do Malum de que você não pode se afastar. Um Provedor de Padrões o fornece pela rede em vez disso.
</Column>

<Recipe id="nep:module_status/runeworking"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="6">
  <Block id="malum:runic_workbench" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#cc66ff">
    **Bancada de Trabalho Rúnica**, moldando a própria runa
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da bancada e largue padrões <ItemLink id="nep:runeworking_pattern"/> nele.
* Nada vai na bancada à mão. O Provedor coloca a base e fornece o segundo ingrediente no mesmo momento, que é a parte que um jogador estaria segurando.
* Nenhum Cartão de Importação é necessário. A runa concluída vai direto de volta ao Provedor que a encomendou, e só cai no chão quando nada ao redor da bancada a aceita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Mão É Todo o Problema</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Toda outra máquina do Malum recebe seus ingredientes do mundo: um altar dos seus pedestais, um cadinho do seu próprio espaço. Uma Bancada de Trabalho Rúnica recebe a base da bancada e o segundo ingrediente do que quer que você esteja segurando ao clicar nela, então um funil ou um ponto de exportação consegue encher a bancada e ainda assim nunca produzir uma runa.

Esse segundo ingrediente costuma ser espíritos, e as contagens não são pequenas. Alimentá-lo pela rede é a diferença entre uma linha de runas e uma tarefa de clicar.

> <Color id="yellow">A bancada precisa estar livre.</Color> Uma base que você deixou nela à mão bloqueia o Provedor, porque o padrão traz a sua própria. Retire-a e o próximo envio aterrissa.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Numa Matriz em Vez Disso</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma <ItemLink id="nep:focused_spirit_matrix"/> também executa padrões de trabalho rúnico, ao lado do seu trabalho de infusão e foco. Os espíritos que uma runa pede saem do banco de espíritos da Matriz como qualquer outro custo de espírito, e Obeliscos de Madeira Rúnica no seu espaço de melhoria cortam o tempo da mesma forma que cortam uma infusão.

Uma Matriz portanto cobre os três sistemas do Malum, enquanto uma bancada real continua a opção mais barata se runas são tudo que você quer.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de trabalho rúnico no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:runeworking_pattern"/>.
* Um padrão de processamento comum também funciona, já que cada runa tem sua própria saída e os dois ingredientes nomeiam a receita sozinhos.
* O padrão carrega os dois ingredientes como entradas comuns. Qual dos dois vai parar na bancada é decidido pela receita, não pela ordem em que você os codificou.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que a bancada não consegue receber uma runa inteira:

| Recusa | O que fazer |
|---|---|
| A bancada já está segurando um item | Retire-o; o padrão fornece sua própria base |
| A bancada ainda está moldando uma runa | Deixe a que ela está executando terminar |
| O espaço da bancada não comporta a base | A receita pede mais do que um espaço comporta, então execute-a numa Matriz |
