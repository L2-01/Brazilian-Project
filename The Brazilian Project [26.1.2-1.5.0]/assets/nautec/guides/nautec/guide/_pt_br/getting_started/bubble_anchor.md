---
navigation:
  title: Âncora de Bolhas
  icon: nautec:bubble_anchor
  position: 17
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:bubble_anchor
  - nautec:bubble_capsule
---

# <Color id="light_purple">Âncora de Bolhas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="bubble_anchor" scale="2"/>
  Empurra o mar para fora de um cubo de 15 x 15 x 15 para você construir no seco.
</Column>

Posicione a âncora, dê-lhe combustível, e cada bloco de água no cubo ao redor dela fica retido: você pode andar, minerar e construir lá dentro como se o mar não existisse. A água logo fora do cubo permanece do lado de fora. Um anel tênue de bolhas marca a borda.

Alga, ervas marinhas e colunas de bolhas dentro do cubo são removidas, e blocos alagados são drenados. Blocos que você coloca dentro do campo entram direto na água retida.

***

## <Color id="gold">Combustível</Color>

Coloque combustível no espaço dela. Funis e tubos também podem alimentá-la.

| Combustível | Tempo |
|---|---|
| Bloco de Alga Seca | 2 minutos |
| Pepino-do-Mar | 30 segundos |
| Alga Seca | 12 segundos |
| Alga | 6 segundos |

Ela te avisa 10 segundos antes de o último combustível acabar. A barra ao lado do espaço mostra o que resta.

***

## <Color id="gold">Quando o Campo Acaba</Color>

O campo acaba quando o combustível se esgota, quando você o desliga ou quando você quebra a âncora. Quando o combustível acaba ou você desliga, a água retida é liberada das bordas para dentro. Quebrar a âncora libera tudo de uma vez.

O botão **Termina como** escolhe o que preenche o espaço que você deixou aberto:

* Água: o mar retorna a todo espaço em que você não construiu. Tudo que você construiu fica.
* Ar: o espaço permanece vazio. Use isso quando já tiver fechado sua sala com paredes, para que ela fique seca de vez. Se deixar aberto, o mar de fora volta por conta própria.

O botão **Cubo** escolhe onde o cubo fica. Centrado coloca a âncora no meio. Em cima assenta o cubo sobre a âncora, então uma âncora no fundo do mar limpa a água acima dela.

***

## <Color id="gold">Energia de Laser</Color>

Um feixe de laser de 20 AP ou mais, em qualquer face, opera a âncora sem combustível enquanto o feixe durar, e por 2 segundos depois que ele cair. Um feixe mais puro torna o campo maior:

| Pureza | Campo |
|---|---|
| abaixo de 1.5 | 15 x 15 x 15 |
| 1.5 | 17 x 17 x 17 |
| 2.0 | 21 x 21 x 21 |
| 2.5 | 25 x 25 x 25 |

Isso a transforma numa doca seca permanente para construções subaquáticas maiores. Um feixe de [Cristal de Prismarinho](laser_power.md) alcança o maior tamanho.

O tamanho, a potência do feixe, os tempos de combustível e a velocidade de funcionamento estão em `config/nautec-common.toml`.

<RecipeFor id="bubble_anchor"/>

***

## <Color id="gold">Cápsula de Bolhas</Color>

<Row>
  <ItemImage id="bubble_capsule"/>
  ### <Color id="aqua">Para Quando o Ar Acabar</Color>
</Row>

Um bolso de ar de uso único para emergências. Use-o com a cabeça embaixo d'água e ele empurra o mar para fora de um cubo de 5 x 5 x 5 ao redor da sua cabeça por 30 segundos, enchendo sua barra de ar na hora.

O bolso funciona como um pequeno campo de âncora: a água de fora fica de fora, e tudo que você construir dentro permanece quando ele acaba. Cinco segundos antes de colapsar você recebe um aviso, e então o mar volta a todo espaço que você deixou aberto. Colocar um bloco onde sua cabeça estava quando você o usou encerra o bolso mais cedo.

O tamanho e o tempo estão em `config/nautec-common.toml`.

<RecipeFor id="bubble_capsule"/>
