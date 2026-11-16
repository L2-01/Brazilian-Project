---
navigation:
  title: Foco de Espíritos
  icon: malum:spirit_crucible
  parent: nep/malum/index.md
  position: 15
item_ids:
  - nep:spirit_focusing_pattern
---
# <Color id="light_purple">Foco de Espíritos</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Foco de Espíritos</Color>

  <ItemImage id="malum:spirit_crucible" scale="2"/>

  Um Cadinho de Espíritos transforma espíritos em nós de metal, escolhendo qual nó pelo ímpeto que você deixa nele. O ímpeto nunca é consumido, então um padrão só paga em espíritos.
</Column>

<Recipe id="nep:module_status/spirit_focusing"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="malum:spirit_crucible" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#cc66ff">
    **Cadinho de Espíritos**, executando o próprio foco
  </BlockAnnotation>
</GameScene>

* Coloque à mão no cadinho o ímpeto do nó que você quer, depois ponha um Provedor de Padrões contra o cadinho e insira nele padrões de <ItemLink id="nep:spirit_focusing_pattern"/>.
* O Provedor precisa ficar contra o **núcleo do cadinho**, o bloco que dá nome ao multibloco, não num dos seus componentes. Nada mais na estrutura carrega a máquina.
* Nenhum Cartão de Importação é necessário. O cadinho devolve o nó pronto direto ao Provedor que o pediu, bônus de fortuna incluídos, e só os derruba no chão quando nada ao redor os aceita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Ímpeto Continua Seu</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O foco não tem entrada de item. O ímpeto parado no cadinho é o que escolhe a receita, e uma fabricação o trinca um pouco em vez de consumi-lo, então ele nunca passa pela rede.

É por isso que o custo inteiro de um padrão são espíritos, e por que o ímpeto fica com você: um ímpeto que entrou novo e voltou trincado não é o item que o padrão prometeu, e a rede não o aceitaria de volta. Encaixe-o, deixe-o lá, e troque-o quando quiser um nó diferente.

> <Color id="yellow">Um cadinho foca um nó.</Color> Um cadinho segurando um Ímpeto de Ferro aceita padrões de ferro e espera por todo o resto. Dê a cada nó seu próprio cadinho, ou use uma <ItemLink id="nep:focused_spirit_matrix"/> com um <ItemLink id="nep:matrix_impetus"/>, que aceita todos.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Aprimoramentos Ainda Contam</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O cadinho executa a fabricação no próprio ritmo, que é o ritmo do Malum: todo aprimoramento, catalisador e diapasão que você construiu ao redor se aplica exatamente como para um jogador. Bônus de fortuna voltam ao Provedor junto do nó, então uma Montagem Intricada paga para a rede em vez de para o chão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de foco de espíritos no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:spirit_focusing_pattern"/>.
* Um padrão de processamento comum também funciona. Cada ímpeto foca um nó diferente, então a saída sozinha basta para nomear a receita mesmo que todos os doze metais peçam os mesmos dois espíritos.
* O padrão nomeia os espíritos e o nó, nunca o ímpeto. Qual cadinho pode executá-la é decidido pelo que aquele cadinho está segurando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o cadinho não puder receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| O cadinho não está segurando o ímpeto certo | Coloque no cadinho o ímpeto que foca este nó |
| O cadinho já está focando | Deixe a fabricação em andamento terminar |
| O cadinho ainda está segurando espíritos | Tire-os; ele só aceita uma fabricação que pode começar limpa |
| O Provedor está contra um bloco componente | Mova-o para o núcleo do cadinho |
