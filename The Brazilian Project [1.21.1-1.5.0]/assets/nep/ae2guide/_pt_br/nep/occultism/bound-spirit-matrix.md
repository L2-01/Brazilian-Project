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

  Um bloco que faz o trabalho do fogo espiritual, de um espírito triturador e de um espírito cristalizador. Sem chamas para arremessar itens, sem espírito para invocar e manter alimentado, e nada deixado jogado no chão.
</Column>

<Recipe id="nep:module_status/bound_spirit_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Obtendo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz é vinculada num ritual no pentáculo de fabricação afrit do Occultism, iniciado com um Livro de Vínculo vinculado para um afrit. As tigelas guardam um Montador Molecular ME, quatro Circuitarias da Matriz, uma Matriz Dimensional e dois Cristais Sintonizados com Espírito. O visualizador de receitas mostra o ritual por completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:bound_spirit_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e o encha com **Padrões de Processamento** comuns: um item de entrada, e o item que a receita produz como saída.
* Codifique a saída como o item exato que a receita produz. Uma receita de trituração que faz "qualquer pó de ferro" faz um pó específico, e é esse que o padrão precisa nomear.
* A Matriz roda só com a energia da rede ME. Não precisa de FE, nem de Cartão de Importação, e devolve os itens concluídos ao Provedor por conta própria.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Espíritos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os dois espaços à direita da tela aceitam um [Livro Infundido com Espírito](/nep/occultism/spirit-infused-books.md) cada: o de cima um triturador, o de baixo um cristalizador.

* **O fogo espiritual não precisa de livro.** Ele está sempre disponível, e cada fabricação leva <nep:ConfigValue name="boundSpiritMatrixSpiritFireTicks"/> tiques.
* **Triturar e cristalizar precisam do livro delas.** Sem um, a Matriz rejeita esses padrões.
* **A categoria é a do espírito.** Um foliot, djinni, afrit ou marid vinculado executa exatamente as receitas que aquele espírito poderia executar no mundo, na velocidade daquele espírito e com a saída daquele espírito, conforme as próprias configurações de categoria do Occultism as definem. A saída extra de um espírito mais forte volta para a rede junto com o resto.
* **Vários itens de uma vez.** Um espírito que as configurações do Occultism deixam trabalhar vários itens de uma vez faz o mesmo aqui, concluindo aquele tanto de fabricações na fila no tempo de uma só.
* Trocar um livro por um mais fraco deixa qualquer fabricação na fila que ele não consiga mais executar esperando até um livro forte o suficiente voltar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador nomeia o que está sendo feito, quantos trabalhos estão na fila, qual tipo de trabalho está rodando e quanto tempo a fabricação leva.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. **Guia** é sempre o mais à direita deles.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio para nada preparado até o 15 completo.
* Os espaços de entrada só aceitam o que a Matriz realmente está precisando, então um funil pode completá-la sem entupi-la.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de fogo espiritual, trituração ou cristalização também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: a entrada sai do seu inventário e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho o ingrediente que está faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item na sua mão é usado primeiro quando se encaixa na receita.
* Trituração e cristalização ainda precisam do livro delas no seu espaço.
* Os itens concluídos esperam no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa.
* **Sem canais livres suficientes na rede.** A Matriz ocupa <nep:ConfigValue name="boundSpiritMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* **Precisa de um triturador, ou de um cristalizador.** O padrão é uma receita de trituração ou cristalização e nenhum livro daquele trabalho está no seu espaço.
* **Espírito fraco demais.** A categoria do espírito vinculado está fora da faixa que a receita permite, ou ele produz menos itens do que o padrão promete.
* **Mais de uma entrada.** Toda receita que esta Matriz executa pega um único item, então um padrão com duas entradas diferentes é recusado.
* **Buffer de saída cheio.** Uma fabricação concluída sem lugar para ir segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode estar na fila por vez; um segundo padrão fazendo o mesmo item de outra forma é recusado até a primeira terminar.
