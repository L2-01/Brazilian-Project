---
navigation:
  title: Matriz de Foco Espiritual
  icon: nep:focused_spirit_matrix
  parent: nep/malum/index.md
  position: 20
item_ids:
  - nep:focused_spirit_matrix
categories:
  - Matrices
---
# <Color id="blue">Matriz de Foco Espiritual</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="blue">Matriz de Foco Espiritual</Color>

  <ItemImage id="nep:focused_spirit_matrix" scale="2"/>

  Um bloco que canaliza espíritos para qualquer coisa que o Malum aceite com eles. Infusão sem altar, foco sem cadinho: a Matriz prepara cada ingrediente no seu próprio buffer e devolve o item concluído à rede.
</Column>

<Recipe id="nep:module_status/focused_spirit_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:focused_spirit_matrix" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#3e7fe0">
    **Matriz de Foco Espiritual**, ligada à rede ME
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e largue padrões <ItemLink id="nep:spirit_infusion_pattern"/>, <ItemLink id="nep:spirit_focusing_pattern"/> ou <ItemLink id="nep:runeworking_pattern"/> nele. A Matriz armazena os ingredientes conforme chegam.
* A Matriz é uma máquina ME: ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela **não precisa de Cartão de Importação**.
* Ela não aceita FE. A infusão espiritual custa tempo, não energia, e o único custo de operação é o consumo da rede ME.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sem Espíritos nos Espaços, Sem Pedestais</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Altar dos Espíritos divide uma receita em três: o item vai no altar, os espíritos vão nos seus espaços de espírito, e cada ingrediente extra espera no seu próprio pedestal. A Matriz guarda os três dentro de si, então uma receita com seis espíritos e quatro ingredientes extras não precisa de nada construído ao redor do bloco.

A tela é essa divisão, disposta da esquerda para a direita: o **buffer de entrada** à esquerda para o item e seus ingredientes extras, a **coluna de melhorias** no meio, e o **banco de espíritos** à direita.

Essa também é a diferença em rendimento. O altar executa uma fabricação por vez e pede espaço ao seu redor; a Matriz executa uma fabricação por vez num bloco sozinho, então uma parede delas não custa nada além do espaço que ocupam.

> <Color id="yellow">A Matriz compartilha seus padrões com as máquinas reais.</Color> O mesmo <ItemLink id="nep:spirit_infusion_pattern"/> funciona num altar ou numa Matriz, o mesmo <ItemLink id="nep:spirit_focusing_pattern"/> funciona num cadinho ou numa Matriz, e o mesmo <ItemLink id="nep:runeworking_pattern"/> funciona numa bancada ou numa Matriz, então mover uma receita entre eles é questão de mover o padrão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Banco de Espíritos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os nove espaços à direita são um por espírito, sempre no mesmo lugar, com Umbral no meio. Um espaço aceita seu próprio espírito e nada mais, então um funil não consegue espalhar um tipo pela grade e uma olhada já diz do que a Matriz está precisando.

|  |  |  |
|---|---|---|
| <ItemImage id="malum:sacred_spirit" scale="0.5"/> Sagrado | <ItemImage id="malum:aerial_spirit" scale="0.5"/> Aéreo | <ItemImage id="malum:wicked_spirit" scale="0.5"/> Perverso |
| <ItemImage id="malum:aqueous_spirit" scale="0.5"/> Aquoso | <ItemImage id="malum:umbral_spirit" scale="0.5"/> Umbral | <ItemImage id="malum:infernal_spirit" scale="0.5"/> Infernal |
| <ItemImage id="malum:arcane_spirit" scale="0.5"/> Arcano | <ItemImage id="malum:earthen_spirit" scale="0.5"/> Terroso | <ItemImage id="malum:eldritch_spirit" scale="0.5"/> Sobrenatural |

**O banco é armazenamento da rede.** O que ele guarda aparece no seu terminal e conta para uma fabricação, então uma receita que quer oito Arcanos segue em frente com o estoque da própria Matriz mesmo sem um único fragmento num gabinete. Os espíritos saem do banco quando o trabalho começa e voltam direto com o padrão.

> <Color id="yellow">Espíritos que uma fabricação enfileirada deve deixam de contar.</Color> No momento em que um padrão chega, seus espíritos ficam comprometidos e saem do que a rede vê, então enfileirar fabricação atrás de fabricação nunca gasta o mesmo fragmento duas vezes. Um banco de sessenta e quatro Arcanos vale exatamente oito trabalhos de oito, e o nono espera por mais.

**Reabastecer Espíritos** mantém os nove espaços cheios a partir do resto da rede, fabricando um espírito onde existe um padrão. Um espaço que o banco esgotou se reabastece sozinho, então uma Matriz deixada rodando nunca para em silêncio por falta de um fragmento. A Matriz nunca se reabastece do próprio banco, então isso só move espíritos em direção à máquina. Deixe desligado e o banco é seu para encher.

> <Color id="yellow">Um espírito de um addon ainda funciona.</Color> Os nove do próprio Malum preenchem a grade exatamente, então um espírito que outro mod adiciona não tem espaço próprio. Ele passa pelo buffer de entrada como um ingrediente comum: a receita roda normalmente, aquele espírito só não ganha o lugar do banco no armazenamento da rede.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Obeliscos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Obeliscos de Madeira Rúnica aceleram um Altar dos Espíritos construído ao lado deles, e fazem o mesmo trabalho aqui sem serem construídos. Largue-os no espaço de obelisco, aquele que fica sozinho acima do par, e a Matriz infunde mais rápido.

| Obelisco | O que um espaço cheio faz |
|---|---|
| <ItemImage id="malum:runewood_obelisk" scale="0.5"/> Obelisco de Madeira Rúnica | Reduz o tempo de fabricação até um piso, 5 tiques por padrão |

Uma Matriz sem nada infunde em 90 tiques. O espaço aceita até trinta e dois obeliscos, e um espaço parcialmente cheio escala em linha reta daí até o piso, então o valor de cada obelisco segue o tamanho configurado do espaço. Passe o mouse sobre o espaço para ver quanto os obeliscos nele valem agora.

> <Color id="yellow">O Obelisco Brilhante não é aceito.</Color> Só o Obelisco de Madeira Rúnica acelera um altar no Malum; um Obelisco Brilhante estende o alcance dos ritos de totem e não faz nada por uma infusão.

> <Color id="yellow">Obeliscos nunca são consumidos.</Color> Eles ficam no espaço como melhoria e saem de volta quando você quiser, ou caem com todo o resto quando a Matriz é quebrada.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Foco</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O mesmo bloco executa o foco espiritual, o trabalho do Cadinho de Espíritos de transformar espíritos em nós de metal. O foco não tem entrada de item nenhuma, então os espíritos da receita saem direto do banco e nada toca o buffer de entrada.

Dois espaços sob o obelisco fazem isso funcionar, e eles são toda a diferença:

| Espaço | O que vai nele |
|---|---|
| <ItemImage id="nep:matrix_catalyzer" scale="0.5"/> Catalisador de Matriz | Até quatro. Um espaço cheio corta o tempo de foco em 75% e carrega três dos efeitos de melhoria do cadinho |
| <ItemImage id="nep:matrix_impetus" scale="0.5"/> Ímpeto de Matriz | Um. Desbloqueia toda receita de foco que existe |

Um <ItemLink id="nep:matrix_impetus"/> substitui todos os ímpetos que o Malum tem, então uma Matriz foca todos os nós em vez de uma Matriz por metal. Ele é feito de um <ItemImage id="malum:wind_nucleus" scale="0.5"/> Núcleo de Vento, que só um Cadinho de Espíritos real produz, então o cadinho é construído e usado antes de qualquer coisa disso ser automatizada. Sua infusão também pede sais do vazio e espíritos umbrais, então a receita fica fora de vista até você descobrir os Segredos do Vazio.

O catalisador é onde o foco compensa. As receitas de foco do Malum vão de 300 tiques a 2700, muito mais longas que uma infusão, e um espaço cheio de catalisadores leva o nó usual de 900 tiques para cerca de 225.

Catalisadores também carregam três efeitos que um cadinho real compra com melhorias, cada um escalando com o quão cheio o espaço está:

| Efeito | O que um espaço cheio vale |
|---|---|
| Restauração | 50% de chance de uma fabricação reparar um centésimo da durabilidade do ímpeto |
| Foco em cadeia | 25% de chance da próxima fabricação de foco começar quase concluída |
| Fortuna | 25% de chance da fabricação render uma segunda cópia da sua saída |

Cada número é o teto que um espaço cheio alcança, então um catalisador de quatro vale um quarto dele. Encolha o espaço na configuração e cada catalisador conta por mais, porque os tetos não se movem.

> <Color id="yellow">Saída bônus é devolvida à rede.</Color> Um trabalho de fabricação leva a contagem que pediu e o excedente cai no estoque, então a fortuna abastece seus gabinetes em silêncio em vez de confundir o trabalho que a disparou.

Uma fabricação encadeada ainda reivindica seus próprios ingredientes e sua própria durabilidade. O que ela pula é a espera, não o custo. **Chance de Foco em Cadeia do Catalisador** tem teto de 99% na configuração para evitar fabricações em loop infinito: a 100% cada fabricação encadearia na próxima para sempre.

Cada fabricação de foco racha o Ímpeto de Matriz do jeito que um cadinho real faria, e a restauração é o que estica um deles. Desligue **Consumir Durabilidade de Ímpeto** na configuração e o ímpeto nunca se desgasta, o que também deixa a restauração sem nada para reparar.

Ele carrega <nep:ConfigValue name="matrixImpetusDurability"/> de durabilidade, o dobro do que qualquer ímpeto do próprio Malum tem, já que faz o trabalho de todos eles. **Durabilidade de Ímpeto** na configuração move esse número, e o move para todo ímpeto já feito em vez de só para o próximo fabricado.

> <Color id="yellow">O foco pode ser desligado só para a Matriz.</Color> Desligue **Foco Espiritual Ativado** nas configurações de foco da Matriz e ela vira uma máquina de infusão: os espaços de catalisador e de ímpeto fecham, e um padrão de foco enviado a ela é recusado de cara para que a rede procure em outro lugar. Isso não diz nada sobre o módulo de Foco Espiritual, então um provedor de padrões contra um Cadinho de Espíritos real continua executando receitas de foco como sempre fez.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Quando o Ímpeto Acaba</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A fabricação que gasta o último ponto de durabilidade ainda termina, e o que sobra no espaço depois é um <ItemLink id="nep:fractured_matrix_impetus"/>. A Matriz recusa trabalho de foco a partir daquele momento, exatamente como faria com um espaço vazio, então um trabalho nunca fica esperando uma pedra que não consegue fazê-lo. A restauração rola antes da fratura, então um banco de catalisadores sortudo consegue puxar um ímpeto de volta do seu último ponto de durabilidade.

Um ímpeto fraturado não pode voltar ao espaço. Ele vai a um <ItemLink id="malum:repair_pylon"/> em vez disso, como reparo espiritual, que o remonta inteiro:

| O que o reparo pede | Onde vai |
|---|---|
| <ItemImage id="nep:fractured_matrix_impetus" scale="0.5"/> Ímpeto de Matriz Fraturado | Num pedestal ou suporte de item perto do pilar |
| <ItemImage id="nep:matrix_circuitry" scale="0.5"/> Circuitaria da Matriz | Uma, no pilar |
| <ItemImage id="malum:umbral_spirit" scale="0.5"/> Umbral | Um, no pilar |
| <ItemImage id="malum:arcane_spirit" scale="0.5"/> Arcano | Dois, no pilar |
| <ItemImage id="malum:eldritch_spirit" scale="0.5"/> Sobrenatural | Dois, no pilar |

> <Color id="yellow">O reparo devolve um ímpeto inteiro, não um remendado.</Color> O reparo espiritual devolve um <ItemLink id="nep:matrix_impetus"/> novinho com a Durabilidade de Ímpeto que estiver configurada, então subir esse número melhora os ímpetos que você já tem na próxima vez que eles se partirem. A receita só aparece no visualizador de receitas enquanto **Consumir Durabilidade de Ímpeto** estiver ligado, já que nada consegue fraturar um ímpeto com ele desligado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma infusão, uma moldagem ou um foco também podem ser iniciados a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que os buffers têm espaço para preparar.
* Espíritos também saem do seu inventário, e caem no banco em vez do buffer de entrada. O estoque do próprio banco não é gasto numa fabricação iniciada à mão, então o que você entrega é exatamente o que a receita pede.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Focar à mão ainda roda sobre o ímpeto da própria Matriz e ainda o racha, então o espaço de ímpeto precisa segurar um inteiro antes do botão fazer qualquer coisa.
* A energia vem de fora como sempre, então a Matriz ainda precisa estar energizada e numa rede para uma fabricação iniciada à mão andar.

> <Color id="yellow">Um resultado por vez.</Color> Uma fabricação iniciada à mão e um padrão para o mesmo resultado não podem entrar na fila juntos: o que chegar depois é recusado, então a Matriz nunca precisa adivinhar a quem um item concluído pertence.

> <Color id="yellow">Infusões que mantêm os dados de um item gastam a que você está segurando.</Color> Uma receita que carrega encantamentos, durabilidade ou outros dados de componente para o resultado tira o item correspondente da sua mão em vez do primeiro que encontra no seu inventário, então segure a ferramenta que você pretende infundir. O visualizador de receitas a nomeia no botão de transferência antes de você apertar. Uma dessas entra na fila por vez, por mais que o botão ofereça, já que cada fabricação tem seu próprio item para carregar.

Desligue **Fabricação Manual** em Machines na configuração para deixar a Matriz fabricando só o que um Provedor de Padrões envia a ela.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o que está sendo feito e quantos trabalhos estão enfileirados atrás dele, com a barra de progresso embaixo, e qualquer melhoria que esteja dirigindo a fabricação ao lado do tempo que ela compra. Obeliscos aparecem enquanto infunde, catalisadores enquanto foca.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens largados não conseguem entupi-lo. Espíritos nunca vão aqui; eles pertencem ao banco.
* Cada espaço do buffer comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que pede uma pilha de ferramentas ou poções ainda cabe.
* **Reabastecer Espíritos** alterna o banco entre se encher da rede e ser abastecido à mão.
* **Limpar Receitas Pendentes** descarta toda fabricação que a Matriz ainda deve, cancela ingredientes que ela tem sob solicitação e cancela os trabalhos de fabricação na rede que estavam esperando por ela.
* **Esvaziar Buffers** devolve tudo que estava preparado, incluindo o banco de espíritos, ao seu inventário. Obeliscos, catalisadores e o ímpeto ficam onde estão.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, de vazio para nada preparado até o 15 completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="focusedSpiritMatrixChannels"/> canais, então precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* *Esperando ingredientes* significa que o trabalho está preparado mas algo ainda não chegou. Ele começa sozinho no momento em que o buffer se completa.
* Uma linha vermelha de *Ingredientes faltando* significa que a solicitação automática não conseguiu obter algo. Passe o mouse sobre ela para a lista.
* *Sem Ímpeto de Matriz* significa que um padrão de foco foi enviado a uma Matriz cujo espaço de ímpeto está vazio ou segura um ímpeto fraturado. Esses são recusados de cara em vez de enfileirados, para que a rede possa procurar em outro lugar.
* *Foco desativado* significa que o foco está desligado para a Matriz na configuração. Execute a receita num Cadinho de Espíritos, ou ligue **Foco Espiritual Ativado** de volta.
* Receitas que carregam os dados de um ingrediente para o resultado só codificam para um ingrediente comum sem dados próprios, a mesma regra que o altar segue.
* Ligue o Registro Detalhado em Debug para que a Matriz registre todo padrão que ela recusa e por quê.
