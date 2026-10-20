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
  O Analisador Bacteriano revela o tamanho, a Vitalidade e os stats de uma colônia.
</Column>

Coloque uma <ItemLink id="petri_dish"/> segurando uma colônia não analisada no slot da esquerda. Após 3 segundos a placa analisada move para o slot da direita. Esvazie o slot da direita antes que a próxima placa possa começar. O slot da esquerda só aceita placas segurando uma colônia não analisada, então um cano nunca o entope com placas vazias ou prontas.

As máquinas todas funcionam com colônias não analisadas também. A análise só deixa você ler os números, mas você precisa deles para escolher qual colônia mutar, cultivar ou queimar. Uma colônia que sai do [Mutador](mutator.md) volta a ser não analisada.

***

## <Color id="gold">Montagem</Color>

O Analisador tem dois blocos de altura, então precisa de um bloco livre acima ao ser colocado. Clique com o botão direito em qualquer metade para abri-lo.

Ele precisa de um feixe de pelo menos 5 AP entrando pela sua face inferior por baixo. A energia é um limiar, não um custo: abaixo de 5 AP ele pausa, a 5 AP roda na velocidade normal, e um feixe mais forte o faz rodar mais rápido (veja abaixo).

Tanto o tempo (60 tiques) quanto a energia (5 AP) são configuráveis.

Funis e canos podem alimentar placas pelo bloco de baixo e puxar placas analisadas, por qualquer face por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) muda o que cada face permite.

***

## <Color id="gold">Lendo uma Placa Analisada</Color>

O tooltip mostra Tamanho, Vitalidade e, para uma linhagem que produz algo, seu Rendimento de Linhagem. Segure Shift para ver o item que a linhagem produz e seus quatro stats. Segure Shift e Control juntos para ver também a faixa para a qual cada stat pode se mover quando a colônia mutar de novo. Shift também lista o que a linhagem come num reator, em que ela cresce na Incubadora, e as linhagens para as quais pode mutar, com cada catalisador e chance. Um stat mostrado em vermelho está no seu teto. [Stats de Bactérias](bacteria_stats.md) explica cada um.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:bacterial_analyzer"/>

***

## <Color id="gold">Analisador Bacteriano Avançado</Color>

<Row>
  <ItemImage id="advanced_bacterial_analyzer" scale="2"/>
</Row>

Analisa nove placas de uma vez. Tem nove slots de entrada e nove de saída, e toda placa nas entradas percorre sua própria análise de 60 tiques ao mesmo tempo, então uma carga cheia termina tão rápido quanto uma única placa no Analisador básico. Cada slot de entrada se enche de baixo para cima conforme sua placa progride.

* Energia: um feixe de pelo menos 40 AP com pureza 2.1 ou maior, em qualquer face exceto a frontal. Abaixo de qualquer um, ele pausa e mantém o progresso. Um feixe de [Cristal de Prismarinho](nautec:getting_started/laser_power.md) (3.0) ou uma <ItemLink id="bacterial_fuel_cell"/> em pureza máxima (2.5) cobre a pureza.
* Só placas segurando uma colônia não analisada entram, então um cano que o alimenta nunca o entope com placas prontas ou vazias.
* Quando os nove slots de saída estão cheios, placas prontas esperam no seu slot de entrada até um se liberar.

Paire sobre a seta para ver o que ele está esperando, ou olhe para ele através de um <ItemLink id="prism_monocle"/>. Funis e canos podem alimentá-lo e esvaziá-lo por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). Seu tempo, energia e pureza estão em `config/nautec-common.toml`.

<Recipe id="nautec:advanced_bacterial_analyzer"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

Os dois analisadores rodam mais rápido num feixe mais forte que o necessário: a velocidade é a raiz quadrada de (feixe ÷ o que precisam). O Analisador Bacteriano precisa de 5 AP, então 20 AP analisam duas vezes mais rápido. O Analisador Bacteriano Avançado precisa de 40 AP com pureza 2.1, então 160 AP naquela pureza analisam as nove placas duas vezes mais rápido. Pureza nunca acelera nenhum dos dois.

| Feixe, como múltiplo do que precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os 3 segundos por placa do Analisador Bacteriano são num feixe de 5 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.