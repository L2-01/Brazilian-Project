---
navigation:
  title: Matriz de Montagem
  icon: nep:sequenced_assembly_matrix
  parent: nep/create/index.md
  position: 65
item_ids:
  - nep:sequenced_assembly_matrix
  - nep:matrix_circuitry
  - nep:hardened_obsidian_plate
categories:
  - Matrices
---
# <Color id="gold">Matriz de Montagem</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Montagem</Color>

  <ItemImage id="nep:sequenced_assembly_matrix" scale="2"/>

  Um bloco que substitui uma linha de montagem sequenciada inteira. Sem esteira, sem Posicionadores, sem Depósito. Ela executa a receita inteira internamente, e uma opção de configuração pode até pular o sorteio de chance para que uma fabricação <Color id="green">sempre</Color> dê o resultado principal.
</Column>

<Recipe id="nep:module_status/sequenced_assembly_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="create:shaft" x="0" y="0" z="0" p:axis="x"/>
  <Block id="nep:sequenced_assembly_matrix" x="1" y="0" z="0" p:axis="x"/>
  <Block id="create:shaft" x="2" y="0" z="0" p:axis="x"/>
  <Block id="ae2:pattern_provider" x="1" y="1" z="0"/>

  <BlockAnnotation x="1" y="1" z="0" color="#00ccff">
    **Provedor de Padrões**, em qualquer face
  </BlockAnnotation>
  <BlockAnnotation x="1" y="0" z="0" color="#ffaa00">
    **Matriz**, eixo em cada ponta do seu eixo
  </BlockAnnotation>
</GameScene>

* Potência rotacional em qualquer ponta do eixo ao longo do qual ela foi colocada. As quatro faces laterais não transmitem nada, então uma engrenagem ali não faz nada. Colocar a Matriz contra um eixo existente a alinha àquele eixo, e uma <ItemLink id="create:wrench"/> a gira depois sem perturbar nada dentro dela. Agache e use a chave para pegá-la.
* Uma conexão à sua rede ME para energia. Ela fica ociosa a <Color id="aqua"><nep:ConfigValue name="sequencedAssemblyMatrixIdleMeDrain"/> AE/t</Color> e consome <Color id="aqua"><nep:ConfigValue name="sequencedAssemblyMatrixMeDrain"/> AE/t</Color> enquanto monta. O visor mostra qual dos dois ela está fazendo.
* Com o Create: New Age instalado, receitas com uma etapa de energização também custam Forge Energy. A Matriz cria um buffer interno de FE exatamente para esse caso; ligue qualquer fonte de FE a qualquer face e ela carrega a até <nep:ConfigValue name="sequencedAssemblyMatrixChargeRate"/> FE/t. Faltando FE, ela drena a energia da própria rede ME, até o último décimo que a rede guarda em reserva. Receitas sem etapa de energização nunca a tocam.
* Um Provedor de Padrões em qualquer face. Toda fabricação começa com um padrão enviado à Matriz, então sem um ela fica parada não importa o que você ponha dentro.
* Um Comparador ao lado lê quão cheio o buffer de saída está. Veja Comparador abaixo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Speed Scales With Stress</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz drena mais estresse quanto mais rápido seu eixo gira, e quanto mais estresse drena, mais rápido monta. Abaixo de <Color id="red"><nep:ConfigValue name="sequencedAssemblyMatrixMinimumSpeed"/> RPM</Color> ela não faz nada e não custa estresse.

| Velocidade do eixo | Estresse drenado | Tempo por item |
|---|---|---|
| Abaixo de 32 RPM | nenhum | não executa |
| 32 RPM | 8.192 SU | 9 segundos |
| 64 RPM | 49.152 SU | 1,5 segundos |
| 128 RPM | 131.072 SU | 0,6 segundos |
| 256 RPM | 294.912 SU | 0,25 segundos |

> <Color id="yellow">Aumentar a marcha compensa muito mais do que parece.</Color> Dobrar o eixo de 32 RPM para 64 RPM é seis vezes o rendimento, não duas. A interface mostra velocidade de operação e velocidade de processamento lado a lado para você ver exatamente o que sua engrenagem está comprando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Ela Vai Fabricar</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita roda no momento em que tudo que ela consome está dentro da Matriz de uma vez. Não há etapas para agendar nem peça viajando entre estações, então ela precisa da lista de compras inteira adiantada: o item base uma vez, mais cada item posicionado e fluido multiplicado pelo número de voltas.

Um Mecanismo de Precisão, que dá cinco voltas por três etapas de posicionamento, precisa de uma Chapa Dourada, cinco Engrenagens, cinco Engrenagens Grandes e cinco Pepitas de Ferro. Ponha isso dentro e a Matriz executa uma tentativa da receita; Receitas de Chance abaixo cobre o que uma tentativa devolve.

Todo trabalho de montagem sequenciada começa com um <ItemLink id="nep:sequenced_assembly_pattern"/>. Uma Matriz que não deve nada à rede recusa itens em todas as faces e na própria interface, então ela nunca pode ficar sentada em ingredientes soltos sem saber para que serviam. Pó de Obsidiana sozinho poderia estar indo para uma Chapa Resistente ou uma <ItemLink id="hardened_obsidian_plate"/>, e um padrão é o que decide a questão. Codifique um procurando a receita no JEI e clicando no **+** dela num <ItemLink id="ae2:pattern_encoding_terminal"/>; o padrão nomeia a receita diretamente, então decide a questão mesmo quando duas receitas terminam no mesmo item. Codificar os ingredientes à mão em modo de processamento também funciona, e volta como Padrão de Montagem Sequenciada quando eles cabem em exatamente uma receita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Filling And Deploying</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

As mesmas etapas que a Matriz executa dentro de uma receita de montagem sequenciada são oferecidas sozinhas. Envie a ela um padrão de <Color id="aqua">Enchimento</Color> ou <Color id="aqua">Posicionamento</Color> e ela executa aquela receita única, então uma montagem que já tem uma Matriz não precisa de Bico sobre Depósito para [Enchimento](/nep/create/filling.md) nem de Posicionador para [Posicionamento](/nep/create/deploying.md). Esses padrões são os comuns, codificados exatamente como seriam para um Depósito, e cada fabricação custa a mesma velocidade e estresse de uma fabricação de montagem.

* Receitas que preservam sua ferramenta, como desbastar um tronco com um machado, funcionam se o padrão entregar a ferramenta à Matriz. O Create nunca desgasta uma ferramenta preservada, então o mesmo machado é devolvido direto ao Provedor de Padrões junto do resultado.
* Receitas cuja ferramenta um Posicionador <Color id="red">danifica</Color> em vez de consumir são recusadas, porque um padrão não pode nomear um item que volta com um ponto de durabilidade a menos. Construa o Depósito e o Posicionador para essas.
* Um item que a Matriz já está montando não pode também ser enchido ou posicionado até aquele trabalho terminar, já que uma Matriz executa uma receita por resultado por vez.

Desligar o módulo de Enchimento ou Posicionamento o desliga na Matriz também; não há interruptor separado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Helping A Job Along</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Com um trabalho em andamento você pode ajudá-lo. A Matriz aceita funis, tubos e itens colocados à mão, mas só até o que o trabalho que ela já deve ainda falta, e só para itens que aquele trabalho realmente usa. Ofereça uma pilha de sessenta e quatro quando ela precisa de um e ela pega o um. Veja Se Nada Acontecer abaixo para ler do que ela está precisando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Chance Recipes</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Numa linha física, uma receita como o Mecanismo de Precisão sorteia seu conjunto de resultados no fim e muitas vezes lhe entrega lixo. A Matriz sorteia esse conjunto exatamente como uma linha faz: toda tentativa custa um conjunto completo de ingredientes, tenha sucesso ou não.

Enquanto o sorteio está em jogo:

* O lixo vai <Color id="aqua">direto para o armazenamento da rede</Color> como estoque comum, então o buffer de saída nunca entope com ele. Só o item que você realmente pediu é devolvido ao Provedor de Padrões.
* Uma tentativa que erra deixa a rede ainda esperando, então a Matriz pede um conjunto novo de ingredientes e tenta de novo. Ela continua até o resultado real aparecer.
* Desligue <Color id="aqua">Solicitar receitas automaticamente</Color> e ela não faz isso. Um sorteio azarado então deixa a fabricação parada até você reabastecer a Matriz você mesmo.

Packs que acharem o sorteio punitivo demais podem ligar <Color id="aqua">Resultados Garantidos</Color>. O sorteio então nunca acontece, toda fabricação dá o resultado principal da receita, e as contagens de ingredientes acima viram o custo verdadeiro por item em vez de por tentativa.

> <Color id="yellow">Resultados Garantidos é uma opção de configuração de servidor, desligada por padrão.</Color> É o único modo em que o custo de ingredientes de uma fabricação é previsível.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fluids</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Quatro tanques internos ficam ao lado da grade de entrada, então uma receita pode usar até quatro fluidos diferentes. Cada um comporta <nep:ConfigValue name="sequencedAssemblyMatrixTankCapacity"/> mB. A rede os enche para você quando um padrão inclui entradas de fluido, que é o único jeito de enchê-los. Passe o mouse num tanque para ver o que ele comporta.

> <Color id="yellow">Um fluido por tanque.</Color> Um fluido reivindica exatamente um tanque e nunca vaza para um segundo, então um tanque cheio rejeita o resto em vez de comer um espaço que outro fluido precisa.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Comparador</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Comparador ao lado da Matriz lê quão cheio seu buffer de saída está: nada enquanto o buffer está vazio, um assim que um único item aterrissa, e um 15 cheio quando todos os espaços estão cheios. Nem a grade de entrada nem os tanques o alcançam.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A linha de status no topo nomeia o que a Matriz está fazendo, ou o que a está parando. Passe o mouse sempre que ficar vermelha; a dica carrega o detalhe, incluindo a lista exata de materiais que faltam a uma fabricação faminta.
* **Fabricando** lista o que a Matriz deve agora, cada um com sua contagem. Mostra *Nada* quando nada foi pedido à Matriz, o que não é o mesmo que estar incapaz de executar.
* Os visores ao lado mostram os AE/t sendo drenados, o RPM atual contra o máximo do Create, e o estresse sendo tomado.
* A grade de entrada prepara os itens que uma fabricação pendente precisa, e o buffer de saída guarda o que está pronto. Nenhum dos dois aceita itens que uma fabricação pendente não usa.
* Cada espaço em ambos comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.
* Os quatro tanques ficam ao lado da grade. Passe o mouse num para ver o que ele comporta contra sua capacidade, ou clique nele segurando um balde ou tanque cheio para despejar aquele fluido à mão.
* <Color id="red">✗</Color> **Limpar receitas pendentes** descarta toda fabricação que a Matriz ainda deve, cancela ingredientes que ela pediu e cancela os trabalhos de fabricação que esperavam por ela. Itens já feitos ainda são devolvidos. Fica cinza quando nada está pendente.
* <Color id="aqua">?</Color> **Guia** abre esta página. É sempre o botão mais à direita, em toda máquina do mod.
* <Color id="aqua">↓</Color> **Esvaziar Buffers** devolve ingredientes preparados e itens prontos ao seu inventário, e manda fluidos preparados de volta à rede.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Building One</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz é ela mesma uma receita de montagem sequenciada, então a primeira precisa ser construída numa linha real. Veja o <ItemLink id="nep:sequenced_assembly_controller"/> para isso. Depois uma Matriz pode construir mais dela mesma.

<Row>
  <ItemImage id="nep:hardened_obsidian_plate"/>
  ### <Color id="aqua">Chapa de Obsidiana Endurecida</Color>
</Row>

Começa do pó de obsidiana e não dá voltas.

<RecipeFor id="nep:hardened_obsidian_plate" fallbackText="Prensa, Bico com 500 mB de Lava, Bico com 500 mB de Água, depois Prensa mais duas vezes."/>

<ItemImage id="minecraft:air" scale="0.5"/>

<Row>
  <ItemImage id="nep:matrix_circuitry"/>
  ### <Color id="aqua">Circuitaria da Matriz</Color>
</Row>

O componente de melhoria universal compartilhado por toda Matriz, construído inteiramente de peças ME numa bancada de trabalho comum.

<RecipeFor id="nep:matrix_circuitry" fallbackText="Uma receita de fabricação com formato de processadores, aceleradores de fabricação, um componente de célula de 256k e uma singularidade."/>

<ItemImage id="minecraft:air" scale="0.5"/>

<Row>
  <ItemImage id="nep:sequenced_assembly_matrix"/>
  ### <Color id="gold">Matriz de Montagem</Color>
</Row>

Começa de um <ItemLink id="nep:sequenced_assembly_controller"/> e dá <Color id="red">quatro</Color> voltas, então multiplique cada item posicionado por quatro ao codificar o padrão. Isso significa quatro de cada entre Circuitaria da Matriz, Silício Impresso e Chapa de Obsidiana Endurecida.

<RecipeFor id="nep:sequenced_assembly_matrix" fallbackText="Serra, posiciona Circuitaria da Matriz, posiciona Silício Impresso, posiciona Chapa de Obsidiana Endurecida, depois Prensa. Quatro voltas."/>

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de montagem sequenciada também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Uma receita com etapa de fluido não pode ser iniciada à mão, já que nenhum fluido sai de um inventário.
* O estresse vem do seu acionamento cinético como sempre, então a Matriz ainda precisa estar girando para uma fabricação manual andar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Abra a Matriz. Sua linha de status nomeia o problema diretamente.

* <Color id="red">Devagar demais</Color> significa que o eixo está girando abaixo da velocidade mínima.
* <Color id="red">Estresse excessivo</Color> significa que a rede cinética não aguenta. Adicione capacidade.
* <Color id="red">Sem energia de rede</Color> significa que a rede ME não pode fornecer os <nep:ConfigValue name="sequencedAssemblyMatrixMeDrain"/> AE/t que uma Matriz montando precisa.
* <Color id="red">Canais de rede livres insuficientes</Color> significa que a Matriz não pôde reivindicar os <nep:ConfigValue name="sequencedAssemblyMatrixChannels"/> canais que ocupa, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela.
* <Color id="gray">Ociosa</Color> com itens dentro significa que nenhuma receita está totalmente satisfeita ainda. Confira a contagem de cada ingrediente posicionado contra a contagem de voltas. Também significa que nenhum padrão foi enviado, já que a Matriz nunca inicia uma fabricação que não lhe foi pedida.
* <Color id="red">Materiais ausentes</Color> significa que uma fabricação ainda é devida mas a rede não está fornecendo o que ela precisa. Passe o mouse na linha de status para ver exatamente quais materiais faltam e quanto. Esses são precisamente os itens que a Matriz aceita de você, então você pode soltá-los você mesmo em vez de esperar a rede. É o que você vê depois de uma tentativa sortear lixo e levar seus ingredientes, só possível com Resultados Garantidos desligado: a Matriz pede um conjunto novo e reporta qualquer coisa que a rede não tenha nem em estoque nem um padrão. Com Solicitar receitas automaticamente desligado ela lista o que a receita ainda precisa, para você reabastecer à mão.
* <Color id="red">Precisa de energia</Color> significa que a próxima fabricação tem uma etapa de energização (Create: New Age) e o buffer de FE guarda menos do que ela custa. A fabricação começa, e cobra o custo inteiro, só quando o buffer cobre; passe o mouse na linha de status para ver armazenado contra necessário. Alimente a Matriz com Forge Energy por qualquer face.
* <Color id="red">Saída bloqueada</Color> significa que o item pronto não cabe nem no buffer de saída nem no armazenamento da rede, então a fabricação fica segurada em progresso total. Libere um espaço, ou dê à Matriz para onde empurrar.
* Um trabalho que nunca pode terminar, porque você o cancelou no terminal ou a receita mudou, pode ser descartado com o botão <Color id="red">✗</Color> no topo direito da interface. Ela esquece toda fabricação que a Matriz ainda deve e cancela os ingredientes que pediu. Qualquer coisa já montada ainda é devolvida.
