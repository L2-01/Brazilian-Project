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

  Um bloco que substitui uma linha de montagem sequenciada inteira. Sem esteira, sem Implantadores, sem Depósito. Ela executa a receita toda internamente, e uma opção de configuração pode até pular o sorteio de chance para que uma fabricação <Color id="green">sempre</Color> produza o resultado principal.
</Column>

<Recipe id="nep:module_status/sequenced_assembly_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
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

* Força rotacional em qualquer uma das pontas do eixo ao longo do qual ela foi colocada. As quatro faces laterais não transmitem nada, então uma engrenagem ali não faz coisa alguma. Colocar a Matriz contra um eixo existente a alinha àquele eixo, e uma <ItemLink id="create:wrench"/> a gira depois sem perturbar nada dentro dela. Agache e use a chave para pegá-la de volta.
* Uma conexão à sua rede ME para energia. Ela consome <Color id="aqua"><nep:ConfigValue name="sequencedAssemblyMatrixIdleMeDrain"/> AE/t</Color> parada e <Color id="aqua"><nep:ConfigValue name="sequencedAssemblyMatrixMeDrain"/> AE/t</Color> enquanto monta. O mostrador diz qual dos dois está fazendo.
* Com o Create: New Age instalado, receitas com um passo de energização também custam Energia Forge. A Matriz cria um buffer interno de FE exatamente para esse caso; ligue qualquer fonte de FE a qualquer face e ela carrega a até <nep:ConfigValue name="sequencedAssemblyMatrixChargeRate"/> FE/t. Faltando FE, ela consome a própria energia da rede ME, até o último décimo que a rede mantém em reserva. Receitas sem passo de energização nunca o tocam.
* Um Provedor de Padrões em qualquer face. Toda fabricação começa com um padrão enviado à Matriz, então sem um ela fica parada não importa o que você ponha dentro.
* Um Comparador ao lado lê o quão cheio o buffer de saída está. Veja Comparador abaixo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Velocidade Escala com o Estresse</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz consome mais estresse quanto mais rápido seu eixo gira, e quanto mais estresse ela consome, mais rápido ela monta. Abaixo de <Color id="red"><nep:ConfigValue name="sequencedAssemblyMatrixMinimumSpeed"/> RPM</Color> ela não faz nada e não custa estresse algum.

| Velocidade do eixo | Estresse consumido | Tempo por item |
|---|---|---|
| Abaixo de 32 RPM | nenhum | não funciona |
| 32 RPM | 8.192 SU | 9 segundos |
| 64 RPM | 49.152 SU | 1,5 segundos |
| 128 RPM | 131.072 SU | 0,6 segundos |
| 256 RPM | 294.912 SU | 0,25 segundos |

> <Color id="yellow">Subir a marcha compensa muito mais do que parece.</Color> Dobrar o eixo de 32 RPM para 64 RPM é seis vezes o rendimento, não o dobro. A interface mostra a velocidade de operação e a velocidade de processamento lado a lado para você ver exatamente o que sua engrenagem está comprando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita roda no momento em que tudo que ela consome está dentro da Matriz de uma vez. Não há passos para agendar nem peça viajando entre estações, então ela precisa da lista de compras inteira adiantada: o item base uma vez, mais cada item aplicado e fluido multiplicado pelo número de voltas.

Um Mecanismo de Precisão, que dá cinco voltas sobre três passos de aplicação, precisa de uma Chapa de Ouro, cinco Engrenagens, cinco Engrenagens Grandes e cinco Pepitas de Ferro. Coloque tudo isso e a Matriz executa uma tentativa da receita; Receitas de Chance abaixo cobre o que uma tentativa devolve.

Todo trabalho de montagem sequenciada começa com um <ItemLink id="nep:sequenced_assembly_pattern"/>. Uma Matriz que não deve nada à rede recusa itens em toda face e na própria interface, então ela nunca fica parada com ingredientes largados se perguntando para que serviriam. Pó de Obsidiana sozinho poderia estar indo para uma Chapa Resistente ou para uma <ItemLink id="nep:hardened_obsidian_plate"/>, e um padrão é o que decide a questão. Codifique um procurando a receita no JEI e clicando no **+** dela num <ItemLink id="ae2:pattern_encoding_terminal"/>; o padrão nomeia a receita diretamente, então decide a questão mesmo quando duas receitas terminam no mesmo item. Codificar os ingredientes à mão no modo de processamento também funciona, e volta como um Padrão de Montagem Sequenciada sempre que eles couberem em exatamente uma receita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Envase e Aplicação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os mesmos passos que a Matriz executa dentro de uma receita de montagem sequenciada são oferecidos sozinhos. Envie a ela um padrão de <Color id="aqua">Envase</Color> ou de <Color id="aqua">Aplicação</Color> e ela executa aquela receita única, então uma construção que já tem uma Matriz não precisa de Bica sobre um Depósito para [Envase](/nep/create/filling.md) nem de Implantador para [Aplicação](/nep/create/deploying.md). Esses padrões são os comuns, codificados exatamente como seriam para um Depósito, e cada fabricação custa a mesma velocidade e estresse de uma fabricação de montagem.

* Receitas que guardam sua ferramenta, como descascar um tronco com um machado, funcionam se o padrão entregar a ferramenta à Matriz. O Create nunca desgasta uma ferramenta guardada, então o mesmo machado é devolvido direto ao Provedor de Padrões com o resultado.
* Receitas cuja ferramenta um Implantador <Color id="red">danifica</Color> em vez de consumir são recusadas, porque um padrão não consegue nomear um item que volta com um ponto de durabilidade a menos. Construa o Depósito e o Implantador para essas.
* Um item que a Matriz já está montando não pode também ser enchido ou aplicado até aquele trabalho terminar, já que uma Matriz executa uma receita por resultado por vez.

Desligar o módulo de Envase ou de Aplicação o desliga na Matriz também; não há interruptor separado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Ajudando um Trabalho</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Com um trabalho em andamento você pode ajudá-lo. A Matriz aceita funis, tubos e itens colocados à mão, mas só até o que o trabalho que ela já deve ainda precisa, e só para itens que aquele trabalho realmente usa. Ofereça uma pilha de sessenta e quatro quando ela precisa de um e ela pega o um. Veja Se Nada Acontecer abaixo para ler do que ela está precisando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Receitas de Chance</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Numa linha física, uma receita como o Mecanismo de Precisão sorteia seu conjunto de resultados no final e frequentemente lhe entrega lixo. A Matriz sorteia aquele conjunto exatamente como uma linha faz: toda tentativa custa um conjunto completo de ingredientes, tenha sucesso ou não.

Enquanto o sorteio está em jogo:

* O lixo vai <Color id="aqua">direto para o armazenamento da rede</Color> como estoque comum, então o buffer de saída nunca entope com ele. Só o item que você realmente pediu é devolvido ao Provedor de Padrões.
* Uma tentativa que erra deixa a rede ainda esperando, então a Matriz solicita um conjunto novo de ingredientes e tenta de novo. Ela continua até o resultado de verdade aparecer.
* Desligue <Color id="aqua">Solicitar Receitas Automaticamente</Color> e ela não faz isso. Um sorteio de azar então deixa a fabricação parada ali até você reabastecer a Matriz por conta própria.

Pacotes que acharem o sorteio punitivo demais podem ligar <Color id="aqua">Resultados Garantidos</Color>. O sorteio então nunca acontece, toda fabricação produz o resultado principal da receita, e as contagens de ingredientes acima viram o custo verdadeiro por item em vez de por tentativa.

> <Color id="yellow">Resultados Garantidos é uma opção de configuração do servidor, desligada por padrão.</Color> É o único modo em que o custo de ingredientes de uma fabricação é previsível.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fluidos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Quatro tanques internos ficam ao lado da grade de entrada, então uma receita pode usar até quatro fluidos diferentes. Cada um comporta <nep:ConfigValue name="sequencedAssemblyMatrixTankCapacity"/> mB. A rede os enche para você quando um padrão inclui entradas de fluido, que é a única forma de eles serem enchidos. Passe o mouse sobre um tanque para ver o que ele contém.

> <Color id="yellow">Um fluido por tanque.</Color> Um fluido reivindica exatamente um tanque e nunca vaza para um segundo, então um tanque cheio rejeita o resto em vez de comer um espaço que outro fluido precisa.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Comparador</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Comparador ao lado da Matriz lê o quão cheio seu buffer de saída está: nada enquanto o buffer está vazio, um assim que um único item cai nele, e 15 completo quando todo espaço está cheio. Nem a grade de entrada nem os tanques o alcançam.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A linha de status no topo nomeia o que a Matriz está fazendo, ou o que a está impedindo. Passe o mouse sobre ela sempre que ficar vermelha; o tooltip carrega o detalhe, incluindo a lista exata de materiais que uma fabricação faminta está precisando.
* **Fabricando** lista o que a Matriz deve agora, cada um com sua contagem. Mostra *Nada* quando nada foi pedido à Matriz, o que não é o mesmo que não conseguir funcionar.
* Os mostradores ao lado mostram os AE/t sendo consumidos, o RPM atual contra o máximo do Create, e o estresse sendo absorvido.
* A grade de entrada prepara os itens que uma fabricação pendente precisa, e o buffer de saída guarda o que está pronto. Nenhum dos dois aceita itens que uma fabricação pendente não usa.
* Cada espaço em ambos comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que pede uma pilha de ferramentas ou poções ainda cabe.
* Os quatro tanques ficam ao lado da grade. Passe o mouse sobre um para ver o que ele contém contra sua capacidade, ou clique nele segurando um balde ou tanque cheio para despejar aquele fluido à mão.
* <Color id="red">✗</Color> **Limpar Receitas Pendentes** descarta toda fabricação que a Matriz ainda deve, cancela ingredientes que ela tem sob solicitação e cancela os trabalhos de fabricação esperando por ela. Itens já produzidos ainda são devolvidos. Fica cinza quando nada está pendente.
* <Color id="aqua">?</Color> **Guia** abre esta página. É sempre o botão mais à direita, em toda máquina do mod.
* <Color id="aqua">↓</Color> **Esvaziar Buffers** devolve ingredientes preparados e itens concluídos ao seu inventário, e manda os fluidos preparados de volta à rede.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Construindo Uma</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz é ela mesma uma receita de montagem sequenciada, então a primeira precisa ser construída numa linha real. Veja <ItemLink id="nep:sequenced_assembly_controller"/> para isso. Depois uma Matriz consegue construir mais de si mesma.

<Row>
  <ItemImage id="nep:hardened_obsidian_plate"/>
  ### <Color id="aqua">Chapa de Obsidiana Endurecida</Color>
</Row>

Começa com pó de obsidiana e não dá voltas.

<RecipeFor id="nep:hardened_obsidian_plate" fallbackText="Prensa, Bica 500 mB de Lava, Bica 500 mB de Água, depois Prensa mais duas vezes."/>

<ItemImage id="minecraft:air" scale="0.5"/>

<Row>
  <ItemImage id="nep:matrix_circuitry"/>
  ### <Color id="aqua">Circuitaria da Matriz</Color>
</Row>

O componente de melhoria universal compartilhado por toda Matriz, construído inteiramente de peças ME numa bancada de trabalho comum.

<RecipeFor id="nep:matrix_circuitry" fallbackText="Uma receita com formato de processadores, aceleradores de fabricação, um componente de célula de 256k e uma singularidade."/>

<ItemImage id="minecraft:air" scale="0.5"/>

<Row>
  <ItemImage id="nep:sequenced_assembly_matrix"/>
  ### <Color id="gold">Matriz de Montagem</Color>
</Row>

Começa com um <ItemLink id="nep:sequenced_assembly_controller"/> e dá <Color id="red">quatro</Color> voltas, então multiplique cada item aplicado por quatro ao codificar o padrão. Isso significa quatro de cada: Circuitaria da Matriz, Silício Impresso e Chapa de Obsidiana Endurecida.

<RecipeFor id="nep:sequenced_assembly_matrix" fallbackText="Serra, aplicar Circuitaria da Matriz, aplicar Silício Impresso, aplicar Chapa de Obsidiana Endurecida, depois Prensa. Quatro voltas."/>

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de montagem sequenciada também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Uma receita com um passo de fluido não pode ser iniciada à mão, já que nenhum fluido sai de um inventário.
* O estresse vem do seu conjunto cinético como sempre, então a Matriz ainda precisa estar girando para uma fabricação iniciada à mão andar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Abra a Matriz. Sua linha de status nomeia o problema diretamente.

* <Color id="red">Muito lento</Color> significa que o eixo está girando abaixo da velocidade mínima.
* <Color id="red">Sobrecarregado</Color> significa que a rede cinética não consegue sustentá-la. Adicione capacidade.
* <Color id="red">Sem energia na rede</Color> significa que a rede ME não consegue fornecer os <nep:ConfigValue name="sequencedAssemblyMatrixMeDrain"/> AE/t que uma Matriz montando precisa.
* <Color id="red">Canais de rede insuficientes</Color> significa que a Matriz não conseguiu obter os <nep:ConfigValue name="sequencedAssemblyMatrixChannels"/> canais que ela ocupa, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela.
* <Color id="gray">Inativo</Color> com itens dentro significa que nenhuma receita está completamente satisfeita ainda. Confira a contagem de cada ingrediente aplicado contra o número de voltas. Também significa que nenhum padrão foi enviado, já que a Matriz nunca inicia uma fabricação que não lhe foi pedida.
* <Color id="red">Materiais ausentes</Color> significa que uma fabricação ainda é devida mas a rede não está fornecendo o que ela precisa. Passe o mouse sobre a linha de status para ver exatamente quais materiais faltam e quanto. Esses são exatamente os itens que a Matriz aceita de você, então pode colocá-los você mesmo em vez de esperar pela rede. É isso que você vê depois que uma tentativa sorteia lixo e leva seus ingredientes junto, só possível com Resultados Garantidos desligado: a Matriz pede um conjunto novo e reporta qualquer coisa que a rede não tem nem em estoque nem um padrão. Com Solicitar Receitas Automaticamente desligado ela lista o que a receita ainda precisa, para você reabastecer à mão.
* <Color id="red">Precisa de energia</Color> significa que a próxima fabricação tem um passo de energização (Create: New Age) e o buffer de FE tem menos do que ela custa. A fabricação começa, e cobra o custo inteiro, só quando o buffer a cobre; passe o mouse sobre a linha de status para ver o armazenado contra o necessário. Alimente a Matriz com Energia Forge por qualquer face.
* <Color id="red">Saída bloqueada</Color> significa que o item concluído não cabe nem no buffer de saída nem no armazenamento da rede, então a fabricação fica presa em progresso total. Libere um espaço, ou dê à Matriz para onde empurrar.
* Um trabalho que nunca pode terminar, porque você o cancelou no terminal ou a receita mudou, pode ser descartado com o botão <Color id="red">✗</Color> no topo direito da interface. Ele esquece toda fabricação que a Matriz ainda deve e cancela os ingredientes que tem sob solicitação. Qualquer coisa já montada ainda é devolvida.
