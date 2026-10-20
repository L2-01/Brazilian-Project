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

  Um bloco que fica diante de uma máquina cujos inventários estão espalhados por vários blocos. Vincule seus hatches, portas e buffers à Central, coloque um Provedor de Padrões contra a Central, e a máquina inteira parece um único inventário para a sua rede.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Problema que Ela Resolve</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Provedor de Padrões empurra um padrão inteiro para <Color id="yellow">um</Color> inventário. Ele nunca divide uma receita entre dois.

Isso funciona para uma máquina com um único inventário, e é inútil para o tipo de multibloco que um pacote monta com peças separadas: um hatch de entrada de itens aqui, um hatch de entrada de fluidos ali, um hatch de saída em outro lugar. Cada parte é um bloco próprio com seu próprio inventário, e o controlador no meio normalmente não expõe nada. Uma receita que pede três itens e um balde de alguma coisa não tem um lugar único para pousar.

A Central é esse lugar único. Ela pega o padrão inteiro e repassa cada ingrediente para qualquer inventário vinculado que o aceite.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Montando Uma</Color>

  <Row>
    <ItemImage id="nep:machine_hub" scale="1.5"/>
    <ItemImage id="nep:hub_linker" scale="1.5"/>
  </Row>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

1. Coloque a Central <Color id="yellow">tocando a máquina</Color>, e ponha um Provedor de Padrões contra a Central.
2. Abra a Central e pressione <Color id="green">Escanear</Color>. Ela percorre a máquina para fora, vincula tudo que encontra que guarde itens ou fluidos, e adivinha se cada um recebe ingredientes ou entrega resultados.
3. Confira os palpites. Cada linha tem um <Color id="yellow">→</Color> ou <Color id="yellow">←</Color> em que você pode clicar para alternar a função (shift+clique para voltar), um <Color id="yellow">⚙</Color> que abre as configurações daquele vínculo, e um <Color id="red">✗</Color> que o desvincula. Doze linhas aparecem por vez; gire a roda ou arraste a barra para o resto.

Escanear de novo mantém o que você configurou para uma máquina encontrada uma segunda vez, então corrigir um palpite nunca é desfeito por uma busca posterior.

O <Color id="aqua">?</Color> no canto superior direito traz você de volta a esta página. Toda máquina do mod o carrega no mesmo canto.

A busca se espalha de bloco para bloco tocando, então só encontra partes da máquina contra a qual a Central está encostada. Ela atravessa livremente <Color id="yellow">partes de máquina</Color>, ou seja, qualquer bloco de mod que carregue uma entidade de bloco própria, mas só depois que o mod daquele bloco já mostrou à busca uma parte da máquina: toda trilha de confiança começa na própria face da Central. Uma máquina a dois blocos de distância, de um mod que a Central não está tocando, é deixada em paz. Uma entidade de bloco vanilla só conta quando guarda algo e está diretamente contra a Central, e armazenamentos comuns de jogador — baús, barris e caixas de shulker — nunca são captados por uma busca; vincule-os com o <ItemLink id="nep:hub_linker"/> se for mesmo isso que você quer.

Todo o resto é revestimento. O revestimento só é atravessado por um trecho curto por vez, definido por `Profundidade de Revestimento` e zerado a cada parte de máquina, e apenas quando pertence a um mod que a busca já confia ou quando o trecho começa contra a própria Central. É isso que permite à busca cruzar uma parede até o hatch do outro lado sem nunca sair vagando para o terreno ou para os blocos decorativos de um mod. Ela volta atrás em qualquer coisa numa rede ME, então o Provedor alimentando a Central nunca é captado. O alcance é limitado por `Alcance de Vínculo` e o trabalho total por `Orçamento de Busca`.

Para qualquer coisa que a busca erre, ou uma máquina situada entre outros inventários que você não quer tocar, use o <ItemLink id="nep:hub_linker"/>. Agache e use-o no ar para escolher uma função, use-o em cada bloco desejado, depois use-o na Central para aplicar o plano inteiro de uma vez. Usá-lo num bloco já planejado o retira.

Agache e use uma <Color id="yellow">chave inglesa</Color> numa Central para recolhê-la depois de configurada. A Central vai direto para o seu inventário carregando todo vínculo e tudo o que foi configurado neles, e colocá-la de novo restaura cada vínculo ainda ao alcance de onde você a pôs. Quebrar a Central, em vez disso, devolve uma simples, sem nada lembrado.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Entrada e Saída</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Inventários de <Color id="yellow">Entrada</Color> são para onde os ingredientes vão. Nada é tirado de volta de um, então um Provedor não consegue desfazer a própria entrega no meio de uma fabricação.

Inventários de <Color id="yellow">Saída</Color> nunca recebem push. A Central os esvazia para a sua rede por você, algumas vezes por segundo, então os resultados voltam direto ao armazenamento sem um Cartão de Importação nem um Ponto de Armazenamento. Ela alcança a rede por onde estiver encostada, que normalmente é o Provedor que a alimenta.

<Color id="yellow">Entrada e saída</Color> é para a máquina que guarda seus ingredientes e seus resultados no mesmo inventário, um bloco em formato de fornalha em vez de um hatch. Ela recebe ingredientes e devolve resultados pelo mesmo lugar, o que significa que a Central alegremente entregaria seus ingredientes de volta à rede no momento em que pousassem: dê a esse vínculo um <Color id="green">filtro de retorno</Color> nomeando apenas o que a máquina produz.

Nada é tirado de uma máquina antes de a rede concordar em recebê-lo, então uma rede sem espaço deixa os resultados parados na máquina. Quando isso acontece, ou quando não há rede nenhuma contra a Central, a tela da Central avisa em <Color id="red">vermelho</Color> no topo.

Tudo o que está vinculado, qualquer que seja a função, é legível pela Central. É isso que o Modo de Bloqueio lê quando decide se a máquina ainda está ocupada, e é também o que um Ponto de Armazenamento na Central veria.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configurando um Vínculo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O <Color id="yellow">⚙</Color> de qualquer linha abre aquele vínculo sozinho. A engrenagem fica <Color id="gold">dourada</Color> quando um vínculo carrega algo além dos padrões, então uma tela cheia de vínculos simples mostra num relance quais você já mexeu.

<Color id="yellow">Função</Color> é a mesma configuração da seta na linha, por extenso.

<Color id="yellow">Face</Color> escolhe por qual lado da máquina a Central alcança. <Color id="green">Qualquer</Color>, o padrão, pega o inventário sem lados do bloco, que é a coisa mais permissiva que ele oferece e ignora quaisquer regras de espaço que uma máquina só aplica por face. Nomear uma face, em vez disso, dá a você exatamente o inventário que um tubo encostado naquele lado obteria — e é assim que você impede que uma máquina que ordena por lado receba um ingrediente no espaço errado.

<Color id="yellow">Prioridade</Color> decide qual vínculo é preenchido primeiro quando mais de um aceitaria a mesma coisa; o maior vai primeiro, e vínculos empatados mantêm a ordem em que estão listados. Segure <Color id="yellow">Shift</Color> para pular de dez em dez. É isso que põe um hatch exigente à frente de um genérico.

<Color id="yellow">Filtro de inserção</Color> governa o que pode ser empurrado para dentro do vínculo, e <Color id="yellow">filtro de retorno</Color> o que pode ser puxado de volta dele. Cada um comporta nove entradas e cada um tem seu próprio modo <Color id="green">Permitir</Color> ou <Color id="red">Negar</Color>. Um filtro vazio permite tudo, em qualquer modo, então uma lista de Negação vazia não nega nada.

Clique com o botão esquerdo num espaço de filtro com algo no cursor para defini-lo, e clique com o botão esquerdo de mão vazia ou com o direito para limpá-lo. Com o JEI instalado você pode arrastar direto da lista de ingredientes, sem caçar o item antes. Fluidos funcionam das duas formas, arrastados do JEI ou carregados de um terminal. Um filtro que a função do vínculo nunca consulta — um filtro de inserção num vínculo de Saída, digamos — aparece acinzentado em vez de oculto, e recusa o arrasto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Ela Não Faz</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Central move itens e fluidos e nada mais. Ela não conhece as receitas da máquina, não verifica se a estrutura está montada, não fornece energia e não espera uma fabricação terminar. A máquina roda sozinha exatamente como rodaria se você tivesse encanado tudo à mão.

<Color id="red">Ela é um dispositivo real na rede.</Color> A Central fica na rede ME como qualquer máquina: precisa de energia e ocupa canais. <nep:ConfigValue name="machineHubChannels"/> para a própria Central, mais <nep:ConfigValue name="machineHubChannelsPerLink"/> para cada inventário ao qual está vinculada, no lugar do provedor de padrões que cada hatch precisaria de outra forma. Qualquer coisa acima de 8 tem que vir por um cabo denso com um Controlador ME atrás, e cada vínculo empurra esse total para cima. Uma Central que não consegue reivindicar todos eles fica offline e deixa de oferecer armazenamento por completo — e a tela dela avisa.

<Color id="red">Ela também não pode inventar um inventário que não existe.</Color> Se as partes de uma máquina não expõem nada ao mundo externo, não há nada para a Central vincular, e nenhum Provedor de tipo algum jamais iria alcançá-la.
