---
navigation:
  title: Central de Máquinas
  icon: nep:machine_hub
  parent: nep/nep-index.md
  position: 4
item_ids:
  - nep:machine_hub
  - nep:hub_linker
---
# <Color id="aqua">Central de Máquinas</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Central de Máquinas</Color>

  <ItemImage id="nep:machine_hub" scale="2"/>

  Um bloco que fica à frente de uma máquina cujos inventários estão espalhados por vários blocos. Vincule suas escotilhas, portas e buffers à Central, coloque um Provedor de Padrões contra a Central, e a máquina inteira parece um único inventário para a sua rede.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Problema Que Ela Resolve</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Provedor de Padrões empurra um padrão inteiro para <Color id="yellow">um</Color> inventário. Ele nunca divide uma receita entre dois.

Isso serve para uma máquina com um único inventário, e é inútil para o tipo de multibloco que um pack monta de partes separadas: uma escotilha de entrada de itens aqui, uma de fluidos ali, uma de saída em outro lugar. Cada parte é seu próprio bloco com seu próprio inventário, e o controlador no meio geralmente não expõe nada. Uma receita que pede três itens e um balde de algo não tem um lugar único para aterrissar.

A Central é esse lugar único. Ela recebe o padrão inteiro e repassa cada ingrediente para o inventário vinculado que o aceitar.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Montando uma</Color>

  <Row>
    <ItemImage id="nep:machine_hub" scale="1.5"/>
    <ItemImage id="nep:hub_linker" scale="1.5"/>
  </Row>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

1. Coloque a Central <Color id="yellow">tocando a máquina</Color>, e ponha um Provedor de Padrões contra a Central.
2. Abra a Central e pressione <Color id="green">Escanear</Color>. Ela percorre a máquina para fora, vincula tudo o que encontra que guarda itens ou fluidos, e deduz se cada um recebe ingredientes ou entrega resultados.
3. Confira as deduções. Cada linha tem um <Color id="yellow">→</Color> ou <Color id="yellow">←</Color> que você pode clicar para alternar sua função (shift-clique para voltar), um <Color id="yellow">⚙</Color> que abre as configurações daquele vínculo e um <Color id="red">✗</Color> que o desvincula. Doze linhas aparecem por vez; role a roda ou arraste a barra para o resto.

Escanear de novo mantém o que você configurou para uma máquina que ela encontra uma segunda vez, então corrigir uma dedução nunca é desfeito por uma busca posterior.

O <Color id="aqua">?</Color> no canto superior direito traz você de volta a esta página. Toda máquina do mod o carrega nesse mesmo canto.

A busca se espalha de bloco a bloco tocante, então ela só encontra partes da máquina contra a qual a Central está encostada. Ela atravessa livremente <Color id="yellow">partes de máquina</Color>, ou seja, qualquer bloco de mod que carregue uma entidade de bloco própria, mas só depois que o mod daquele bloco já mostrou à busca uma parte da máquina: todo rastro de confiança começa na própria face da Central. Uma máquina parada a dois blocos de distância, de um mod que a Central não está tocando, é ignorada. Uma entidade de bloco vanilla só conta quando guarda algo e está diretamente contra a Central, e o armazenamento comum do jogador, baús, barris e caixas shulker, nunca é captado por uma busca; vincule-os com o <ItemLink id="nep:hub_linker"/> se for mesmo essa a intenção.

Todo o resto é revestimento. O revestimento só é atravessado por um trecho curto de cada vez, definido por `Casing Depth` e zerado a cada parte de máquina, e só quando pertence a um mod em que a busca já confia ou quando o trecho começa contra a própria Central. É isso que deixa a busca cruzar uma parede até a escotilha do outro lado sem nunca sair vagando por terreno ou blocos decorativos de um mod. Ela retorna ao encontrar qualquer coisa numa rede ME, então o Provedor que alimenta a Central nunca é captado. O alcance é limitado por `Link Range` e o trabalho total por `Scan Budget`.

Para qualquer coisa que a busca erre, ou uma máquina no meio de outros inventários que você não quer tocados, use o <ItemLink id="nep:hub_linker"/>. Agache e use-o no ar para escolher uma função, use-o em cada bloco desejado, então use-o na Central para aplicar todo o plano de uma vez. Usá-lo num bloco já planejado tira esse bloco de volta.

Agache e use uma <Color id="yellow">chave-inglesa</Color> numa Central para pegá-la de volta depois de montada. A Central vai direto para o seu inventário carregando todos os vínculos e tudo o que foi configurado para eles, e colocá-la de novo restaura cada vínculo que ainda está ao alcance de onde você a pôs. Quebrar a Central, em vez disso, devolve uma comum, sem nada lembrado.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Entrada e Saída</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Inventários de <Color id="yellow">entrada</Color> são para onde os ingredientes vão. Nada nunca é retirado de volta de um, então um Provedor não pode desfazer a própria entrega no meio de uma fabricação.

Inventários de <Color id="yellow">saída</Color> nunca recebem envios. A Central os esvazia para a sua rede, algumas vezes por segundo, então os resultados voltam direto ao armazenamento sem Cartão de Importação nem Barramento de Armazenamento. Ela alcança a rede pelo que estiver encostada nela, que normalmente é o Provedor que a alimenta.

<Color id="yellow">Entrada e saída</Color> é para a máquina que guarda ingredientes e resultados no mesmo inventário, um bloco em forma de fornalha em vez de uma escotilha. Ela recebe ingredientes e devolve resultados pelo mesmo lugar, o que significa que a Central devolveria alegremente seus ingredientes direto à rede assim que eles chegassem: dê a um vínculo desses um <Color id="green">filtro de retorno</Color> nomeando só o que a máquina produz.

Nada é retirado de uma máquina antes de a rede concordar em recebê-lo, então uma rede sem espaço deixa os resultados parados na máquina. Quando isso acontece, ou quando não há rede nenhuma contra a Central, a tela da Central avisa em <Color id="red">vermelho</Color> no topo.

Tudo o que está vinculado, seja qual for sua função, é legível pela Central. É isso que o Modo de Bloqueio lê quando decide que a máquina ainda está ocupada, e é também o que um Barramento de Armazenamento na Central veria.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configurando um Vínculo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O <Color id="yellow">⚙</Color> de qualquer linha abre aquele vínculo isolado. A engrenagem fica <Color id="gold">dourada</Color> quando um vínculo carrega algo diferente do padrão, então uma tela cheia de vínculos comuns mostra de relance quais você mexeu.

<Color id="yellow">Função</Color> é a mesma configuração da seta na linha, por extenso.

<Color id="yellow">Face</Color> escolhe por qual lado da máquina a Central alcança. <Color id="green">Qualquer</Color>, o padrão, pega o inventário sem lados do bloco, que é a coisa mais permissiva que ele oferece e ignora as regras de espaços que uma máquina só aplica por face. Nomear uma face, em vez disso, dá exatamente o inventário que um tubo encostado naquele lado teria, que é como você impede uma máquina que separa por lado de pegar um ingrediente no espaço errado.

<Color id="yellow">Prioridade</Color> decide qual vínculo é preenchido primeiro quando mais de um aceitaria a mesma coisa; o maior vai primeiro, e vínculos empatados mantêm a ordem em que estão listados. Segure <Color id="yellow">Shift</Color> para pular de dez em dez. É isso que põe uma escotilha exigente à frente de uma genérica.

O <Color id="yellow">filtro de inserção</Color> rege o que pode ser empurrado para dentro do vínculo, e o <Color id="yellow">filtro de retorno</Color> o que pode ser retirado de volta dele. Cada um comporta nove entradas e cada um tem seu próprio modo <Color id="green">Permitir</Color> ou <Color id="red">Negar</Color>. Um filtro vazio permite tudo, em qualquer modo, então uma lista de Negação vazia não nega nada.

Clique com o botão esquerdo num espaço de filtro com algo no cursor para defini-lo, e clique com o esquerdo de mãos vazias ou com o direito para limpá-lo. Com o JEI instalado você pode arrastar direto da lista de ingredientes, sem caçar o item antes. Fluidos funcionam das duas formas, arrastados do JEI ou trazidos de um terminal. Um filtro que a função do vínculo nunca consulta, digamos um filtro de inserção num vínculo de Saída, fica acinzentado em vez de escondido, e recusa o arrasto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Ela Não Faz</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Central move itens e fluidos e nada mais. Ela não conhece as receitas da máquina, não verifica se a estrutura está montada, não fornece energia e não espera uma fabricação terminar. A máquina funciona sozinha exatamente como se você tivesse enfiado tudo por tubos à mão.

<Color id="red">É um dispositivo real na rede.</Color> A Central fica na rede ME como qualquer máquina: precisa de energia e ocupa canais. <nep:ConfigValue name="machineHubChannels"/> pela própria Central, mais <nep:ConfigValue name="machineHubChannelsPerLink"/> a mais para cada inventário vinculado a ela, no lugar do provedor de padrões que cada escotilha precisaria. Qualquer coisa acima de 8 tem que vir por um cabo denso com um Controlador ME por trás, e cada vínculo empurra esse total para cima. Uma Central que não consegue reivindicar todos fica offline e para de oferecer armazenamento por completo, e sua tela avisa.

<Color id="red">Ela também não pode inventar um inventário que não existe.</Color> Se as partes de uma máquina não expõem nada ao mundo externo, não há nada para a Central vincular, e nenhum Provedor de tipo algum jamais iria alcançá-la.
