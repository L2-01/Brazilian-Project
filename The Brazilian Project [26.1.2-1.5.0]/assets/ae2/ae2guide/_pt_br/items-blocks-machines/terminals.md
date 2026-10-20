---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Terminais
  icon: crafting_terminal
  position: 210
categories:
- devices
item_ids:
- ae2:terminal
- ae2:crafting_terminal
- ae2:pattern_encoding_terminal
- ae2:pattern_access_terminal
---

# Terminais

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminals.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Enquanto <ItemLink id="pattern_provider" />s, <ItemLink id="import_bus" />s, <ItemLink id="storage_bus" />s, etc.
são o método primário pelo qual uma rede AE2 interage com o mundo, Terminais são o método primário pelo qual uma rede AE2
interage com *você*. Há várias variantes com funções diferentes.

Terminais herdam a cor do [cabo](cables.md) em que estão montados.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Posicionamento do Terminal

Como um terminal costuma ser a primeira [subparte](../ae2-mechanics/cable-subparts.md) que alguém coloca,
é comum errar e colocar o terminal de costas. Aqui está um exemplo do que fazer e do que não fazer:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminal_placement.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <LineAnnotation color="#ff3333" from="2.5 .5 .5" to="4.5 2.5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="2.5 2.5 .5" to="4.5 .5 .5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="-.5 2.5 .5" to="1 .5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1 .5 .5" to="1.5 1 .5" alwaysOnTop={true} thickness="0.05"/>
</GameScene>

Você ainda tem um terminal e um aceitador de energia, só que agora o terminal está no sentido certo e de fato
conectado à rede, e tudo cabe num espaço menor também.

<a name="terminal-ui"></a>

# Busca do Terminal

A caixa de busca do terminal aceita termos de expressão regular (*regex*). Por exemplo, você pode escrever "gtceu:.*ore" para pegar todos os minérios do GregTech.
Aprender a sintaxe de expressões regulares fica como exercício para o leitor.

# Terminal

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

Seu terminal básico, permitindo ver e acessar o conteúdo do [armazenamento da sua rede](../ae2-mechanics/import-export-storage.md)
e pedir coisas ao seu esquema de [autofabricação](../ae2-mechanics/autocrafting.md).

## A UI

Há várias seções na UI de um terminal básico

A seção central dá acesso ao armazenamento da sua rede. Você pode colocar coisas e tirar coisas. Há vários
atalhos de mouse/tecla:

*   Botão esquerdo pega um monte. Botão direito pega meio monte.
*   Se um item ou fluido ou etc. puder ser [autofabricado](../ae2-mechanics/autocrafting.md),
    o que quer que esteja vinculado a "pegar bloco" (geralmente botão do meio) abre uma UI para especificar a quantidade a fabricar. Você também pode inserir fórmulas como `3*64/2`,
    ou digitar `=32` para fabricar apenas o número de itens necessário para chegar a 32 no seu armazenamento.
*   Segurar shift congela os itens exibidos no lugar, impedindo que se reorganizem quando as quantidades mudam ou novos itens entram no sistema.
*   Clicar com o botão direito com um balde ou outro recipiente de fluido depositará o fluido.
*   Clicar com o botão esquerdo num fluido com a mão vazia retirará um balde do fluido, se a rede tiver um balde vazio em estoque. Clicar com o botão esquerdo num fluido com um recipiente de fluido retirará o fluido para dentro do recipiente.

A seção esquerda tem botões de configuração para:

*   Ordenar por diferentes atributos como nome, mod e quantidade
*   Filtrar a visualização para armazenados, fabricáveis, ou ambos
*   Filtrar a visualização para itens, fluidos, ou ambos
*   Mudar a ordem de ordenação
*   Abrir a janela de configurações detalhadas do terminal
*   Mudar a altura da UI do terminal

À direita, há slots para <ItemLink id="view_cell" />s.

O canto superior direito da seção central (botão de martelo) abre a UI de status de [autofabricação](../ae2-mechanics/autocrafting.md),
permitindo ver o progresso das suas autofabricações e o que cada [CPU de fabricação](crafting_cpu_multiblock.md) está fazendo.

## Receita

<RecipeFor id="terminal" />

<a name="crafting-terminal-ui"></a>

# Terminal de Fabricação

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/crafting_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

O Terminal de Fabricação é semelhante a um terminal comum, com todas as mesmas configurações e seções, mas com uma grade de fabricação adicionada que será automaticamente
reabastecida a partir do [armazenamento da rede](../ae2-mechanics/import-export-storage.md). Cuidado ao shift-clicar na saída!

Você deve melhorar seu terminal para um terminal de fabricação o quanto antes.

## A UI

O terminal de fabricação tem a mesma UI do terminal comum, mas com uma grade de fabricação adicionada no meio.

Há 2 botões adicionais para esvaziar a grade de fabricação para o armazenamento da rede ou para o seu inventário.

## Receita

<RecipeFor id="crafting_terminal" />

<a name="pattern-encoding-terminal-ui"></a>

# Terminal de Codificação de Padrões

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_encoding_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

O Terminal de Codificação de Padrões é semelhante a um terminal comum, com todas as mesmas configurações e seções, mas com uma interface de
codificação de [padrões](patterns.md) adicionada. Parece semelhante à UI de um terminal de fabricação, mas esta grade de fabricação não
realiza fabricações de verdade.

Você deve ter um destes além de um terminal de fabricação.

## A UI

O terminal de codificação de padrões tem a mesma UI do terminal comum, mas com uma interface de codificação de [padrões](patterns.md) adicionada.

A interface de codificação de padrões tem várias seções:

Um slot para inserir <ItemLink id="blank_pattern" />s.

Uma seta grande para codificar o padrão.

Um slot para padrões codificados. Para editar um padrão existente, coloque o padrão neste slot. Você pode clicar na seta "codificar" para sobrescrever com novos dados.

4 abas à direita escolhem o tipo de padrão:

*   Fabricação
*   Processamento
*   Ferraria
*   Corte de Pedra

A UI central muda dependendo do tipo de padrão a ser codificado:

*   No modo fabricação:
    *   Clique com o botão esquerdo ou arraste do JEI/REI os ingredientes para formar a receita. Botão direito remove o ingrediente.
    *   Habilitar substituições permite coisas como fabricar gravetos de qualquer tipo de tábua. Isso só deve ser usado
        quando absolutamente necessário.
    *   Substituições de fluido permitem usar fluidos armazenados no lugar de baldes de fluidos.
    *   Você também pode codificar um padrão diretamente da tela de receita do JEI/REI.

*   No modo processamento:
    * Clique com o botão esquerdo ou direito ou arraste do JEI/REI os ingredientes para especificar as entradas e saídas da receita.
    * Clique com o botão direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como ingrediente em vez do item balde ou tanque.
    * Ao segurar um monte, o botão esquerdo coloca o monte inteiro, o direito coloca um item. Botão esquerdo num monte de ingrediente existente
        remove o monte inteiro e botão direito decrementa o monte em 1. Usar a tecla/botão vinculado a "Pegar Bloco" (geralmente botão do meio)
        permite especificar uma quantidade precisa do item ou fluido.
    * Os slots de saída têm uma saída primária e espaço para quaisquer saídas secundárias que você queira que o algoritmo de autofabricação conheça.
    * Tanto os slots de entrada quanto de saída rolam, então você pode ter 81 ingredientes diferentes e 26 saídas secundárias.
    * Você também pode codificar um padrão diretamente da tela de receita do JEI/REI.

*   As UIs dos modos ferraria e corte de pedra funcionam de forma semelhante a uma bancada de ferraria e um cortador de pedra, respectivamente.

## Receita

<RecipeFor id="pattern_encoding_terminal" />

<a name="pattern-access-terminal-ui"></a>

# Terminal de Acesso aos Padrões

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_access_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

O terminal de acesso aos padrões permite acessar todos os provedores de padrões da rede.
Isso serve para resolver um problema específico: numa torre densa de <ItemLink id="pattern_provider" />s
e <ItemLink id="molecular_assembler" />s, você não consegue acessar fisicamente os provedores para inserir novos padrões. Além disso,
talvez você esteja com preguiça e não queira atravessar sua base para inserir ou atualizar um [padrão](patterns.md).

## A UI

Este terminal tem uma UI diferente de todos os outros terminais.

Ele tem configurações para altura do terminal e quais provedores de padrões mostrar.

Cada linha no terminal corresponde a um provedor de padrões específico.

Provedores de padrões no terminal são ordenados e agrupados pelos blocos a que estão conectados,
ou pelo nome que você deu a eles (usando uma <ItemLink id="name_press" /> ou uma bigorna).

## Receita

<RecipeFor id="pattern_access_terminal" />
