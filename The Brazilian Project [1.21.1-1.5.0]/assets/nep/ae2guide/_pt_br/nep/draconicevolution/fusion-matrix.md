---
navigation:
  title: Matriz de Fusão de Injetores
  icon: nep:fusion_matrix
  parent: nep/draconicevolution/index.md
  position: 20
item_ids:
  - nep:fusion_matrix
categories:
  - Matrices
---
# <Color id="gold">Matriz de Fusão de Injetores</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Fusão de Injetores</Color>

  <ItemImage id="nep:fusion_matrix" scale="2"/>

  Um bloco que executa uma fabricação de fusão inteira. Sem Núcleo de Fabricação, sem Injetores, sem alinhamento: a Matriz prepara os ingredientes sozinha, carrega com energia bruta e devolve o item pronto à rede.
</Column>

<Recipe id="nep:module_status/fusion_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:fusion_matrix" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#ffaa00">
    **Matriz de Fusão de Injetores**, ligada à energia e à rede ME
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e insira nele padrões de <ItemLink id="nep:fusion_crafting_pattern"/>. A Matriz armazena em buffer os ingredientes conforme chegam.
* Alimente-a com **FE** em qualquer face, ou com o OP do próprio Draconic Evolution, que conta o mesmo. Esta é a energia de que a fabricação é feita, e ela substitui os Injetores inteiramente.
* Com nada a alimentando, uma fabricação carregando drena a energia da própria rede ME, até o último décimo que a rede guarda em reserva. A configuração `Charge From ME Network` desativa isso.
* A Matriz também é uma máquina ME: ela se junta à rede pela própria conexão de grade, consome um pequeno custo fixo de energia e devolve itens prontos ao Provedor sozinha. Ela não precisa de **Cartão de Importação**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma fabricação passa por duas fases, mostradas na barra da tela da Matriz.

| Fase | O que está acontecendo |
|---|---|
| <Color id="red">Carregando</Color> | A Matriz está puxando energia, até sua taxa de carga por tick, até ter depositado o custo total de energia da receita |
| <Color id="gold">Fundindo</Color> | A energia é gasta e o item é montado num número fixo de ticks |

É no Carregando que quase todo o tempo vai, e depende inteiramente de quanta energia você consegue empurrar para a Matriz. Uma receita custa exatamente o que o Draconic Evolution diz que custa, então uma receita Caótica ainda pede os mesmos cem milhões de FE que o multibloco real queimaria.

> <Color id="yellow">Melhorias de equipamento automatizam, e preservam o que o item antigo tinha.</Color> A Matriz monta equipamento do mesmo jeito que um Núcleo de Fabricação, carregando a energia, os módulos e os encantamentos do catalisador para o resultado. A rede gasta um item que ela já tem onde quer que a própria receita aceite um, então um capacitor carregado, com módulos ou encantado parado no estoque é melhorado no lugar em vez de um em branco ser fabricado primeiro.

> <Color id="yellow">Ingredientes preservados vão e voltam.</Color> Se uma receita preserva um ingrediente em vez de consumi-lo, o padrão o carrega como qualquer outra entrada: a Matriz pega um emprestado para a fabricação e o devolve intacto quando a fabricação termina. Um basta para um trabalho de qualquer tamanho, porque a rede o recebe de volta antes da próxima execução começar. Um padrão codificado sem ele também funciona, a partir de uma cópia que você carrega no buffer de entrada à mão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de fusão também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Um ingrediente que a receita preserva em vez de consumir é pedido uma vez por mais fabricações que você enfileire, e ainda está lá quando elas terminam.
* A fusão constrói seu resultado a partir do catalisador que recebeu, então uma melhoria preserva o desgaste e os encantamentos da ferramenta que você lhe deu. Quando o catalisador é uma ferramenta em vez de um item comum, a Matriz gasta a que você está segurando, e o visualizador de receitas a nomeia no botão de transferência antes de você pressionar.
* A energia vem de fora como sempre, então a Matriz ainda precisa estar energizada e numa rede para uma fabricação manual andar.

> <Color id="yellow">Um resultado por vez.</Color> Uma fabricação manual e um padrão para o mesmo resultado não podem entrar na fila juntos: o que chegar depois é recusado, então a Matriz nunca precisa adivinhar a quem pertence um item pronto.

Desligue a **Fabricação Manual** em Máquinas na configuração para deixar a Matriz fabricando só o que um Provedor de Padrões lhe envia.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Upgrade Cores</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O espaço à direita da tela aceita uma pilha de até dezesseis núcleos do Draconic Evolution. Um espaço significa um tier por vez, e um espaço cheio é o que alcança o teto de um tier, então um espaço meio cheio chega só até parte do caminho.

O buffer de cada tier é dimensionado para o tier a que pertence: a receita de fusão mais cara daquele tier, ou o núcleo do próximo tier, o que custar mais. Encaixe os núcleos do tier que você está realmente fabricando e o buffer cobre.

| Núcleo | Buffer num espaço cheio | Também compra |
|---|---|---|
| <ItemLink id="draconicevolution:wyvern_core"/> | 50M FE, o bastante para um Bloco de Dracônio Desperto | Nada. Núcleos de Wyvern são buffer e só buffer |
| <ItemLink id="draconicevolution:awakened_core"/> | 256M FE, o bastante para um Cajado Dracônico do Poder | Até 38% menos de fase de fusão |
| <ItemLink id="draconicevolution:chaotic_core"/> | 1.024B FE, o bastante para um Cajado Caótico do Poder | Até 50% de desconto no custo de energia da receita, e uma fase de fusão que cai até 4 ticks |

Núcleos de Wyvern enchem o buffer em linha reta, enquanto Núcleos Dracônicos e Caóticos multiplicam, então seus ganhos chegam tarde no espaço. Um Núcleo de Dracônio não faz nada, então o espaço não o aceita. Passe o mouse no espaço para ver os números exatos que sua configuração está rodando.

> <Color id="yellow">Núcleos ajustam, não aceleram o carregamento.</Color> Um buffer mais fundo deixa a Matriz depositar energia enquanto ociosa e aguentar um suprimento irregular, mas a taxa de carga ainda é o teto de quão rápido a energia entra. Núcleos Caóticos são os únicos que encolhem a conta em si.

> <Color id="yellow">Alimente um buffer grande com a energia do próprio Draconic Evolution.</Color> A Forge Energy conta em 32 bits, então um cabo de FE lê qualquer buffer acima de 2.147.483.647 como permanentemente cheio e para de empurrar. Os padrões ficam abaixo dessa linha, mas se você elevar a capacidade de um tier além dela, use transferência de OP em vez de FE.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o que está sendo fundido, a fase, e quanto do custo de energia está depositado.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens soltos não podem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, não importa o quanto esse item normalmente empilhe, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.
* O espaço de melhoria à direita segura os núcleos. O medidor ao lado é o buffer de energia, e ele cresce conforme os núcleos entram.
* **Limpar receitas pendentes** descarta todas as fabricações que a Matriz ainda deve, cancela os ingredientes que ela requisitou e cancela os trabalhos de fabricação da rede que aguardavam por ela.
* **Esvaziar Buffers** retorna tudo o que estava preparado ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, vazio para nada preparado até um 15 cheio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="fusionMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* Confira se o tier da receita está no máximo configurado ou abaixo. Acima dele, os padrões são recusados de cara.
* Uma linha vermelha de *Ingredientes ausentes* significa que a requisição automática não conseguiu obter algo. Passe o mouse sobre ela para ver a lista.
* Ative o Registro Detalhado em Depuração para que a Matriz registre cada padrão que recusa e o motivo.
