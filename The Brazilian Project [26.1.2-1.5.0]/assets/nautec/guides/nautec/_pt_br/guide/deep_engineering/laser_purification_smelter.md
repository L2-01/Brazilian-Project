---
navigation:
  title: Fundição de Purificação a Laser
  icon: nautec:laser_purification_smelter
  position: 13
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:laser_purification_smelter
---

# <Color id="light_purple">Fundição de Purificação a Laser</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="laser_purification_smelter" scale="2"/>
  Funde até nove stacks lado a lado com um feixe de laser em vez de combustível.
</Column>

A Fundição de Purificação a Laser cozinha qualquer coisa que uma fornalha vanilla consiga, e seus slots de entrada só aceitam itens que uma fornalha pode fundir. Ela tem nove slots de entrada, cada um emparelhado com seu próprio slot de saída, e um slot para uma melhoria de conduíte. A melhoria decide quantos slots ficam abertos e quão rápido a fundição inteira trabalha. Um feixe mais puro a torna mais barata de rodar.

***

## <Color id="gold">Energia</Color>

A fundição aceita feixes pelo topo e pelas três laterais que não são sua frente. Não precisa de combustível.

A cada tique em que está trabalhando, ela precisa de:

**slots ocupados × os AP por slot da melhoria ÷ a pureza do feixe**, arredondado para cima.

Um slot ocupado é um slot aberto segurando algo que ela possa fundir, com espaço na saída. Slots vazios, slots travados e slots com a saída cheia não custam nada, e uma fundição ociosa não precisa de feixe nenhum.

* Um feixe mais fraco que o custo a para. Ela guarda seu lugar e continua quando o feixe volta a ser forte o bastante.
* Um feixe mais forte que o custo não a torna mais rápida. Só a melhoria define a velocidade.
* Pureza acima de 1.0 divide o custo. Um feixe de pureza 2.0 o reduz à metade. Pureza nunca é exigida, e um feixe abaixo de 1.0 é tratado como 1.0, então não dá desconto nem custa a mais.

***

## <Color id="gold">Melhorias e Velocidade</Color>

Coloque uma <ItemLink id="eddy_upgrade"/>, <ItemLink id="surge_upgrade"/>, <ItemLink id="riptide_upgrade"/> ou <ItemLink id="maelstrom_upgrade"/> no slot de melhoria. São as mesmas melhorias que uma [Derivação de Conduíte de Corrente](current_conduits.md) usa.

| Melhoria | Slots abertos | Funde | AP por slot ocupado |
|---|---|---|---|
| Nenhuma | 1 | 8 itens a cada 20 tiques | 1 |
| Redemoinho | 3 | 16 itens a cada 10 tiques | 2 |
| Onda | 5 | 32 itens a cada 5 tiques | 4 |
| Correnteza | 7 | 64 itens a cada 2 tiques | 8 |
| Turbilhão | 9 | 64 itens por tique | 16 |

A velocidade é da fundição inteira, não de cada slot. No fim de cada intervalo ela funde um item de cada slot ocupado em turno, depois recomeça o ciclo, até ter fundido aquela quantidade de itens ou ficar sem trabalho. Então uma fundição de Turbilhão com os nove slots ocupados funde cerca de 7 itens de cada slot por tique, a 144 AP com pureza 1.0 ou 72 AP com pureza 2.0.

Cada item vai para o slot de saída emparelhado com seu slot de entrada. Uma saída só aceita mais do mesmo item, e só quando o resultado inteiro cabe, então uma saída cheia para só seu próprio slot.

***

## <Color id="gold">Slots Travados</Color>

Slots além do número que a melhoria abre ficam travados e desenhados com um cadeado. Passe o mouse num para ver qual melhoria o abre. Um slot de entrada travado não aceita nada de você nem de automação.

Se você tirar uma melhoria enquanto slots travados guardam itens, os itens ficam onde estão. Não são fundidos até o slot abrir de novo, mas você ainda pode tirá-los.

***

## <Color id="gold">Distribuição Automática</Color>

O botão Auto entre as duas grades liga e desliga a distribuição automática. Ligada, a fundição espalha seus itens de entrada igualmente pelos slots de entrada abertos a cada meio segundo, para que todo slot funda ao mesmo tempo.

* Um tipo de item é dividido o mais igualmente possível. 10 Pedregulhos em 3 slots abertos viram 4, 3 e 3.
* Vários tipos dividem os slots abertos em proporção a quantos de cada há. Cada tipo fica com pelo menos um slot, e cada tipo é então espalhado igualmente pelos seus próprios slots.
* Nada é perdido ou adicionado, e nenhum slot passa do seu tamanho de stack. Itens em slots travados ficam intocados.

Vem desligada numa fundição nova. Um <ItemLink id="configuration_card"/> copia a configuração, junto com a melhoria instalada, para outra fundição.

***

## <Color id="gold">Usando-a</Color>

Clique nela com o botão direito de mão vazia para abri-la. A grade de entrada fica à esquerda e a de saída à direita, com uma seta de progresso entre elas mostrando onde o intervalo atual está. O painel abaixo mostra:

* o feixe que ela está recebendo contra o que precisa agora
* a pureza do feixe e o desconto que ele dá
* quantos itens ela funde por intervalo com a melhoria instalada
* quantos slots estão abertos

Seu estado aparece ao lado do rótulo Inventário: Fundindo, Esperando feixe, Saídas cheias ou Ociosa. Passe o mouse numa linha do painel para mais detalhes. Clique na seta para ver todas as receitas de fundição no JEI.

Funis e canos podem colocar itens nos slots de entrada e tirá-los dos slots de saída, por qualquer face por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) define cada face separadamente. A automação nunca alcança o slot de melhoria. Quebrar a fundição deixa cair tudo dentro dela, melhoria incluída.

A fundição não dá experiência.

***

## <Color id="gold">Para Criadores de Pacotes</Color>

Em `config/nautec-common.toml`, `smelterSlots` lista os slots abertos sem melhoria, com Redemoinho, Onda, Correnteza e Turbilhão (padrão 1, 3, 5, 7, 9), e `smelterApMultipliers` lista os AP por slot ocupado na mesma ordem (padrão 1, 2, 4, 8, 16). A velocidade segue as configurações de item da Derivação de Conduíte (`conduitItemIntervalBase` a `conduitItemIntervalMaelstrom` e `conduitItemsPerOpBase` a `conduitItemsPerOpMaelstrom`), então mudá-las muda ambas.

***

### <Color id="aqua">Receita da Fundição de Purificação a Laser</Color>

<Recipe id="nautec:laser_purification_smelter"/>