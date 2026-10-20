---
navigation:
  title: Foco Espiritual
  icon: malum:spirit_crucible
  parent: nep/malum/index.md
  position: 15
item_ids:
  - nep:spirit_focusing_pattern
---
# <Color id="light_purple">Foco Espiritual</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Foco Espiritual</Color>

  <ItemImage id="malum:spirit_crucible" scale="2"/>

  Um Cadinho de Espíritos transforma espíritos em nós de metal, escolhendo qual nó pelo ímpeto que você deixa nele. O ímpeto nunca é comido, então um padrão só paga em espíritos.
</Column>

<Recipe id="nep:module_status/spirit_focusing"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="malum:spirit_crucible" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#cc66ff">
    **Cadinho de Espíritos**, executando o próprio foco
  </BlockAnnotation>
</GameScene>

* Coloque à mão o ímpeto do nó que você quer dentro do cadinho, depois encoste um Provedor de Padrões no cadinho e largue padrões <ItemLink id="nep:spirit_focusing_pattern"/> nele.
* O Provedor precisa ficar contra o **núcleo do cadinho**, o bloco que dá nome ao multibloco, não um de seus componentes. Nada mais na estrutura carrega a máquina.
* Nenhum Cartão de Importação é necessário. O cadinho devolve o nó concluído direto ao Provedor que o encomendou, bônus de fortuna incluídos, e só os joga no chão quando nada ao redor os aceita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Ímpeto Continua Seu</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O foco não tem entrada de item. O ímpeto parado no cadinho é o que escolhe a receita, e uma fabricação o racha um pouco em vez de consumi-lo, então ele nunca passa pela rede.

É por isso que o custo inteiro de um padrão é em espíritos, e por isso o ímpeto fica com você: um ímpeto que entrou novo e voltou rachado não é o item que o padrão prometeu, e a rede não o aceitaria de volta. Encaixe-o, deixe-o lá, e troque-o quando quiser um nó diferente.

> <Color id="yellow">Um cadinho foca um nó.</Color> Um cadinho segurando um Ímpeto de Ferro aceita padrões de ferro e espera por todo o resto. Dê a cada nó seu próprio cadinho, ou use uma <ItemLink id="nep:focused_spirit_matrix"/> com um <ItemLink id="nep:matrix_impetus"/>, que aceita todos eles.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Melhorias Ainda Contam</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O cadinho executa a fabricação no seu próprio ritmo, que é o ritmo do Malum: toda melhoria, catalisador e diapasão que você construiu ao redor dele se aplica exatamente como se aplica a um jogador. Bônus de fortuna voltam ao Provedor junto com o nó, então uma Montagem Intrincada paga dentro da rede em vez de no chão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de foco espiritual no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:spirit_focusing_pattern"/>.
* Um padrão de processamento comum também funciona. Cada ímpeto foca um nó diferente, então a saída sozinha basta para nomear a receita mesmo que os doze metais peçam os mesmos dois espíritos.
* O padrão nomeia os espíritos e o nó, nunca o ímpeto. Qual cadinho consegue executá-lo é decidido pelo que aquele cadinho está segurando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o cadinho não consegue receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| O cadinho não está segurando o ímpeto certo | Coloque no cadinho o ímpeto que foca este nó |
| O cadinho já está focando | Deixe a fabricação que ele está executando terminar |
| O cadinho ainda está segurando espíritos | Retire-os; ele só aceita uma fabricação que consegue iniciar limpa |
| O Provedor está contra um bloco componente | Mova-o para o núcleo do cadinho |
