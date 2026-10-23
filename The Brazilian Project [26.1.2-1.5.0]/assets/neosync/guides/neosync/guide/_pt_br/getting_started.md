---
navigation:
  title: Primeiros Passos
  icon: minecraft:golden_apple
  parent: index.md
  position: 1
---

# <Color id="light_purple">Primeiros Passos</Color>

Esta página acompanha uma primeira casca do zero até a sua primeira sincronização.

***
## <Color id="gold">Passo 1: O Núcleo de Sincronização</Color>

Fabrique um <ItemLink id="sync_core"/>. Ele é o ingrediente-chave de todo bloco do NeoSync.

<RecipeFor id="sync_core"/>

***
## <Color id="gold">Passo 2: O Construtor de Cascas</Color>

Fabrique um <ItemLink id="shell_constructor"/> e posicione-o. Ele tem dois blocos de altura, então deixe espaço acima.

<RecipeFor id="shell_constructor"/>

Clique direito no construtor com a mão vazia para dar a ele uma amostra genética.

<Color id="red">Aviso</Color>: com a config padrão a amostra custa 20 de vida (40 no hardcore), que é a sua barra de vida inteira. Coma uma maçã dourada ou maçã dourada encantada antes, segure um totem da imortalidade, ou peça ao dono do servidor para ligar `warnPlayerInsteadOfKilling` na config. Se você morrer, a casca ainda começa a ser construída.

***
## <Color id="gold">Passo 3: Energize o Construtor</Color>

Fabrique uma <ItemLink id="treadmill"/> e posicione-a de modo que uma das metades toque o construtor. Ela é posicionada como uma cama: dois blocos de comprimento, estendendo para longe de você, com o bloco mais distante sendo a frente.

<RecipeFor id="treadmill"/>

Atraia um porco ou um lobo para o bloco da frente. O animal corre parado e o construtor se enche. Um comparador no construtor reporta o progresso da construção, e o Jade o mostra como porcentagem.

Qualquer cabo ou gerador de Forge Energy apontado para o construtor também funciona. Uma casca completa precisa de 256000 FE por padrão.

***
## <Color id="gold">Passo 4: O Armazenamento de Cascas</Color>

Fabrique um <ItemLink id="shell_storage"/> e posicione-o em algum lugar para onde você queira poder viajar.

<RecipeFor id="shell_storage"/>

Dê a ele um sinal de redstone ou alimente-o com FE. Quando tem energia, as portas abrem.

***
## <Color id="gold">Passo 5: Sincronize</Color>

Entre no armazenamento aberto. O seletor de cascas aparece com todas as cascas prontas que você tem, agrupadas por mundo. Clique numa casca e sua mente se move para ela. Seu corpo antigo fica no armazenamento com tudo que carregava.

Veja [Sincronização](syncing.md) para o que acontece quando você morre, como funciona a viagem entre dimensões e como renomear cascas.
