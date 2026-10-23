---
navigation:
  title: Matriz de Infusão e Despertar
  icon: nep:infused_awakening_matrix
  parent: nep/mysticalagriculture/index.md
  position: 30
item_ids:
  - nep:infused_awakening_matrix
categories:
  - Matrices
---
# <Color id="gold">Matriz de Infusão e Despertar</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Infusão e Despertar</Color>

  <ItemImage id="nep:infused_awakening_matrix" scale="2"/>

  Um bloco que executa os dois altares. Sem pedestais, sem receptáculos, sem anel para construir: a Matriz prepara os ingredientes sozinha, acumula essência em quatro tanques e devolve o item pronto à rede.
</Column>

<Recipe id="nep:module_status/infused_awakening_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:infused_awakening_matrix" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Matriz de Infusão e Despertar**, ligada à rede ME
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e insira nele padrões de <ItemLink id="nep:infusion_pattern"/> ou <ItemLink id="nep:awakening_pattern"/>. A Matriz armazena em buffer os ingredientes conforme chegam.
* A Matriz é uma máquina ME: ela se junta à rede pela própria conexão de grade, consome uma pequena energia fixa e devolve os itens prontos ao Provedor sozinha. Ela **não** precisa de **Cartão de Importação**.
* Ela não aceita FE. Infusão e despertar custam tempo, não energia, e o único custo corrente é o consumo da rede ME.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Os Quatro Tanques de Essência</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

As quatro barras à direita da tela substituem os Receptáculos de Essência. Essência é um item comum, então um tanque é na verdade um espaço de item desenhado como barra: ele aceita uma essência por vez, guarda uma pilha dela e fica livre para qualquer outra essência no momento em que esvazia. Nada é reservado, então os mesmos quatro tanques servem toda receita de despertar sem serem avisados antes quais essências ela vai querer.

Um tanque comporta <nep:ConfigValue name="infusedAwakeningMatrixTankCapacity"/>, onde um Receptáculo de Essência comporta 40 e a receita de despertar mais cara leva 40 por fabricação. Aumente até 512 na configuração para acumular essência para uma sequência mais longa.

| Como a essência entra | Como |
|---|---|
| Automaticamente | Deixe a Solicitação Automática ligada e a Matriz puxa ou requisita o que uma fabricação enfileirada precisa |
| À mão | Solte essência no buffer de entrada; qualquer coisa que um Receptáculo de Essência aceitaria flui para um tanque sozinha |
| De um tubo ou barramento | Insira em qualquer face, igual a qualquer outro ingrediente |

> <Color id="yellow">Os tanques enchem pelo buffer de entrada.</Color> Não há porta separada. A essência aterrissa no buffer como qualquer item e se move para um tanque no tick seguinte, o que significa que funis, barramentos de exportação e sua própria mão funcionam sem montagem especial.

> <Color id="yellow">Tanques cheios nunca recusam um padrão.</Color> Essência que um tanque não pode receber espera no buffer de entrada como o item que é, e atravessa assim que uma fabricação enfileirada drena um tanque, então a Matriz não pode se trancar para fora de uma receita.

> <Color id="yellow">Receitas de infusão nunca tocam os tanques.</Color> Só as essências que uma receita de despertar nomeia em seus receptáculos são acumuladas. Uma receita de infusão que por acaso usa uma essência como ingrediente de pedestal a tira do buffer de entrada como item comum.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o que está sendo fabricado e quantos trabalhos estão na fila atrás, com a barra de progresso embaixo.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, mais essência até o espaço livre dos tanques, então itens soltos não podem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, não importa o quanto esse item normalmente empilhe, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.
* Passe o mouse num tanque para ver a essência que ele guarda e o quão cheio está.
* **Limpar receitas pendentes** descarta todas as fabricações que a Matriz ainda deve, cancela os ingredientes que ela requisitou e cancela os trabalhos de fabricação da rede que aguardavam por ela.
* **Esvaziar Buffers** devolve tudo que foi preparado, tanques incluídos, ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, vazio para nada preparado até um 15 cheio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de infusão ou despertar também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* A essência de uma receita de despertar também é puxada do seu inventário, e se acomoda nos tanques sozinha uma vez dentro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="infusedAwakeningMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* *Aguardando essência* significa que uma fabricação de despertar está preparada mas um tanque está curto. Alimente aquela essência pelo buffer de entrada; se ela já estiver parada ali, os tanques estão cheios e ela atravessa assim que uma fabricação enfileirada drena um.
* Uma linha vermelha de *Ingredientes ausentes* significa que a requisição automática não conseguiu obter algo. Passe o mouse sobre ela para ver a lista.
* Ative o Registro Detalhado em Depuração para que a Matriz registre cada padrão que recusa e o motivo.
