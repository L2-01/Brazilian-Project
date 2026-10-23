---
navigation:
  title: Matriz de Espírito Vinculada
  icon: nep:bound_spirit_matrix
  parent: nep/occultism/index.md
  position: 10
item_ids:
  - nep:bound_spirit_matrix
categories:
  - Matrices
---
# <Color id="gold">Matriz de Espírito Vinculada</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Espírito Vinculada</Color>

  <ItemImage id="nep:bound_spirit_matrix" scale="2"/>

  Um bloco que faz o trabalho do fogo espiritual, de um espírito triturador e de um espírito cristalizador. Sem chamas para jogar itens, sem espírito para invocar e manter alimentado, e nada deixado jogado no chão.
</Column>

<Recipe id="nep:module_status/bound_spirit_matrix"/>

> <Color id="yellow">O bloco mostra o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo deriva enquanto a Matriz está ociosa, acelera e clareia quando uma fabricação roda, e irrompe quando a fabricação aterrissa. Uma Matriz parada escurece e trava no lugar, e sua moldura apaga.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Obtendo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz é vinculada num ritual no pentáculo de fabricação de afrit do Occultism, iniciado com um Livro de Vinculação vinculado para um afrit. As tigelas guardam um Montador Molecular ME, quatro Circuitaria da Matriz, uma Matriz Dimensional e dois Cristais Sintonizados com Espíritos. O visualizador de receitas mostra o ritual por completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:bound_spirit_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e encha-o de **Padrões de Processamento** comuns: um item de entrada, e o item que a receita faz como saída.
* Codifique a saída como o item exato que a receita produz. Uma receita de trituração que faz "qualquer pó de ferro" faz um pó específico, e é esse que o padrão precisa nomear.
* A Matriz roda só com a energia da rede ME. Ela não precisa de FE nem de Cartão de Importação, e devolve itens prontos ao Provedor sozinha.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Espíritos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os dois espaços à direita da tela aceitam cada um um [Livro Infundido com Espírito](/nep/occultism/spirit-infused-books.md): o de cima um triturador, o de baixo um cristalizador.

* **O fogo espiritual não precisa de livro.** Ele está sempre disponível, e cada fabricação leva <nep:ConfigValue name="boundSpiritMatrixSpiritFireTicks"/> ticks.
* **Trituração e cristalização precisam do seu livro.** Sem um, a Matriz recusa esses padrões.
* **O tier é o do espírito.** Um foliot, djinni, afrit ou marid vinculado executa exatamente as receitas que aquele espírito poderia executar no mundo, na velocidade e com a saída daquele espírito, como as configurações de tier do próprio Occultism os definem. A saída extra de um espírito mais forte volta à rede junto do resto.
* **Vários itens de uma vez.** Um espírito que as configurações do Occultism permitem trabalhar vários itens de uma vez faz o mesmo aqui, terminando esse tanto de fabricações enfileiradas no tempo de uma só.
* Trocar um livro por um mais fraco deixa qualquer fabricação enfileirada que ele não pode mais executar esperando até um livro forte o bastante voltar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor nomeia o que está sendo feito, quantos trabalhos estão na fila, que tipo de trabalho está rodando e quanto a fabricação leva.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. **Guia** é sempre o último à direita.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio quando nada está preparado até 15 cheio.
* Os espaços de entrada só aceitam o que a Matriz realmente precisa, então uma funil pode completá-la sem entupi-la.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de fogo espiritual, trituração ou cristalização também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: a entrada sai do seu inventário e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Faltando alguma coisa, nada se move: o botão avisa e a receita marca em vermelho o ingrediente que está faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item na sua mão é usado primeiro quando ele serve à receita.
* Trituração e cristalização ainda precisam do seu livro no espaço.
* Os itens prontos esperam no buffer de saída para você pegar. Nada vai à rede, e nenhum trabalho de fabricação é criado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa.
* **Canais de rede livres insuficientes.** A Matriz ocupa <nep:ConfigValue name="boundSpiritMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* **Precisa de um triturador, ou de um cristalizador.** O padrão é uma receita de trituração ou cristalização e nenhum livro para aquele trabalho está no espaço.
* **Espírito fraco demais.** O tier do espírito vinculado está fora da faixa que a receita permite, ou ele faz menos itens do que o padrão promete.
* **Mais de uma entrada.** Toda receita que esta Matriz executa recebe um único item, então um padrão com duas entradas diferentes é recusado.
* **Buffer de saída cheio.** Uma fabricação pronta sem destino segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode ser enfileirada por vez; um segundo padrão que faz o mesmo item de outra forma é recusado até o primeiro terminar.
