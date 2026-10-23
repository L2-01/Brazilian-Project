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
  Funde até nove pilhas lado a lado num feixe de laser em vez de combustível.
</Column>

A Fundição de Purificação a Laser cozinha tudo que uma fornalha vanilla consegue, e seus espaços de entrada só aceitam itens que uma fornalha possa fundir. Ela tem nove espaços de entrada, cada um pareado com seu próprio espaço de saída, e um espaço para uma melhoria de conduíte. A melhoria decide quantos espaços ficam abertos e quão rápido a fundição inteira trabalha. Um feixe mais puro a torna mais barata de operar.

***

## <Color id="gold">Energia</Color>

A fundição aceita feixes no topo e nos três lados que não são a frente. Ela não precisa de combustível.

A cada tique que ela está trabalhando, precisa desta quantia de AP:

**espaços ocupados × AP por espaço da melhoria ÷ pureza do feixe**, arredondado para cima.

Um espaço ocupado é um espaço aberto contendo algo que ela possa fundir, com espaço na sua saída. Espaços vazios, espaços trancados e espaços com saída cheia não custam nada, e uma fundição ociosa não precisa de feixe algum.

* Um feixe mais fraco que o custo a para. Ela guarda o progresso e continua quando o feixe estiver forte de novo.
* Um feixe mais forte que o custo não a torna mais rápida. Só a melhoria define a velocidade.
* Pureza acima de 1.0 divide o custo. Um feixe de pureza 2.0 o corta pela metade. Pureza nunca é exigida, e um feixe abaixo de 1.0 é tratado como 1.0, então não dá desconto nem custa extra.

***

## <Color id="gold">Melhorias e Velocidade</Color>

Ponha uma <ItemLink id="eddy_upgrade"/>, <ItemLink id="surge_upgrade"/>, <ItemLink id="riptide_upgrade"/> ou <ItemLink id="maelstrom_upgrade"/> no espaço de melhoria. São as mesmas melhorias que uma derivação de [Conduíte de Corrente](current_conduits.md) usa.

| Melhoria | Espaços abertos | Funde | AP por espaço ocupado |
|---|---|---|---|
| Nenhuma | 1 | 8 itens a cada 20 tiques | 1 |
| Redemoinho | 3 | 16 itens a cada 10 tiques | 2 |
| Onda | 5 | 32 itens a cada 5 tiques | 4 |
| Correnteza | 7 | 64 itens a cada 2 tiques | 8 |
| Turbilhão | 9 | 64 itens a cada tique | 16 |

A velocidade é da fundição inteira, não de cada espaço. No fim de cada intervalo ela funde um item de cada espaço ocupado por vez, depois recomeça, até ter fundido aquela quantia ou acabar o trabalho. Assim, uma fundição de Turbilhão com os nove espaços ocupados funde cerca de 7 itens de cada espaço por tique, por 144 AP a pureza 1.0 ou 72 AP a pureza 2.0.

Cada item vai para o espaço de saída pareado com seu espaço de entrada. Uma saída só aceita mais do mesmo item, e só quando o resultado inteiro cabe, então uma saída cheia para só o seu próprio espaço.

***

## <Color id="gold">Espaços Trancados</Color>

Os espaços além do número que a melhoria abre ficam trancados e desenhados com um cadeado. Passe o mouse sobre um para ver qual melhoria o abre. Um espaço de entrada trancado não aceita nada de você nem da automação.

Se você retirar uma melhoria enquanto espaços trancados têm itens, os itens ficam onde estão. Eles não são fundidos até o espaço abrir de novo, mas você ainda pode retirá-los.

***

## <Color id="gold">Distribuição Automática</Color>

O botão Auto entre as duas grades liga e desliga a distribuição automática. Ligada, a fundição espalha seus itens de entrada igualmente pelos espaços de entrada abertos a cada meio segundo, então todo espaço funde ao mesmo tempo.

* Um tipo de item é dividido da forma mais equânime possível. 10 Pedregulhos em 3 espaços abertos viram 4, 3 e 3.
* Vários tipos dividem os espaços abertos em proporção à quantidade de cada. Cada tipo fica com pelo menos um espaço, e cada tipo é então espalhado igualmente pelos seus espaços.
* Nada se perde ou se adiciona, e nenhum espaço passa de seu tamanho de pilha. Itens em espaços trancados ficam intocados.

Ela vem desligada numa fundição nova. Um <ItemLink id="configuration_card"/> copia a configuração, junto da melhoria instalada, para outra fundição.

***

## <Color id="gold">Usando-a</Color>

Clique direito nela com a mão vazia para abri-la. A grade de entrada fica à esquerda e a de saída à direita, com uma seta de progresso entre elas mostrando o andamento do intervalo atual. O painel abaixo mostra:

* o feixe que está recebendo contra o que precisa agora
* a pureza do feixe e o desconto que dá
* quantos itens ela funde por intervalo com a melhoria instalada
* quantos espaços estão abertos

Seu status aparece ao lado do rótulo Inventário: Fundindo, Esperando feixe, Saídas cheias ou Ociosa. Passe o mouse sobre uma linha do painel para mais detalhes. Clique na seta para ver todas as receitas de fundição no JEI.

Funis e tubos podem colocar itens nos espaços de entrada e retirá-los dos espaços de saída, por qualquer face por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) define cada face separadamente. A automação nunca alcança o espaço de melhoria. Quebrar a fundição derruba tudo dentro dela, incluindo a melhoria.

A fundição não dá experiência.

***

## <Color id="gold">Para Criadores de Packs</Color>

Em `config/nautec-common.toml`, `smelterSlots` lista os espaços abertos sem melhoria, com Redemoinho, Onda, Correnteza e Turbilhão (padrão 1, 3, 5, 7, 9), e `smelterApMultipliers` lista os AP por espaço ocupado na mesma ordem (padrão 1, 2, 4, 8, 16). A velocidade segue as configurações de itens da Derivação de Conduíte (`conduitItemIntervalBase` a `conduitItemIntervalMaelstrom` e `conduitItemsPerOpBase` a `conduitItemsPerOpMaelstrom`), então mudar essas muda ambas.

***

### <Color id="aqua">Receita da Fundição de Purificação a Laser</Color>

<Recipe id="nautec:laser_purification_smelter"/>
