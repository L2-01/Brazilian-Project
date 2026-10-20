---
navigation:
  title: Matriz de Fusão
  icon: nep:fusion_matrix
  parent: nep/draconicevolution/index.md
  position: 20
item_ids:
  - nep:fusion_matrix
categories:
  - Matrices
---
# <Color id="gold">Matriz de Fusão</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Fusão</Color>

  <ItemImage id="nep:fusion_matrix" scale="2"/>

  Um bloco que executa uma fabricação de fusão inteira. Sem Núcleo de Fusão, sem Injetores, sem alinhamento: a Matriz prepara os ingredientes por conta própria, carrega com energia bruta e devolve o item concluído à rede.
</Column>

<Recipe id="nep:module_status/fusion_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:fusion_matrix" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#ffaa00">
    **Matriz de Fusão**, ligada à energia e à rede ME
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e largue padrões <ItemLink id="nep:fusion_crafting_pattern"/> nele. A Matriz armazena os ingredientes conforme chegam.
* Alimente-a com **FE** em qualquer face, ou com o OP do próprio Draconic Evolution, que conta da mesma forma. Esta é a energia de que a fabricação é feita, e ela substitui os Injetores por completo.
* Sem nada a alimentando, uma fabricação carregando consome a própria energia da rede ME, até o último décimo que a rede mantém em reserva. A configuração `Charge From ME Network` desativa isso.
* A Matriz também é uma máquina ME: ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela **não precisa de Cartão de Importação**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma fabricação passa por duas fases, mostradas na barra da tela da Matriz.

| Fase | O que está acontecendo |
|---|---|
| <Color id="red">Carregando</Color> | A Matriz está puxando energia, até sua taxa de carregamento por tique, até ter acumulado o custo de energia total da receita |
| <Color id="gold">Fundindo</Color> | A energia é gasta e o item é montado ao longo de um número fixo de tiques |

Carregar é onde quase todo o tempo vai, e depende inteiramente de quanta energia você consegue empurrar para a Matriz. Uma receita custa exatamente o que o Draconic Evolution diz que ela custa, então uma receita Caótica ainda pede os mesmos cem milhões de FE que o multibloco real teria queimado.

> <Color id="yellow">Melhorias de equipamento automatizam, e mantêm o que o item antigo tinha.</Color> A Matriz monta equipamento da mesma forma que um Núcleo de Fusão, carregando a energia, os módulos e os encantamentos do catalisador para o resultado. A rede gasta um item que ela já tem onde quer que a própria receita aceite um, então um capacitor carregado, com módulos ou encantado parado no estoque é melhorado no lugar em vez de um vazio ser fabricado primeiro.

> <Color id="yellow">Ingredientes mantidos vão e voltam.</Color> Se uma receita mantém um ingrediente em vez de consumi-lo, o padrão o carrega como qualquer outra entrada: a Matriz toma um emprestado para a fabricação e o devolve intacto quando ela termina. Um basta para um trabalho de qualquer tamanho, porque a rede o recebe de volta antes da próxima execução começar. Um padrão codificado sem ele também funciona, a partir de uma cópia que você carrega no buffer de entrada à mão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de fusão também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Um ingrediente que a receita mantém em vez de consumir é pedido uma vez por mais fabricações que você enfileire, e ainda está lá quando elas terminam.
* A fusão monta seu resultado a partir do catalisador que recebeu, então uma melhoria mantém o desgaste e os encantamentos da ferramenta que você alimentou. Onde o catalisador é uma ferramenta em vez de um item comum a Matriz gasta a que você está segurando, e o visualizador de receitas a nomeia no botão de transferência antes de você apertar.
* A energia vem de fora como sempre, então a Matriz ainda precisa estar energizada e numa rede para uma fabricação iniciada à mão andar.

> <Color id="yellow">Um resultado por vez.</Color> Uma fabricação iniciada à mão e um padrão para o mesmo resultado não podem entrar na fila juntos: o que chegar depois é recusado, então a Matriz nunca precisa adivinhar a quem um item concluído pertence.

Desligue **Fabricação Manual** em Machines na configuração para deixar a Matriz fabricando só o que um Provedor de Padrões envia a ela.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Núcleos de Melhoria</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O espaço à direita da tela aceita uma pilha de até dezesseis núcleos do Draconic Evolution. Um espaço significa um tier por vez, e um espaço cheio é o que alcança o teto de um tier, então um espaço pela metade chega a meio caminho.

O buffer de cada tier é dimensionado para o tier a que pertence: a receita de fusão mais cara daquele tier, ou o núcleo do tier seguinte, o que custar mais. Encaixe os núcleos do tier que você realmente está fabricando e o buffer cobre.

| Núcleo | Buffer com espaço cheio | Também compra |
|---|---|---|
| <ItemLink id="draconicevolution:wyvern_core"/> | 50M FE, o suficiente para um Bloco de Dracônio Desperto | Nada. Núcleos Wyvern são buffer e só buffer |
| <ItemLink id="draconicevolution:awakened_core"/> | 256M FE, o suficiente para um Cajado Dracônico de Poder | Até 38% de fase de fusão mais curta |
| <ItemLink id="draconicevolution:chaotic_core"/> | 1.024B FE, o suficiente para um Cajado Caótico de Poder | Até 50% de desconto no custo de energia da receita, e uma fase de fusão que cai até 4 tiques |

Núcleos Wyvern enchem o buffer em linha reta, enquanto Núcleos Dracônicos e Caóticos multiplicam, então seus ganhos chegam tarde no espaço. Um Núcleo de Dracônio não faz nada, então o espaço não aceita um. Passe o mouse sobre o espaço para os números exatos que sua configuração está rodando.

> <Color id="yellow">Núcleos ajustam, não aceleram o carregamento.</Color> Um buffer mais fundo deixa a Matriz acumular energia enquanto está ociosa e atravessar um fornecimento irregular, mas a taxa de carregamento ainda é o teto de quão rápido a energia entra. Núcleos Caóticos são os únicos que encolhem a conta em si.

> <Color id="yellow">Alimente um buffer grande com a própria energia do Draconic Evolution.</Color> Energia Forge conta em 32 bits, então um cabo de FE lê qualquer buffer além de 2.147.483.647 como permanentemente cheio e para de empurrar. Os padrões ficam abaixo dessa linha, mas se você subir a capacidade de um tier além dela, use transferência de OP em vez de FE.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o que está sendo fundido, a fase, e quanto do custo de energia já está acumulado.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens largados não conseguem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que pede uma pilha de ferramentas ou poções ainda cabe.
* O espaço de melhoria à direita guarda os núcleos. O medidor ao lado é o buffer de energia, e ele cresce conforme os núcleos entram.
* **Limpar Receitas Pendentes** descarta toda fabricação que a Matriz ainda deve, cancela ingredientes que ela tem sob solicitação e cancela os trabalhos de fabricação na rede que estavam esperando por ela.
* **Esvaziar Buffers** devolve tudo que estava preparado ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, de vazio para nada preparado até o 15 completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="fusionMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* Verifique se o tier da receita está no máximo configurado ou abaixo dele. Acima, os padrões são recusados de cara.
* Uma linha vermelha de *Ingredientes faltando* significa que a solicitação automática não conseguiu obter algo. Passe o mouse sobre ela para a lista.
* Ligue o Registro Detalhado em Debug para que a Matriz registre todo padrão que ela recusa e por quê.
