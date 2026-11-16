---
navigation:
  title: Fabricação Mecânica
  icon: create:mechanical_crafter
  parent: nep/create/index.md
  position: 63
item_ids:
  - nep:mechanical_crafting_pattern
---
# <Color id="gold">Fabricação Mecânica</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Fabricação Mecânica</Color>

  <ItemImage id="create:mechanical_crafter" scale="2"/>

  Automatize os Fabricadores Mecânicos do Create. Codifique a receita num terminal como qualquer outra, ou capture-a de um arranjo que você já construiu.
</Column>

<Recipe id="nep:module_status/mechanical_crafting"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="create:mechanical_crafter" x="0" y="1" z="0" p:facing="north" p:pointing="left"/>
  <Block id="create:mechanical_crafter" x="1" y="1" z="0" p:facing="north" p:pointing="down"/>
  <Block id="create:mechanical_crafter" x="0" y="0" z="0" p:facing="north" p:pointing="left"/>
  <Block id="create:mechanical_crafter" x="1" y="0" z="0" p:facing="north" p:pointing="down"/>
  <Block id="ae2:pattern_provider" x="0" y="2" z="0"/>

  <BlockAnnotation x="0" y="2" z="0" color="#00ccff">
    **Provedor de Padrões**, em qualquer fabricador do arranjo
  </BlockAnnotation>
  <BlockAnnotation x="1" y="0" z="0" color="#ffaa00">
    **Fabricador de saída**, para onde toda esteira do arranjo leva
  </BlockAnnotation>
</GameScene>

* Monte o arranjo como o Create quer: um grupo conectado de <ItemLink id="create:mechanical_crafter"/> cujas setas todas levam a uma única saída.
* O arranjo precisa de velocidade de rotação. O Provedor só prepara ingredientes, ele não gira nada.
* O Provedor de Padrões vai em qualquer fabricador do arranjo, não no bloco onde a saída cai.
* Nenhum <ItemLink id="nep:import_card"/> é necessário. O resultado sai pelo fabricador de saída exatamente como num arranjo alimentado à mão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:mechanical_crafting_pattern"/>. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** dela: o padrão em branco volta como um Padrão de Fabricação Mecânica com a grade já arranjada. Isso também cobre receitas vanilla executadas num fabricador, sem precisar de <ItemLink id="ae2:molecular_assembler"/>.

Codificar à mão também funciona. Ponha o terminal em modo de processamento, preencha ingredientes e resultado e codifique: se casarem com uma receita de Fabricação Mecânica, o padrão volta como Padrão de Fabricação Mecânica de qualquer jeito. O NEP arranja a grade para você, até 9x9:

* Uma receita menor que o arranjo é colocada perto do fabricador de saída para encurtar a viagem dos itens.
* A fabricação é iniciada à força, então tampas de espaço são opcionais.

> <Color id="yellow">Um padrão de processamento comum não é aceito.</Color> O arranjo o ignora e nada é enviado, então qualquer padrão de processamento que você já tinha precisa ser recodificado.

> <Color id="yellow">Receitas vanilla num fabricador</Color> só rodam com o `allowRegularCraftingInCrafter` do Create ativado, igual à fabricação manual.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Capturing From a Crafter Array</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um arranjo que você já construiu pode lhe entregar o padrão diretamente, sem terminal e sem consulta ao JEI. Preencha um arranjo de fabricadores funcional com a receita, usando uma <ItemLink id="create:crafter_slot_cover"/> para cada célula vazia. Depois agache e clique com o botão direito em qualquer fabricador dele segurando um <ItemLink id="ae2:blank_pattern"/>. O arranjo e o resultado são gravados num <ItemLink id="nep:mechanical_crafting_pattern"/>, idêntico a um codificado num terminal.

Se falhar, a mensagem na hotbar diz por quê:

| Mensagem | Significado |
|---|---|
| Arranjo de fabricador mecânico inválido | Não é um arranjo conectado alimentando uma única saída. |
| Cada fabricador mecânico encadeado precisa de um ingrediente ou tampa de compartimento | Um fabricador está vazio e descoberto. |
| Nenhuma receita compatível com este arranjo | O arranjo preenchido não é uma receita real. |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O arranjo precisa estar girando. Um grupo de fabricadores em velocidade zero recusa todo envio.
* Todo fabricador do arranjo precisa estar **vazio**. Um segurando um ingrediente de uma fabricação anterior, ou solto à mão, bloqueia o envio inteiro até ser limpo.
* O arranjo precisa ainda formar um grupo conectado alimentando uma única saída. Quebre a cadeia e nada é enviado.
* O arranjo precisa de células descobertas suficientes para a receita. Uma <ItemLink id="create:crafter_slot_cover"/> tira sua célula de uso, então cobrir mais de um arranjo pequeno do que a receita deixa de espaço é recusado.
* O padrão precisa ser um <ItemLink id="nep:mechanical_crafting_pattern"/>. Um padrão de processamento comum nunca é enviado.
* Ative o Registro Detalhado em Depuração para que o arranjo registre cada padrão que recusa e por quê.
