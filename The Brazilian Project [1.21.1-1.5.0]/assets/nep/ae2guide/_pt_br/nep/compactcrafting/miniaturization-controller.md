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

  A outra metade da automação de miniaturização. Onde a Matriz substitui o campo, o Controlador o dirige: ele empilha os blocos da receita entre seus projetores, joga o catalisador dentro e coleta o que o campo cospe para fora. Não há teto de tamanho de campo, porque o campo é real.
</Column>

<Recipe id="nep:module_status/miniaturization_controller"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="compactcrafting:field_projector" y="1"/>
  <Block id="nep:miniaturization_controller" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Construa o campo de projetores como faria normalmente, depois coloque o Controlador de modo que ele **toque um dos quatro projetores** em qualquer face. Esse contato é toda a vinculação: o próprio estado de bloco do projetor carrega o tamanho e a direção do campo, o que basta para nomear o centro do campo.
* Coloque um Provedor de Padrões contra qualquer outra face e insira nele padrões de <ItemLink id="nep:miniaturization_pattern"/>. O Controlador armazena em buffer os blocos e o catalisador conforme chegam.
* O Controlador é uma máquina ME: ele se junta à rede pela própria conexão de grade, consome um pequeno custo fixo de energia e devolve itens prontos ao Provedor sozinho. Ele não precisa de **Cartão de Importação**.
* Ele recusa padrões enquanto não tiver um campo para dirigir, então trabalhos nunca são roteados para um Controlador que não pode executá-los.

> <Color id="red">Nunca ligue redstone no Controlador.</Color> Qualquer sinal que alcance um projetor desliga o campo inteiro, cancelando uma fabricação em andamento. O próprio Controlador não emite nem conduz energia, então é seguro sozinho; um repetidor ou comparador apontado para o projetor não é.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.35"/>

1) O Controlador coloca os blocos da receita dentro do campo, um bloco por tick, empilhados de baixo para cima e ancorados do jeito que um jogador os construiria, então uma receita grande visivelmente se ergue entre os projetores.

2) Quando o campo reporta um casamento com a receita que o padrão nomeou, o catalisador é solto dentro como item solto, exatamente como se você o tivesse jogado. O campo consome um e os blocos desaparecem.

3) O campo então executa o tempo de fabricação da própria receita. A barra na tela do controlador acompanha o progresso do campo.

4) Quando a receita termina, o Controlador puxa o item fabricado de volta. O que sobrar da pilha de catalisador volta ao buffer de entrada.

Se o campo recusar o arranjo, os blocos são retirados e os ingredientes voltam ao buffer do Controlador, então um desencontro não custa nada.

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o estágio atual e o tamanho do campo ao qual ele está vinculado, ou **Sem campo** quando não está tocando um projetor ativo.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens soltos não podem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, não importa o quanto esse item normalmente empilhe, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.
* **Limpar receitas pendentes** descarta toda fabricação que o Controlador ainda deve, cancela ingredientes que ele pediu e cancela os trabalhos de fabricação na rede que esperavam por ele.
* **Esvaziar Buffers** retorna tudo o que estava preparado ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, vazio para nada preparado até um 15 cheio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de miniaturização também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra o Controlador, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* O campo ainda faz o trabalho, então um Controlador sem campo ao lado recusa uma fabricação manual.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem campo de projetores.** O Controlador precisa tocar um dos quatro projetores, e o campo precisa ainda estar formado. Um projetor apaga quando seu oposto está faltando.
* **Blocos deixados no campo.** O Controlador só constrói num campo vazio. Limpe qualquer coisa parada dentro dele, incluindo blocos que uma fabricação cancelada deixou para trás.
* **Campo desligado** ou **Campo já fabricando.** Um sinal de redstone em qualquer projetor desativa o campo; um casamento que o campo achou sozinho precisa terminar primeiro.
* **Campo pequeno demais.** Afaste os projetores até o campo ser grande o bastante para a receita.
* O Controlador precisa estar numa rede ME energizada, não apenas conectado a uma.
* O Controlador ocupa <nep:ConfigValue name="miniaturizationControllerChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ele. Uma rede que não pode cedê-los o deixa offline.
* Ative o Registro Detalhado em Depuração para que o Controlador registre cada arranjo que constrói, abandona ou perde.
