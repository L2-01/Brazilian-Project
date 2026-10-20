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

  Automatize `create:sequenced_assembly` numa linha de esteiras real. O Controlador é uma caixa-preta em volta da linha inteira: um padrão entra, um item concluído sai. Ele alimenta cada estação, injeta o item base e recircula a peça até ela ficar pronta.
</Column>

<Recipe id="nep:module_status/sequenced_assembly"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
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

A linha em si é uma construção comum do Create. Ela não precisa ser um circuito fechado, porque o Controlador carrega as peças de volta ao início por código.

* Uma esteira de **entrada** na cabeça da linha.
* Suas **estações** sobre aquela esteira. Implantadores precisam estar virados para baixo, e toda estação precisa de força rotacional.
* Com o Create: New Age instalado, seus Energizadores também contam como estações. Um Energizador precisa de Energia Forge além da rotação; o Controlador deixa a fiação com você, exatamente como deixa os eixos.
* Um **Depósito** no final como saída. Este é obrigatório.
* O **Provedor de Padrões** vai no Controlador, não no Depósito.

Os resultados são empurrados direto de volta ao Provedor, então nenhum ponto de importação é necessário em lugar nenhum.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Ensinando o Arranjo a Ele</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Controlador não consegue ver sua construção sozinho. O <ItemLink id="nep:sequenced_assembly_linker"/> diz a ele o que é o quê.

| Modo | Use em |
|---|---|
| Definir Entrada | A esteira na cabeça da linha |
| Definir Saída | O Depósito no final |
| Definir Máquina | Cada estação, na ordem dos passos da receita |

O plano é armazenado no Vinculador conforme você marca os blocos, depois aplicado quando você usa o Vinculador no Controlador. Agachar e usar alterna o modo, e agachar e usar no ar limpa o plano.

> <Color id="yellow">Marque suas estações na ordem dos passos da receita.</Color> Cada Implantador recebe a ferramenta do seu próprio passo por essa ordem, então marcá-los fora de ordem envia o item errado para o Implantador errado.

Tudo precisa estar dentro do alcance de vínculo do Controlador, <nep:ConfigValue name="sequencedAssemblyLinkRange"/> blocos.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:sequenced_assembly_pattern"/>, e <Color id="red">somente</Color> ele. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** da receita: o padrão em branco volta como um Padrão de Montagem Sequenciada. O terminal de codificação sem fio funciona da mesma forma.

O padrão registra a própria receita, então ele nomeia a receita `create:sequenced_assembly` exata a executar em vez de deixar o Controlador adivinhar uma a partir do resultado. Duas receitas que produzem o mesmo item não colidem mais, e as entradas são calculadas para você: o item base mais cada item aplicado e fluido que a receita consome, <Color id="red">somado ao longo de todas as voltas</Color>. Uma receita de cinco voltas que aplica uma engrenagem por volta pede cinco engrenagens, e você nunca faz essa conta sozinho.

> <Color id="yellow">Um padrão de processamento comum não é aceito.</Color> O Controlador o ignora e nada é enviado, então qualquer padrão de processamento que você já tinha precisa ser recodificado.

Sem JEI você ainda consegue codificar um à mão. Coloque o terminal em modo de processamento, preencha o item base mais cada item aplicado e fluido nos seus totais <Color id="red">somados</Color>, ponha o item concluído no resultado, e codifique: se esses ingredientes couberem em exatamente uma receita `create:sequenced_assembly`, o padrão volta como um Padrão de Montagem Sequenciada de qualquer forma. Se as contagens estiverem erradas, ou duas receitas couberem, o terminal avisa e devolve um padrão de processamento comum, que o Controlador não aceita. Esse último caso é para que serve o botão **+**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">À Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Controlador não precisa ser dirigido por um padrão. Abra-o e coloque o item base junto de cada ferramenta aplicada direto na sua grade de entrada, e ele descobre a receita e roda a linha exatamente como faria para a rede. Itens concluídos se acumulam nos seus espaços de saída para você recolher em vez de voltar a um Provedor, então uma linha alimentada à mão não precisa de Provedor de Padrões nenhum. Fluidos podem ser preparados da mesma forma; veja Tanques de Preparação abaixo.

> <Color id="yellow">Melhor guardar para receitas de resultado único e certo.</Color> Uma receita de chance executada à mão não tem onde depositar seu lixo, então alimente o Controlador você mesmo só para receitas determinísticas.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Receitas de Chance</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Muitas receitas de montagem sequenciada podem sortear lixo em vez do item que você queria. O Controlador absorve isso para você. Ele mantém a linha rodando até o resultado de verdade aparecer, então a rede só enxerga o único item que pediu. O lixo é colocado no armazenamento da rede como estoque comum, e ingredientes novos são solicitados para repor a tentativa desperdiçada.

Se a rede secar, o Controlador para e sua face fica <Color id="red">vermelha</Color>. Passe o mouse sobre a linha de status na sua interface para ver exatamente qual material está faltando, itens e fluidos de Bica igualmente, com a quantidade que cada passo precisa. Um Controlador mostrando <Color id="red">Saída bloqueada</Color> concluiu um item que não cabe nem no seu buffer de saída nem no armazenamento da rede, então a linha está travada no Depósito de saída até você liberar espaço. Um Comparador ao lado dele chega ao máximo ao mesmo tempo, já que o buffer que ele lê é o que encheu, então um alarme pode ser ligado a ele.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de montagem sequenciada também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra o Controlador, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a linha começa nela como qualquer outro trabalho.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Uma receita com um passo de fluido não pode ser iniciada à mão, já que nenhum fluido sai de um inventário.
* A linha vinculada ainda precisa ter as estações daquela receita, ou o Controlador recusa a fabricação antes de qualquer coisa sair do seu inventário.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Segure o item concluído e use-o no Controlador. Ele imprime um relatório completo do que a receita precisa contra o que sua linha realmente tem.
* Todo Implantador precisa estar virado para baixo, e toda estação precisa de força rotacional.
* O Controlador ocupa <nep:ConfigValue name="sequencedAssemblyChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ele. Uma rede que não consegue cedê-los o deixa offline e nada na linha se move.
* Um Energizador do Create: New Age também precisa de Energia Forge. O Controlador só verifica sua rotação, então um Energizador ligado mas vazio segura a peça na esteira até seu buffer encher.
* A saída precisa ser um <ItemLink id="create:depot"/>. Nada mais é aceito.
* Abra o Controlador para ver sua faixa de estações. Uma barra vermelha sob uma estação significa que aquela estação é o problema.
* Um trabalho que nunca pode terminar, porque você o cancelou no terminal ou a receita mudou, pode ser descartado com o botão <Color id="red">✗</Color> no topo da interface, ao lado do <Color id="aqua">?</Color> que abre esta página. Ele esquece toda fabricação que o Controlador ainda deve e cancela os ingredientes que tem sob solicitação. Qualquer coisa já concluída ainda é devolvida.
* Descartar um trabalho, ou esvaziar os buffers nas suas mãos, deixa as peças já viajando pela esteira sem para onde ir. O Controlador continua limpando seu Depósito por dez segundos depois e coloca o que chegar no armazenamento da rede, e o relógio recomeça a cada peça que ele coleta, então uma linha inteira de peças ainda volta para casa. Ajuste a janela com `reclaimGrace`.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tanques de Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Fluidos que um padrão envia chegam antes de as Bicas precisarem deles, então o Controlador os prepara em quatro tanques ao lado de sua grade de ingredientes. Cada um comporta <Color id="aqua"><nep:ConfigValue name="sequencedAssemblyTankCapacity"/> mB</Color> e um fluido reivindica um tanque, então uma receita pode usar até quatro fluidos diferentes por vez. O Controlador completa as Bicas a partir deles conforme a linha roda. Passe o mouse sobre um tanque para ver o que ele contém.

Você também pode encher os tanques à mão. Use um balde cheio ou recipiente de fluido no Controlador, ou clique com um num tanque enquanto a interface está aberta, e seu conteúdo se esvazia num tanque correspondente ou vazio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Comparador</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um Comparador ao lado do Controlador lê o quão cheio seu buffer de saída está: nada enquanto o buffer está vazio, um assim que um único item cai nele, e 15 completo quando todo espaço está cheio. Nem a grade de ingredientes nem os tanques de preparação o alcançam.
