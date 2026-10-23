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

  Um bloco que canaliza espíritos para qualquer coisa que o Malum aceite. Infusão sem altar, foco sem cadinho: a Matriz prepara cada ingrediente no próprio buffer e devolve o item pronto à rede.
</Column>

<Recipe id="nep:module_status/focused_spirit_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:focused_spirit_matrix" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#3e7fe0">
    **Matriz de Foco Espiritual**, ligada à rede ME
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e insira nele padrões de <ItemLink id="nep:spirit_infusion_pattern"/>, <ItemLink id="nep:spirit_focusing_pattern"/> ou <ItemLink id="nep:runeworking_pattern"/>. A Matriz armazena em buffer os ingredientes conforme chegam.
* A Matriz é uma máquina ME: ela se junta à rede pela própria conexão de grade, consome uma pequena energia fixa e devolve os itens prontos ao Provedor sozinha. Ela **não** precisa de **Cartão de Importação**.
* Ela não aceita FE. A infusão de espíritos custa tempo, não energia, e o único custo corrente é o consumo da rede ME.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sem Espíritos, Sem Pedestais</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Altar de Espíritos divide uma receita em três partes: o item vai no altar, os espíritos vão nos seus espaços de espírito, e cada ingrediente extra espera no próprio pedestal. A Matriz guarda os três dentro de si, então uma receita com seis espíritos e quatro ingredientes extras não precisa de nada construído ao redor do bloco.

A tela é essa divisão, disposta da esquerda para a direita: o **buffer de entrada** à esquerda para o item e seus ingredientes extras, a **coluna de melhoria** no meio, e o **banco de espíritos** à direita.

Essa também é a diferença de rendimento. O altar executa uma fabricação por vez e pede espaço ao redor; a Matriz executa uma fabricação por vez num bloco só, então uma parede delas não custa nada além do espaço em que ficam.

> <Color id="yellow">A Matriz compartilha seus padrões com as máquinas reais.</Color> O mesmo <ItemLink id="nep:spirit_infusion_pattern"/> funciona num altar ou numa Matriz, o mesmo <ItemLink id="nep:spirit_focusing_pattern"/> funciona num cadinho ou numa Matriz, e o mesmo <ItemLink id="nep:runeworking_pattern"/> funciona numa bancada ou numa Matriz, então mover uma receita entre eles é questão de mover o padrão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Banco de Espíritos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os nove espaços à direita são um por espírito, sempre no mesmo lugar, com o Umbral no meio. Um espaço aceita seu próprio espírito e nada mais, então um funil não pode espalhar um tipo pela grade e uma olhada já diz do que a Matriz está precisando.

|  |  |  |
|---|---|---|
| <ItemImage id="malum:sacred_spirit" scale="0.5"/> Sacred | <ItemImage id="malum:aerial_spirit" scale="0.5"/> Aerial | <ItemImage id="malum:wicked_spirit" scale="0.5"/> Wicked |
| <ItemImage id="malum:aqueous_spirit" scale="0.5"/> Aqueous | <ItemImage id="malum:umbral_spirit" scale="0.5"/> Umbral | <ItemImage id="malum:infernal_spirit" scale="0.5"/> Infernal |
| <ItemImage id="malum:arcane_spirit" scale="0.5"/> Arcane | <ItemImage id="malum:earthen_spirit" scale="0.5"/> Earthen | <ItemImage id="malum:eldritch_spirit" scale="0.5"/> Eldritch |

**O banco é armazenamento de rede.** O que ele guarda aparece no seu terminal e conta para uma fabricação, então uma receita que pede oito Arcanos segue em frente com o estoque da própria Matriz mesmo sem nenhum fragmento num drive. Os espíritos saem do banco quando o trabalho começa e voltam direto com o padrão.

> <Color id="yellow">Espíritos devidos a uma fabricação enfileirada param de contar.</Color> No momento em que um padrão chega, seus espíritos ficam comprometidos e somem do que a rede vê, então enfileirar fabricação após fabricação nunca pode gastar o mesmo fragmento duas vezes. Um banco de sessenta e quatro Arcanos vale exatamente oito trabalhos de oito, e o nono espera por mais.

**Reabastecer Espíritos** mantém todos os nove espaços abastecidos a partir do resto da rede, fabricando um espírito onde existir um padrão. Um espaço que o banco esgotou se preenche de volta, então uma Matriz deixada rodando nunca para silenciosamente por falta de um fragmento. A Matriz nunca reabastece do próprio banco, então isso só move espíritos em direção à máquina. Deixe desligado e o banco é seu para preencher.

> <Color id="yellow">Um espírito de um addon ainda funciona.</Color> Os nove do próprio Malum preenchem a grade exatamente, então um espírito que outro mod adiciona não tem espaço próprio. Ele passa pelo buffer de entrada como ingrediente comum em vez disso: a receita roda normalmente, aquele espírito só não ganha o lugar do banco no armazenamento da rede.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Obeliscos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Obeliscos de Pau-Runa aceleram um Altar de Espíritos construído ao lado deles, e fazem o mesmo trabalho aqui sem serem construídos. Solte-os no espaço de obelisco, aquele sozinho acima do par, e a Matriz infunde mais rápido.

| Obelisco | O que um espaço cheio faz |
|---|---|
| <ItemImage id="malum:runewood_obelisk" scale="0.5"/> Obelisco de Pau-Runa | Derruba o tempo de fabricação até um piso, 5 ticks por padrão |

Uma Matriz nua infunde em 90 ticks. O espaço aceita até trinta e dois obeliscos, e um espaço parcialmente cheio escala em linha reta daí até o piso, então o passo que cada obelisco vale segue o tamanho configurado do espaço. Passe o mouse no espaço para ver quanto os obeliscos nele valem agora.

> <Color id="yellow">O Obelisco Brilhante não é aceito.</Color> Só o Obelisco de Pau-Runa acelera um altar no Malum; um Obelisco Brilhante estende o alcance dos ritos de totem e não faz nada por uma infusão.

> <Color id="yellow">Obeliscos nunca são consumidos.</Color> Eles ficam no espaço como melhoria e saem de volta quando você quiser, ou caem com todo o resto quando a Matriz é quebrada.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Foco</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O mesmo bloco executa o foco de espíritos, o trabalho do Cadinho de Espíritos de transformar espíritos em nós de metal. O foco não tem entrada de item alguma, então os espíritos da receita saem direto do banco e nada toca o buffer de entrada.

Dois espaços sob o obelisco fazem isso funcionar, e eles são toda a diferença:

| Espaço | O que vai nele |
|---|---|
| <ItemImage id="nep:matrix_catalyzer" scale="0.5"/> Catalisador de Matriz | Até quatro. Um espaço cheio corta o tempo de foco em 75% e carrega três dos efeitos de aprimoramento do cadinho |
| <ItemImage id="nep:matrix_impetus" scale="0.5"/> Ímpeto de Matriz | Um. Desbloqueia toda receita de foco que existe |

Um <ItemLink id="nep:matrix_impetus"/> substitui todo ímpeto que o Malum tem, então uma Matriz foca todo nó em vez de uma Matriz por metal. Ele é construído a partir de um <ItemImage id="malum:wind_nucleus" scale="0.5"/> Núcleo de Vento, que só um Cadinho de Espíritos real faz, então o cadinho é construído e operado antes de qualquer coisa disso ser automatizada. Sua infusão também pede sais do vazio e espíritos umbrais, então a receita fica fora de vista até você ter descoberto os Segredos do Vazio.

O catalisador é onde o foco compensa. As receitas de foco do Malum vão de 300 a 2700 ticks, bem mais longas que uma infusão, e um espaço cheio de catalisadores derruba o nó usual de 900 ticks para cerca de 225.

Os catalisadores também carregam três efeitos que um cadinho real compra com aprimoramentos, cada um escalando com o quão cheio o espaço está:

| Efeito | O que um espaço cheio vale |
|---|---|
| Restauração | 50% de chance de uma fabricação reparar um centésimo da durabilidade do ímpeto |
| Foco em cadeia | 25% de chance da próxima fabricação de foco começar quase pronta |
| Fortuna | 25% de chance da fabricação render uma segunda cópia da saída |

Cada número é o teto que um espaço cheio alcança, então um catalisador de quatro vale um quarto dele. Encolha o espaço na configuração e cada catalisador conta mais, porque os tetos não se movem.

> <Color id="yellow">A saída extra volta à rede.</Color> Um trabalho de fabricação recebe a contagem que pediu e o excedente cai no armazenamento, então a fortuna abastece seus drives silenciosamente em vez de confundir o trabalho que a disparou.

Uma fabricação em cadeia ainda reivindica seus próprios ingredientes e sua própria durabilidade. O que ela pula é a espera, não o custo. **Catalyzer Chain Focusing Chance** tem teto de 99% na configuração para evitar fabricações em laço infinito: a 100% cada fabricação encadearia na próxima para sempre.

Cada fabricação de foco trinca o Ímpeto de Matriz do jeito que um cadinho real faria, e a restauração é o que estica um. Desligue **Consume Impetus Durability** na configuração e o ímpeto nunca se desgasta, o que também deixa a restauração sem nada para reparar.

Ele carrega <nep:ConfigValue name="matrixImpetusDurability"/> de durabilidade, o dobro do que qualquer ímpeto do próprio Malum tem, por fazer o trabalho de todos eles. **Impetus Durability** na configuração muda esse número, e o muda para todo ímpeto já feito em vez de só para o próximo fabricado.

> <Color id="yellow">O foco pode ser desligado só para a Matriz.</Color> Desligue **Spirit Focusing Enabled** nas configurações de foco da Matriz e ela vira uma máquina de infusão: os espaços de catalisador e de ímpeto fecham, e um padrão de foco enviado a ela é recusado de cara para que a rede procure em outro lugar. Isso não diz nada sobre o módulo de Foco de Espíritos, então um provedor de padrões contra um Cadinho de Espíritos real continua executando receitas de foco como sempre fez.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Quando o Ímpeto Acaba</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A fabricação que gasta o último da durabilidade ainda termina, e o que sobra no espaço depois é um <ItemLink id="nep:fractured_matrix_impetus"/>. A Matriz recusa trabalho de foco a partir daquele momento, exatamente como faria com um espaço vazio, então um trabalho nunca fica esperando uma pedra que não pode fazê-lo. A restauração sorteia antes da fratura, então um banco de catalisadores sortudo pode trazer um ímpeto de volta do seu último ponto de durabilidade.

Um ímpeto fraturado não pode voltar ao espaço. Ele vai para um <ItemLink id="malum:repair_pylon"/> em vez disso, como reparo de espírito, que o remonta inteiro:

| O que o reparo pede | Onde vai |
|---|---|
| <ItemImage id="nep:fractured_matrix_impetus" scale="0.5"/> Ímpeto de Matriz Fraturado | Num pedestal de itens ou suporte perto do pilão |
| <ItemImage id="nep:matrix_circuitry" scale="0.5"/> Circuitaria da Matriz | Um, no pilão |
| <ItemImage id="malum:umbral_spirit" scale="0.5"/> Umbral | Um, no pilão |
| <ItemImage id="malum:arcane_spirit" scale="0.5"/> Arcano | Dois, no pilão |
| <ItemImage id="malum:eldritch_spirit" scale="0.5"/> Élfico | Dois, no pilão |

> <Color id="yellow">O reparo devolve um ímpeto cheio, não um remendado.</Color> O reparo de espírito devolve um <ItemLink id="nep:matrix_impetus"/> novinho no valor que Impetus Durability estiver configurado, então subir esse número melhora os ímpetos que você já tem na próxima vez que eles se partirem. A receita só aparece no visualizador de receitas enquanto **Consume Impetus Durability** está ligado, já que nada pode fraturar um ímpeto com ele desligado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma infusão, uma conformação ou um foco também podem ser iniciados a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, aparadas ao que os buffers têm espaço para preparar.
* Os espíritos saem do seu inventário também, e caem no banco em vez do buffer de entrada. O estoque do próprio banco não é gasto numa fabricação manual, então o que você entrega é exatamente o que a receita pede.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* O foco à mão ainda roda no ímpeto da própria Matriz e ainda o trinca, então o espaço de ímpeto precisa segurar um inteiro antes de o botão fazer qualquer coisa.
* A energia vem de fora como sempre, então a Matriz ainda precisa estar energizada e numa rede para uma fabricação manual andar.

> <Color id="yellow">Um resultado por vez.</Color> Uma fabricação manual e um padrão para o mesmo resultado não podem entrar na fila juntos: o que chegar depois é recusado, então a Matriz nunca precisa adivinhar a quem pertence um item pronto.

> <Color id="yellow">Infusões que preservam os dados de um item gastam o que você está segurando.</Color> Uma receita que carrega encantamentos, durabilidade ou outros dados de componente tira o item correspondente da sua mão em vez do primeiro que acha no seu inventário, então segure a ferramenta que você quer infundir. O visualizador de receitas a nomeia no botão de transferência antes de você pressionar. Uma dessas por vez na fila, por mais que o botão ofereça, já que cada fabricação tem seu próprio item a carregar.

Desligue a **Fabricação Manual** em Máquinas na configuração para deixar a Matriz fabricando só o que um Provedor de Padrões lhe envia.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o que está sendo feito e quantos trabalhos estão na fila atrás, com a barra de progresso embaixo, e qual melhoria está dirigindo a fabricação junto do tempo que ela compra. Obeliscos aparecem durante a infusão, catalisadores durante o foco.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens soltos não podem entupi-lo. Espíritos nunca entram aqui; eles ficam no banco.
* Cada espaço do buffer comporta até 64 de qualquer item, não importa o quanto esse item normalmente empilhe, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.
* **Reabastecer Espíritos** alterna o banco entre encher-se da rede e ser abastecido à mão.
* **Limpar receitas pendentes** descarta todas as fabricações que a Matriz ainda deve, cancela os ingredientes que ela requisitou e cancela os trabalhos de fabricação da rede que aguardavam por ela.
* **Esvaziar Buffers** devolve tudo que foi preparado, o banco de espíritos incluído, ao seu inventário. Obeliscos, catalisadores e o ímpeto ficam onde estão.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, vazio para nada preparado até um 15 cheio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="focusedSpiritMatrixChannels"/> canais, então precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* *Aguardando ingredientes* significa que o trabalho está preparado mas algo ainda não chegou. Ele começa sozinho no momento em que o buffer se completa.
* Uma linha vermelha de *Ingredientes ausentes* significa que a requisição automática não conseguiu obter algo. Passe o mouse sobre ela para ver a lista.
* *Sem Ímpeto de Matriz* significa que um padrão de foco foi enviado a uma Matriz cujo espaço de ímpeto está vazio ou segura um ímpeto fraturado. Esses são recusados de cara em vez de enfileirados, para que a rede procure em outro lugar.
* *Foco desativado* significa que o foco está desligado para a Matriz na configuração. Execute a receita num Cadinho de Espíritos, ou ligue **Spirit Focusing Enabled** de volta.
* Receitas que carregam os dados próprios de um ingrediente para o resultado só codificam para um ingrediente comum sem dados próprios, a mesma regra que o altar segue.
* Ative o Registro Detalhado em Depuração para que a Matriz registre cada padrão que recusa e o motivo.
