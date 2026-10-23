---
navigation:
  title: Analisador Bacteriano
  icon: nautec:bacterial_analyzer
  position: 4
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:bacterial_analyzer
  - nautec:advanced_bacterial_analyzer
---

# <Color id="light_purple">Analisador Bacteriano</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="bacterial_analyzer" scale="2"/>
  O Analisador Bacteriano revela o tamanho, a Vitalidade e os atributos de uma colônia.
</Column>

Coloque uma <ItemLink id="petri_dish"/> com uma colônia não analisada no espaço da esquerda. Após 3 segundos a placa analisada move para o espaço da direita. Esvazie o espaço da direita antes que a próxima placa possa começar. O espaço da esquerda só aceita placas com colônia não analisada, então um tubo nunca o entope com placas vazias ou prontas.

As máquinas também funcionam com colônias não analisadas. A análise só te deixa ler os números, mas você precisa deles para escolher qual colônia mutar, cultivar ou queimar. Uma colônia que sai do [Mutador](mutator.md) volta a ser não analisada.

***

## <Color id="gold">Montagem</Color>

O Analisador tem dois blocos de altura, então precisa de um bloco livre acima ao ser colocado. Clique direito em qualquer metade para abri-lo.

Ele precisa de um feixe de pelo menos 5 AP entrando por sua face inferior por baixo. A potência é um limiar, não um custo: abaixo de 5 AP ele pausa, em 5 AP ele funciona em velocidade normal, e um feixe mais forte o faz mais rápido (veja abaixo).

Tanto o tempo (60 tiques) quanto a potência (5 AP) são configuráveis.

Funis e tubos podem alimentar placas no bloco de baixo e puxar placas analisadas, por qualquer face por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) muda o que cada face permite.

***

## <Color id="gold">Lendo uma Placa Analisada</Color>

A dica mostra Tamanho, Vitalidade e, para uma linhagem que produz algo, seu Rendimento de Linhagem. Segure Shift para ver o item que a linhagem produz e seus quatro atributos. Segure Shift e Control juntos para ver também a faixa para a qual cada atributo pode se mover na próxima mutação da colônia. Shift também lista o que a linhagem come num reator, no que ela cresce na Incubadora e as linhagens em que ela pode mutar, com cada catalisador e chance. Um atributo em vermelho está no teto. [Atributos das Bactérias](bacteria_stats.md) explica cada um.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:bacterial_analyzer"/>

***

## <Color id="gold">Analisador Bacteriano Avançado</Color>

<Row>
  <ItemImage id="advanced_bacterial_analyzer" scale="2"/>
</Row>

Analisa nove placas de uma vez. Ele tem nove espaços de entrada e nove de saída, e cada placa nas entradas passa por sua própria análise de 60 tiques ao mesmo tempo, então uma carga cheia termina tão rápido quanto uma única placa no Analisador básico. Cada espaço de entrada se enche de baixo para cima conforme sua placa progride.

* Energia: um feixe de pelo menos 40 AP a pureza 2.1 ou maior, em qualquer face exceto a frente. Abaixo de qualquer um dos dois, ele pausa e mantém o progresso. Um feixe de [Cristal de Prismarinho](nautec:getting_started/laser_power.md) (3.0) ou uma <ItemLink id="bacterial_fuel_cell"/> de pureza máxima (2.5) cobre a pureza.
* Só placas com colônia não analisada entram, então um tubo alimentando-o nunca o entope com placas prontas ou vazias.
* Quando os nove espaços de saída estão cheios, placas prontas esperam em seu espaço de entrada até um liberar.

Passe o mouse sobre a seta para ver do que ele está esperando, ou olhe-o através de um <ItemLink id="prism_monocle"/>. Funis e tubos podem alimentá-lo e esvaziá-lo por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). Seu tempo, potência e pureza estão em `config/nautec-common.toml`.

<Recipe id="nautec:advanced_bacterial_analyzer"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

Os dois analisadores funcionam mais rápido num feixe mais forte que o necessário: a velocidade é a raiz quadrada de (feixe ÷ o que eles precisam). O Analisador Bacteriano precisa de 5 AP, então 20 AP analisa duas vezes mais rápido. O Analisador Bacteriano Avançado precisa de 40 AP a pureza 2.1, então 160 AP naquela pureza analisa as nove placas duas vezes mais rápido. Pureza nunca acelera nenhum dos dois.

| Feixe, em múltiplos do que precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os 3 segundos por placa do Analisador Bacteriano são num feixe de 5 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
