---
navigation:
  title: Controlador de Miniaturização
  icon: nep:miniaturization_controller
  parent: nep/compactcrafting/index.md
  position: 51
item_ids:
  - nep:miniaturization_controller
---
# <Color id="gold">Controlador de Miniaturização</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Controlador de Miniaturização</Color>

  <ItemImage id="nep:miniaturization_controller" scale="2"/>

  A outra metade da automação de miniaturização. Onde a Matriz substitui o campo, o Controlador o dirige: ele empilha os blocos da receita entre os seus projetores, joga o catalisador dentro e recolhe o que o campo cospe. Não há teto de tamanho de campo, porque o campo é real.
</Column>

<Recipe id="nep:module_status/miniaturization_controller"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="compactcrafting:field_projector" y="1"/>
  <Block id="nep:miniaturization_controller" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Construa o campo de projetores como você faria normalmente, depois coloque o Controlador de forma que ele **toque um dos quatro projetores** por qualquer face. Esse contato é todo o vínculo: o próprio estado de bloco do projetor carrega o tamanho e a direção do campo, o que basta para nomear o centro do campo.
* Coloque um Provedor de Padrões contra qualquer outra face e largue padrões <ItemLink id="nep:miniaturization_pattern"/> nele. O Controlador armazena os blocos e o catalisador conforme chegam.
* O Controlador é uma máquina ME: ele entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ele **não precisa de Cartão de Importação**.
* Ele recusa padrões enquanto não tiver um campo para dirigir, então trabalhos nunca são roteados para um Controlador que não pode executá-los.

> <Color id="red">Nunca ligue redstone ao Controlador.</Color> Qualquer sinal alcançando um projetor desliga o campo inteiro, cancelando uma fabricação em andamento. O próprio Controlador não emite nem conduz energia, então é seguro sozinho; um repetidor ou comparador apontado para o projetor, não.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ele Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.35"/>

1) O Controlador coloca os blocos da receita dentro do campo, um bloco por tique, empilhados de baixo para cima e ancorados da forma como um jogador os construiria, então uma receita grande visivelmente se ergue entre os projetores.

2) Assim que o campo reporta uma correspondência na receita que o padrão nomeou, o catalisador é largado lá dentro, como um item,, exatamente como se você o tivesse jogado. O campo consome um e os blocos desaparecem.

3) O campo então executa o próprio tempo de fabricação da receita. A barra na tela do controlador acompanha o progresso do campo.

4) Quando a receita termina, o Controlador puxa o item fabricado de volta. Qualquer sobra da pilha de catalisador volta ao buffer de entrada.

Se o campo recusar o arranjo, os blocos são retirados e os ingredientes voltam ao buffer do Controlador, então uma incompatibilidade não custa nada.

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o estágio atual e o tamanho do campo ao qual ele está vinculado, ou **Sem campo** quando não está tocando um projetor ativo.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens largados não conseguem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que pede uma pilha de ferramentas ou poções ainda cabe.
* **Limpar Receitas Pendentes** descarta toda fabricação que o Controlador ainda deve, cancela ingredientes que ele tem sob solicitação e cancela os trabalhos de fabricação na rede que estavam esperando por ele.
* **Esvaziar Buffers** devolve tudo que estava preparado ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, de vazio para nada preparado até o 15 completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de miniaturização também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra o Controlador, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* O campo ainda faz o trabalho, então um Controlador sem campo ao lado recusa uma fabricação iniciada à mão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Nenhum campo de projetores.** O Controlador precisa tocar um dos quatro projetores, e o campo precisa ainda estar formado. Um projetor apaga quando seu oposto está faltando.
* **Blocos deixados no campo.** O Controlador só constrói num campo vazio. Retire qualquer coisa parada dentro dele, incluindo blocos que uma fabricação cancelada deixou para trás.
* **Campo desligado** ou **Campo já fabricando.** Um sinal de redstone em qualquer projetor desativa o campo; uma correspondência que o campo encontrou sozinho precisa terminar primeiro.
* **Campo pequeno demais.** Afaste os projetores até o campo ser grande o suficiente para a receita.
* O Controlador precisa estar numa rede ME energizada, não apenas conectado a uma.
* O Controlador ocupa <nep:ConfigValue name="miniaturizationControllerChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ele. Uma rede que não consegue cedê-los o deixa offline.
* Ligue o Registro Detalhado em Debug para que o Controlador registre todo arranjo que ele constrói, abandona ou perde.
