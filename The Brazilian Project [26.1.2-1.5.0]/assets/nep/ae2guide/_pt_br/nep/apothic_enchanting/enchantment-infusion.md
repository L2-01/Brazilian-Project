---
navigation:
  title: Infusão de Encantamentos
  icon: apothic_enchanting:raven_enchanting_table
  parent: nep/apothic_enchanting/index.md
  position: 41
item_ids:
  - nep:enchanting_pattern
---
# <Color id="gold">Infusão de Encantamentos</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Infusão de Encantamentos</Color>

  <ItemImage id="apothic_enchanting:raven_enchanting_table" scale="2"/>

  As receitas de infusão do Apothic Enchanting exigem que a mesa de encantamentos esteja dentro de uma faixa de Eterna, Quanta e Arcana. A <ItemLink id="apothic_enchanting:raven_enchanting_table"/> é a única mesa cujos atributos são definidos na sua própria interface em vez de coletados de estantes, então o NEP a ajusta ao que a receita pede internamente, sem tocar nos valores definidos pelo jogador.
</Column>

<Recipe id="nep:module_status/enchantment_infusion"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="ae2:pattern_provider" y="0"/>
  <Block id="apothic_enchanting:raven_enchanting_table" y="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da mesa. Essa é toda a construção.
* Sem estantes, sem Estantes do Inferno, sem Estantes da Visão. Estantes alimentam os atributos de uma mesa, e os atributos desta mesa são definidos, então o anel ao redor dela não faz nada por uma fabricação automatizada.
* Um <ItemLink id="nep:import_card"/> também não é necessário. A fabricação termina num único tique e o resultado é entregue diretamente de volta ao Provedor que o pediu. Se um Provedor não estiver disponível, qualquer outro inventário tocando a mesa o recebe em seu lugar, e sem nenhum inventário conectado a mesa o larga em cima de si mesma em vez de segurar o trabalho.
* Só a Mesa do Corvo aceita padrões, já que nenhuma outra mesa pode ser ajustada aos requisitos de uma receita.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A infusão codifica como um <ItemLink id="nep:enchanting_pattern"/>. Num <ItemLink id="ae2:pattern_encoding_terminal"/>, escolha uma receita de infusão na categoria Encantamento do JEI e a entrada, o lápis-lazúli e a experiência são todos preenchidos para você, e codificar transforma o <ItemLink id="ae2:processing_pattern"/> num Padrão de Encantamento nomeando aquela receita.

Codificar um padrão de processamento comum à mão também funciona, desde que ele carregue as mesmas três entradas. Codifique-o e o NEP o promove a um Padrão de Encantamento para qualquer receita que aquelas entradas paguem. A quantidade de experiência é a parte complicada.

Uma receita nomeada nunca precisa ser adivinhada. Um Padrão de Encantamento carrega o id da receita, então uma mesa executa exatamente a receita que você codificou mesmo onde um pacote adiciona uma segunda receita pegando a mesma entrada para o mesmo resultado. Um padrão de processamento ainda é aceito e é casado pelas suas entradas.

<Color id="green">Só a infusão automatiza.</Color> O encantamento comum lhe entrega três ofertas sorteadas da sua semente de encantamento, então não produz resultado fixo que um padrão pudesse pedir. Receitas de infusão são as que têm uma única saída certa, e são elas que o NEP executa.

> <Color id="yellow">Uma receita que produz mais do próprio ingrediente não pode ser solicitada.</Color> A infusão nativa do Apothic de <ItemLink id="minecraft:echo_shard"/>, por exemplo, transforma um fragmento em quatro, e o AE2 oculta o item que você pediu do próprio cálculo de fabricação para que nenhuma receita possa se alimentar. O plano, portanto, volta parcial com um fragmento faltando, por mais que você tenha armazenado, e o padrão nunca é empurrado. Isso é um limite do planejador de fabricação do AE2, não da mesa. Existem outras formas de automatizar receitas recursivas, mas elas ficam fora do escopo do NEP.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Custos de Fabricação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Receitas de infusão são sempre a terceira oferta da mesa, então custam **3 lápis-lazúli**, mas a quantidade de experiência necessária para cada receita muda de receita para receita. Um padrão codifica o custo de lápis-lazúli e paga a experiência numa forma armazenada dela, já que não há jogador parado na mesa para ser cobrado.

Onde um mod adiciona uma forma fluida de experiência, é esse fluido que um padrão pede. O NEP pega o primeiro fluido carregando a tag `#c:experience` e o cobra em milibalde, e só recorre ao <ItemLink id="minecraft:experience_bottle"/> quando nenhum fluido assim está carregado. Qualquer um dos pagamentos executa uma fabricação, então um padrão codificado antes de um fluido de experiência chegar continua funcionando.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  ### <Color id="aqua">Custos de experiência:</Color>
</Row>

<ItemImage id="minecraft:air" scale="0.25"/>

| Eterna exigida | Níveis cobrados | Experiência | Fluido | Frascos |
|---|---|---|---|---|
| 0 | 3 | 26 | 520mB | 1 |
| 20 | 20 | 155 | 3100mB | 3 |
| 60 | 60 | 1091 | 21820mB | 16 |
| 80 | 80 | 1631 | 32620mB | 24 |

Fazer à mão pode sair mais barato, porque a mesa sorteia um nível para a oferta e cobra o menor entre o sorteado e o teto. Um padrão sempre paga o teto, então uma infusão automatizada nunca custa menos que a mesma fabricação na mesa.

Ambas as taxas são configurações. Um frasco paga <nep:ConfigValue name="infusionExperiencePerBottle"/> pontos, bem mais do que vale arremessar um, então as contagens de frascos ficam pequenas; um ponto custa <nep:ConfigValue name="infusionMillibucketsPerExperience"/>mB, a taxa que a tag `#c:experience` documenta.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Provedor tem que estar numa Mesa de Encantamentos do Corvo. Nada mais aceita um envio.
* O padrão tem que carregar o lápis-lazúli e a experiência. Um que liste só a entrada e o resultado não casa com nenhuma receita.
* A experiência tem que ser de um tipo que a mesa aceita: um fluido carregando a tag `#c:experience`, ou Frascos do Encantador. Outro fluido é recusado, por mais que um padrão ofereça dele.
* Onde duas receitas se encaixam nas mesmas entradas e no mesmo resultado, um padrão de processamento é recusado em vez de adivinhado. Codifique-o, ou transfira do JEI, para obter um Padrão de Encantamento nomeando a que você quer.
* Um plano que volta parcial faltando a própria entrada da receita é o AE2 se recusando a deixar uma receita se alimentar, que é o que a infusão de <ItemLink id="minecraft:echo_shard"/> lhe pede. Nada chega à mesa, então nada nela está com defeito.
* Ligue o Registro Detalhado em Debug para que a mesa registre por que cada envio foi recusado.
