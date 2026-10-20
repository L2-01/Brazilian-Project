---
navigation:
  title: Fabricação por Fusão
  icon: draconicevolution:crafting_core
  parent: nep/draconicevolution/index.md
  position: 10
item_ids:
  - nep:fusion_crafting_pattern
---
# <Color id="gold">Fabricação por Fusão</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Fabricação por Fusão</Color>

  <ItemImage id="draconicevolution:crafting_core" scale="2"/>

  Automatize a Fabricação por Fusão do Draconic Evolution. O <ItemLink id="draconicevolution:crafting_core"/> é a máquina de fabricação: a rede prepara o catalisador no núcleo, carrega cada Injetor de Fusão ao redor dele e inicia a fabricação.
</Column>

<Recipe id="nep:module_status/fusion_crafting"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="3">
  <Block id="draconicevolution:crafting_core" x="0" y="0" z="0"/>
  <Block id="draconicevolution:wyvern_crafting_injector" x="-2" y="0" z="0" p:facing="east"/>
  <Block id="draconicevolution:wyvern_crafting_injector" x="2" y="0" z="0" p:facing="west"/>
  <Block id="draconicevolution:wyvern_crafting_injector" x="0" y="0" z="-2" p:facing="south"/>
  <Block id="ae2:pattern_provider" x="0" y="1" z="0"/>

  <BlockAnnotation x="0" y="1" z="0" color="#00ccff">
    **Provedor de Padrões**, encostado no Núcleo
  </BlockAnnotation>
  <BlockAnnotation x="0" y="0" z="0" color="#ff55ff">
    **Núcleo de Fusão**, segurando o catalisador
  </BlockAnnotation>
  <BlockAnnotation x="-2" y="0" z="0" color="#ffaa00">
    **Injetores de Fusão**, virados para o Núcleo e energizados
  </BlockAnnotation>
</GameScene>

* Construa o multibloco de Fabricação por Fusão exatamente como o Draconic Evolution pede: Injetores em linhas cardeais retas, virados para o Núcleo, a pelo menos a distância mínima que o Draconic Evolution exige e dentro do seu alcance de injetores.
* O Provedor vai no <ItemLink id="draconicevolution:crafting_core"/>, não num Injetor.
* Os Injetores ainda precisam de energia. A rede os carrega com itens; ela não os carrega de energia.
* Adicione um <ItemLink id="nep:import_card"/> ao Provedor para que o item concluído saia do Núcleo de volta à rede.

> <Color id="yellow">Precisa ser um Provedor de Padrões comum.</Color> Um <ItemLink id="ae2:pattern_provider"/> ou um <ItemLink id="ae2:cable_pattern_provider"/> encostado no Núcleo é o que o NEP escuta. O provedor específico de Fusão de outro mod carrega os Injetores pelo seu próprio roteamento e nunca oferece o padrão ao NEP, então um <ItemLink id="nep:fusion_crafting_pattern"/> parado num desses está fora das mãos do NEP. Escolha um ou outro para um dado Núcleo: dois deles apontados para o mesmo Núcleo se alternam carregando-o e atrapalham um ao outro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tier do Injetor</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Todo Injetor que guarda um ingrediente precisa ser pelo menos do tier da receita, então uma receita Caótica precisa de Injetores Caóticos. A rede só enche Injetores que atendem ao tier, e precisa deles em quantidade suficiente para cobrir a lista de ingredientes da receita.

Injetores de tier menor podem ficar no multibloco desde que estejam vazios, porque o Draconic Evolution recusa uma fabricação quando um Injetor que ela não está usando ainda guarda algo. Qualquer coisa deixada num Injetor ou no espaço de catalisador que o próximo padrão não possa usar é esvaziada para dentro do Provedor de Padrões antes do envio, então um Núcleo deixado carregado por uma fabricação anterior se limpa sozinho. O envio só falha se o Provedor não tiver espaço para receber esses itens.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:fusion_crafting_pattern"/>. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** da receita: o padrão em branco volta como um Padrão de Fabricação por Fusão, nomeando a receita `draconicevolution:fusion_crafting` exata a executar. As entradas são o catalisador mais cada ingrediente que a receita <Color id="red">consome</Color>, e quaisquer que ela <Color id="gold">guarda</Color> vão junto como entradas retidas.

Um padrão de processamento comum com as mesmas entradas e resultado ainda funciona; o Núcleo simplesmente precisa procurar uma correspondência na lista de receitas em vez de ser informado qual executar.

> <Color id="yellow">Melhorias de equipamento automatizam, e mantêm o que o item antigo tinha.</Color> Uma melhoria por fusão carrega a energia, os módulos e os encantamentos do catalisador para o item novo, exatamente como uma fabricação à mão. A rede gasta um item que ela já tem onde quer que a própria receita aceite um, então um capacitor carregado, com módulos ou encantado parado no estoque é melhorado no lugar em vez de um vazio ser fabricado primeiro, e tudo que ele carregava vai junto para o resultado. Uma melhoria de tier só fabrica um tier inferior novo quando o estoque não tem nada que a receita aceitaria.

> <Color id="yellow">Ingredientes mantidos são emprestados, não gastos.</Color> Se uma receita mantém um ingrediente em vez de consumi-lo, o padrão o carrega como qualquer outra entrada: o Núcleo o carrega num Injetor para a fabricação e o devolve direto ao Provedor de Padrões quando a fabricação termina. Um basta para um trabalho de qualquer tamanho. Um padrão codificado sem ele ainda funciona a partir de uma cópia que você carrega num Injetor por conta própria, que então é verificada e deixada em paz.

> <Color id="yellow">Uma fabricação cancelada devolve tudo.</Color> O Draconic Evolution deixa o catalisador e cada ingrediente carregado parados no lugar quando uma fabricação é cancelada, seja pelo botão Cancelar, quebrando o Núcleo, ou pelo Núcleo perdendo sua receita num reload de datapack. Tudo volta ao Provedor de Padrões, então o Núcleo fica livre para o próximo envio em vez de travado segurando materiais de um trabalho inteiro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Núcleo precisa estar ocioso e nada pode estar bloqueando seu espaço de saída. Um catalisador sobrando de uma fabricação anterior é devolvido sozinho, desde que o Provedor tenha espaço para ele.
* O padrão precisa estar num <ItemLink id="ae2:pattern_provider"/> comum encostado no Núcleo. O NEP nunca vê um guardado pelo provedor de Fusão de outro mod.
* Todo Injetor segurando um item precisa estar no tier da receita ou acima, e precisa haver quantidade suficiente deles.
* O Provedor de Padrões precisa de espaço para receber itens de volta, tanto para ingredientes mantidos quanto para qualquer coisa deixada num Injetor por uma fabricação cancelada.
* Os Injetores precisam de energia para carregar. Uma fabricação que começou fica em *Carregando* até eles serem alimentados.
* Ligue o Registro Detalhado em Debug para que o Núcleo registre por que cada envio foi recusado.
