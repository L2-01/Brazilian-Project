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

Enquanto <ItemLink id="pattern_provider" />s, <ItemLink id="import_bus" />es, <ItemLink id="storage_bus" />es e afins
são o principal método pelo qual uma rede AE2 interage com o mundo, os Terminais são o principal método pelo qual uma rede
AE2 interage com *você*. Há várias variantes com funções diferentes.

Terminais herdam a cor do [cabo](cables.md) em que estão montados.

Eles são [subpartes de cabo](../ae2-mechanics/cable-subparts.md).

## Posicionamento de Terminais

Como um terminal é muitas vezes a primeira [subparte](../ae2-mechanics/cable-subparts.md) que alguém coloca,
é comum errar e colocar o terminal ao contrário. Aqui está um exemplo do que fazer e do que não fazer:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminal_placement.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <LineAnnotation color="#ff3333" from="2.5 .5 .5" to="4.5 2.5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="2.5 2.5 .5" to="4.5 .5 .5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="-.5 2.5 .5" to="1 .5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1 .5 .5" to="1.5 1 .5" alwaysOnTop={true} thickness="0.05"/>
</GameScene>

Você ainda tem um terminal e um aceitador de energia, só que agora o terminal está do lado certo e de fato
conectado à rede — e tudo cabe num espaço menor também.

<a name="terminal-ui"></a>

# Busca do Terminal

A caixa de busca aceita termos Regex, então você pode, por exemplo, escrever "gtceu:.*ore" para pegar todos os minérios do Gregtech. Aprender
Regex fica como exercício para o leitor.

# Terminal

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

Seu terminal básico, permitindo ver e acessar o conteúdo do [armazenamento da sua rede](../ae2-mechanics/import-export-storage.md)
e requisitar coisas da sua configuração de [fabricação automática](../ae2-mechanics/autocrafting.md).

## A UI

Há várias seções na UI de um terminal básico

A seção central dá acesso ao armazenamento da sua rede. Você pode colocar e tirar coisas. Há vários
atalhos de mouse/teclado:

*   Clique esquerdo pega uma pilha, clique direito pega meia pilha.
*   Se um item, fluido etc. puder ser [fabricado automaticamente](../ae2-mechanics/autocrafting.md),
    o que quer que esteja vinculado a "pick block" (geralmente o clique do meio) abre uma UI para especificar a quantidade a fabricar. Você também pode inserir fórmulas como `3*64/2`
    ou digitar `=32` para fabricar apenas o número de itens necessário para chegar a 32 no seu armazenamento.
*   Segurar shift congela os itens exibidos no lugar, impedindo que se reorganizem quando as quantidades mudam ou novos itens entram no sistema.
*   Clicar com o direito com um balde ou outro recipiente de fluido deposita o fluido; clicar com o esquerdo num fluido no terminal com
    um recipiente de fluido vazio retira o fluido.

A seção da esquerda tem botões de configuração para:

*   Ordenar por diferentes atributos como nome, mod e quantidade
*   Ver armazenados, fabricáveis ou ambos
*   Ver itens, fluidos ou ambos
*   Mudar a ordem de ordenação
*   Abrir a janela de configurações detalhadas do terminal
*   Mudar a altura da UI do terminal

À direita há slots para <ItemLink id="view_cell" />s

O canto superior direito da seção central (botão do martelo) abre a UI de estado da [fabricação automática](../ae2-mechanics/autocrafting.md),
permitindo ver o progresso das suas fabricações automáticas e o que cada [CPU de fabricação](crafting_cpu_multiblock.md) está fazendo.

## Receita

<RecipeFor id="terminal" />

<a name="crafting-terminal-ui"></a>

# Terminal de Fabricação

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/crafting_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

O Terminal de Fabricação é parecido com um terminal normal, com todas as mesmas configurações e seções, mas com uma grade de fabricação adicional que será automaticamente
reabastecida a partir do [armazenamento de rede](../ae2-mechanics/import-export-storage.md). Cuidado ao dar shift+clique na saída!

Você deve melhorar seu terminal para um terminal de fabricação o quanto antes.

## A UI

O terminal de fabricação tem a mesma UI do terminal normal, mas com uma grade de fabricação adicional no meio.

Há 2 botões adicionais, para esvaziar a grade de fabricação no armazenamento de rede ou no seu inventário.

## Receita

<RecipeFor id="crafting_terminal" />

<a name="pattern-encoding-terminal-ui"></a>

# Terminal de Codificação de Padrões

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_encoding_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

O Terminal de Codificação de Padrões é parecido com um terminal normal, com todas as mesmas configurações e seções, mas com uma
interface de codificação de [padrões](patterns.md) adicional. Ele se parece com a UI de um terminal de fabricação, mas esta grade de fabricação não
executa fabricações de verdade.

Você deve ter um destes além de um terminal de fabricação.

## A UI

O terminal de fabricação tem a mesma UI do terminal normal, com a interface de codificação de [padrões](patterns.md) adicionada.

A interface de codificação de padrões tem várias seções:

Um slot para inserir <ItemLink id="blank_pattern" />s.

Uma seta grande para codificar o padrão.

Um slot para padrões codificados. Coloque um padrão já codificado neste slot para editá-lo, depois clique na seta de "codificar".

4 abas à direita para trocar o tipo de padrão a ser codificado entre

*   Fabricação
*   Processamento
*   Ferraria
*   Alvenaria

A UI central muda dependendo do tipo de padrão a ser codificado:

*   No modo fabricação:
    *   Clique com o esquerdo ou arraste do JEI/REI os ingredientes para formar a receita. Clique com o direito para remover o ingrediente.
    *   Ativar substituições permite coisas como fabricar gravetos de qualquer tipo de tábua. Isso só deve ser usado
        quando estritamente necessário.
    *   Substituições de fluido permitem usar fluidos armazenados no lugar de baldes de fluido.
    *   Você também pode codificar um padrão diretamente da tela de receitas do JEI/REI.

*   No modo processamento:
    * Clique com o esquerdo ou direito, ou arraste do JEI/REI os ingredientes para especificar as entradas e saídas da receita.
    * Clique com o direito com um recipiente de fluido (como um balde ou tanque de fluido) para definir aquele fluido como ingrediente em vez do item balde ou tanque.
    * Ao segurar uma pilha, o clique esquerdo coloca a pilha inteira, o clique direito coloca um item. Clique esquerdo numa pilha de ingrediente existente para
        remover a pilha inteira e clique direito para decrementar a pilha em 1. O que quer que esteja vinculado a "pick block" (geralmente o clique do meio)
        permite especificar uma quantidade precisa do item ou fluido.
    * Os slots de saída têm uma saída principal e espaço para saídas secundárias que você queira que o algoritmo de fabricação automática conheça.
    * Os slots de entrada e saída têm rolagem, então você pode ter 81 ingredientes diferentes e 26 saídas secundárias.
    * Você também pode codificar um padrão diretamente da tela de receitas do JEI/REI.

*   As UIs dos modos ferraria e alvenaria funcionam parecido com uma mesa de ferraria e um cortador de pedra, respectivamente.

## Receita

<RecipeFor id="pattern_encoding_terminal" />

<a name="pattern-access-terminal-ui"></a>

# Terminal de Acesso aos Padrões

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_access_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

O Terminal de Acesso aos Padrões serve para resolver um problema específico: numa torre densa de <ItemLink id="pattern_provider" />s
e <ItemLink id="molecular_assembler" />s, você não consegue acessar fisicamente os provedores para inserir novos padrões. Além disso,
talvez você tenha preguiça e não queira atravessar sua base para inserir um [padrão](patterns.md). O terminal de acesso aos padrões
permite acessar todos os provedores de padrões da rede.

## A UI

Este terminal tem uma UI diferente de todos os outros terminais.

Ele tem configurações para a altura do terminal e quais provedores de padrões mostrar.

Cada linha no terminal corresponde a um provedor de padrões específico.

Provedores de padrões no terminal são ordenados pelos blocos a que estão conectados, ou pelo nome que você deu a eles (numa bigorna ou
com uma <ItemLink id="name_press" />).

## Receita

<RecipeFor id="pattern_access_terminal" />
