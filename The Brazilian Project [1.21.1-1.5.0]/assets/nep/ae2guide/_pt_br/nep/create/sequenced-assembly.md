---
navigation:
  title: Montagem Sequenciada
  icon: nep:sequenced_assembly_controller
  parent: nep/create/index.md
  position: 64
item_ids:
  - nep:sequenced_assembly_controller
  - nep:sequenced_assembly_linker
  - nep:sequenced_assembly_pattern
---
# <Color id="gold">Montagem Sequenciada</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Montagem Sequenciada</Color>

  <ItemImage id="nep:sequenced_assembly_controller" scale="2"/>

  Automatize `create:sequenced_assembly` numa linha de esteira real. O Controlador é uma caixa-preta ao redor da linha inteira: um padrão entra, um item pronto sai. Ele alimenta cada estação, injeta o item base e recircula a peça até ela ficar pronta.
</Column>

<Recipe id="nep:module_status/sequenced_assembly"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="nep:sequenced_assembly_controller" x="0" y="0" z="0"/>
  <Block id="ae2:pattern_provider" x="0" y="1" z="0"/>

  <BlockAnnotation x="0" y="1" z="0" color="#00ccff">
    **Provedor de Padrões**, no Controlador
  </BlockAnnotation>
  <BlockAnnotation x="0" y="0" z="0" color="#ffaa00">
    **Controlador**, colocado em qualquer lugar perto da linha
  </BlockAnnotation>
</GameScene>

A linha em si é uma construção comum do Create. Ela não precisa ser um laço fechado, porque o Controlador carrega as peças de volta ao início em código.

* Uma esteira de **entrada** na cabeça da linha.
* Suas **estações** sobre aquela esteira. Posicionadores precisam estar virados para baixo, e toda estação precisa de potência rotacional.
* Com o Create: New Age instalado, seus Energizadores contam como estações também. Um Energizador precisa de Forge Energy além de rotação; o Controlador deixa a fiação com você, exatamente como lhe deixa os eixos.
* Um **Depósito** no fim como saída. Esse é obrigatório.
* O **Provedor de Padrões** vai no Controlador, não no Depósito.

Os resultados são empurrados direto de volta ao Provedor, então nenhum barramento de importação é necessário em lugar algum.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Ensinando o Layout a Ela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Controlador não consegue ver sua construção sozinho. O <ItemLink id="nep:sequenced_assembly_linker"/> lhe diz o que é o quê.

| Modo | Use em |
|---|---|
| Definir Entrada | A esteira na cabeça da linha |
| Definir Saída | O Depósito no fim |
| Definir Máquina | Cada estação, na ordem das etapas da receita |

O plano é armazenado no Vinculador conforme você marca os blocos, depois aplicado quando você usa o Vinculador no Controlador. Agachar e usar alterna o modo, e agachar e usar no ar limpa o plano.

> <Color id="yellow">Marque suas estações na ordem das etapas da receita.</Color> Cada Posicionador recebe a ferramenta da sua própria etapa por essa ordem, então marcá-los fora de ordem manda o item errado para o Posicionador errado.

Tudo precisa estar dentro do alcance de vínculo do Controlador, <nep:ConfigValue name="sequencedAssemblyLinkRange"/> blocos.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:sequenced_assembly_pattern"/>, e <Color id="red">só</Color> ele. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** da receita: o padrão em branco volta como um Padrão de Montagem Sequenciada. O terminal de codificação sem fio funciona do mesmo jeito.

O padrão registra a própria receita, então nomeia a receita `create:sequenced_assembly` exata a executar em vez de deixar o Controlador adivinhar uma pelo resultado. Duas receitas que produzem o mesmo item não colidem mais, e as entradas são calculadas para você: o item base mais cada item posicionado e fluido que a receita consome, <Color id="red">somado por todas as voltas</Color>. Uma receita de cinco voltas que posiciona uma engrenagem por volta pede cinco engrenagens, e você nunca faz essa conta você mesmo.

> <Color id="yellow">Um padrão de processamento comum não é aceito.</Color> O Controlador o ignora e nada é enviado, então qualquer padrão de processamento que você já tinha precisa ser recodificado.

Sem JEI você ainda pode codificar um à mão. Ponha o terminal em modo de processamento, preencha o item base mais cada item posicionado e fluido nos seus totais <Color id="red">somados</Color>, ponha o item pronto no resultado e codifique: se esses ingredientes couberem em exatamente uma receita `create:sequenced_assembly`, o padrão volta como Padrão de Montagem Sequenciada de qualquer jeito. Se as contagens estiverem erradas, ou duas receitas couberem, o terminal avisa e devolve um padrão de processamento comum, que o Controlador não aceita. Esse último caso é para o que o botão **+** existe.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">By Hand</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Controlador não precisa ser dirigido por um padrão. Abra-o e coloque o item base junto de cada ferramenta posicionada direto na sua grade de entrada, e ele descobre a receita e roda a linha como faria para a rede. Itens prontos se acumulam nos seus espaços de saída para você coletar em vez de voltar a um Provedor, então uma linha alimentada à mão não precisa de Provedor de Padrões algum. Fluidos podem ser preparados do mesmo jeito; veja Tanques de Preparação abaixo.

> <Color id="yellow">Melhor manter para receitas com um resultado único e certo.</Color> Uma receita de chance executada à mão não tem onde depositar seu lixo, então alimente o Controlador você mesmo só para receitas determinísticas.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Chance Recipes</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Muitas receitas de montagem sequenciada podem sortear lixo em vez do item que você queria. O Controlador absorve isso para você. Ele mantém a linha rodando até o resultado real aparecer, então a rede só vê o único item que pediu. O lixo é posto no armazenamento da rede como estoque comum, e ingredientes novos são pedidos para repor a tentativa desperdiçada.

Se a rede secar, o Controlador para e sua face fica <Color id="red">vermelha</Color>. Passe o mouse na linha de status da sua interface para ver exatamente qual material está faltando, itens e fluidos de Bico igualmente, com a quantidade que cada etapa precisa. Um Controlador mostrando <Color id="red">Saída bloqueada</Color> terminou um item que não cabe nem no seu buffer de saída nem no armazenamento da rede, então a linha está engarrafada no Depósito de saída até você liberar espaço. Um Comparador ao lado vai ao máximo ao mesmo tempo, já que o buffer que ele lê é o que encheu, então um alarme pode ser ligado a ele.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de montagem sequenciada também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra o Controlador, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a linha começa nela como qualquer outro trabalho.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Uma receita com etapa de fluido não pode ser iniciada à mão, já que nenhum fluido sai de um inventário.
* A linha vinculada ainda precisa comportar as estações daquela receita, ou o Controlador recusa a fabricação antes de qualquer coisa sair do seu inventário.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Segure o item pronto e use-o no Controlador. Ele imprime um relatório completo do que a receita precisa contra o que sua linha realmente tem.
* Todo Posicionador precisa estar virado para baixo, e toda estação precisa de potência rotacional.
* O Controlador ocupa <nep:ConfigValue name="sequencedAssemblyChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ele. Uma rede que não pode cedê-los o deixa offline e nada na linha se move.
* Um Energizador do Create: New Age também precisa de Forge Energy. O Controlador só checa sua rotação, então um Energizador ligado mas vazio segura a peça na esteira até seu buffer encher.
* A saída precisa ser um <ItemLink id="create:depot"/>. Nada mais é aceito.
* Abra o Controlador para ver sua faixa de estações. Uma barra vermelha sob uma estação significa que aquela estação é o problema.
* Um trabalho que nunca pode terminar, porque você o cancelou no terminal ou a receita mudou, pode ser descartado com o botão <Color id="red">✗</Color> no topo da interface, ao lado do <Color id="aqua">?</Color> que abre esta página. Ele esquece toda fabricação que o Controlador ainda deve e cancela os ingredientes que pediu. Qualquer coisa já terminada ainda é devolvida.
* Descartar um trabalho, ou esvaziar os buffers nas suas mãos, deixa as peças já viajando pela esteira sem para onde ir. O Controlador continua limpando seu Depósito por dez segundos depois e põe o que chegar no armazenamento da rede, e o relógio recomeça a cada peça que ele coleta, então uma linha inteira de peças ainda volta para casa. Ajuste a janela com `reclaimGrace`.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Staging Tanks</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os fluidos que um padrão envia chegam antes de os Bicos precisarem deles, então o Controlador os prepara em quatro tanques ao lado da sua grade de ingredientes. Cada um comporta <Color id="aqua"><nep:ConfigValue name="sequencedAssemblyTankCapacity"/> mB</Color> e um fluido reivindica um tanque, então uma receita pode usar até quatro fluidos diferentes por vez. O Controlador abastece os Bicos a partir deles enquanto a linha roda. Passe o mouse num tanque para ver o que ele comporta.

Você também pode encher os tanques à mão. Use um balde cheio ou recipiente de fluido no Controlador, ou clique um num tanque com a interface aberta, e seu conteúdo se esvazia num tanque correspondente ou vazio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Comparador</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Comparador ao lado do Controlador lê quão cheio seu buffer de saída está: nada enquanto o buffer está vazio, um assim que um único item aterrissa, e um 15 cheio quando todos os espaços estão cheios. Nem a grade de ingredientes nem os tanques de preparação o alcançam.
