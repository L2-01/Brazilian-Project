---
navigation:
  title: Biorreator Industrial
  icon: nautec:industrial_bio_reactor
  position: 12
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:industrial_bio_reactor
---

# <Color id="light_purple">Biorreator Industrial</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="industrial_bio_reactor" scale="2"/>
  Um reator de 5 por 5 por 4 que opera nove colônias com quatro espaços de melhorias.
</Column>

Ele funciona como o [Biorreator](bio_reactor.md): a mesma [fórmula de produção](production_rates.md) e velocidade base, a mesma [alimentação](colony_feeding.md), envelhecimento e decadência, e as mesmas [melhorias](reactor_upgrades.md). O que ele adiciona é espaço: 9 espaços de colônias com 9 espaços de saída, 3 espaços de nutrientes e 4 espaços de melhorias.

***

## <Color id="gold">Construindo-o</Color>

Quatro camadas, cada uma de 5 por 5:

* Camada 1 (base): Pilares de Prismarinho Escuro nos quatro cantos, Prismarinho Polido em todo o resto.
* Camadas 2 e 3: Pilares de Prismarinho Escuro nos cantos e Escudos de Contenção de Bactérias ao longo das bordas, com o miolo de 3 por 3 deixado vazio. O Biorreator Industrial ocupa o lugar do escudo do meio de uma parede na camada 2.
* Camada 4 (teto): Pilares de Prismarinho Escuro nos cantos, Blocos de Aço Aquarine em todo o resto.

<GameScene zoom="3" background="#333333" interactive={true}>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="0"/>
  <Block id="nautec:industrial_bio_reactor" x="2" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="0" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="4" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="0" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="4" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="0" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="4" y="3" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="3" z="4"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="4"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="4"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="3" z="4"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

O Biorreator Industrial pode ficar no meio de qualquer uma das quatro paredes, então você pode construir a moldura primeiro e colocar o bloco do reator no lado que estiver virado para você. A cena o mostra na parede norte. A câmara interna de 3 por 3 por 2 precisa ser ar, sem água e sem blocos. Sem o teto ele fica assim:

<GameScene zoom="3" background="#333333" interactive={true}>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="0"/>
  <Block id="nautec:industrial_bio_reactor" x="2" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="4"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

Clique direito no Biorreator Industrial com uma <ItemLink id="aquarine_steel_wrench"/> no modo Girar, sem agachar, para formá-lo. Se um bloco estiver errado, o chat indica sua posição, o que há nele e o que deveria haver. Quebrar qualquer bloco do reator formado o desfaz.

Uma vez formado, clique direito em qualquer um de seus blocos sem a chave na mão para abri-lo.

***

## <Color id="gold">Energia</Color>

Ele precisa de 100 AP mais 50 AP por espaço de colônia preenchido: 150 AP para uma colônia e 550 AP para nove, antes das melhorias multiplicarem. Como no Biorreator, isso é um mínimo. Abaixo dele nada funciona e todo progresso zera, e um feixe mais forte acima disso acelera o reator (veja Feixes Mais Fortes abaixo).

A energia entra por escotilhas no teto. Clique direito num dos Blocos de Aço Aquarine do teto formado com a chave para transformá-lo numa escotilha, e de novo para reverter. Isso não funciona no modo Lados de Itens, que define os lados do reator. Uma escotilha aceita um feixe apontando para baixo de cima, e uma escotilha na borda do teto também aceita um apontando para seu lado externo. Você pode abrir quantas escotilhas quiser, e suas energias se somam. Um feixe na frente do próprio bloco do Biorreator Industrial também conta.

Isso é bem mais do que um catalisador dá. Um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) sem melhorias envia até 150 AP por tique, então quatro deles em quatro escotilhas cobrem nove colônias sem melhorias. Feixes também podem ser combinados numa <ItemLink id="laser_junction"/> antes de chegarem a uma escotilha.

***

## <Color id="gold">A Tela</Color>

* A grade de 3 por 3 à esquerda comporta as colônias. A barra fina à direita de cada uma é seu buffer de nutrientes e a barra abaixo é seu progresso.
* A grade de 3 por 3 à direita comporta a produção, um espaço por colônia na mesma ordem.
* A fileira de baixo tem os três espaços de nutrientes à esquerda e os quatro espaços de melhorias à direita.
* A seta no meio mostra o progresso médio. Passe o mouse sobre ela para ver a energia chegando contra a necessária, e o que as melhorias estão fazendo.

Nove colônias precisam de alimento de apenas três espaços de nutrientes, então opere no máximo três nutrientes diferentes por vez. [Alimentação de Colônias](colony_feeding.md) tem os detalhes.

***

## <Color id="gold">Automação</Color>

* Toda face externa de cada bloco recebe e entrega itens: um funil no teto ou apontando para uma parede alimenta nutrientes e melhorias, funis sob o piso puxam a produção, e um tubo funciona em qualquer parte externa.
* A [Configuração de Lados](nautec:getting_started/utilities.md) define o que cada lado da estrutura faz. Use a aba à direita da tela do reator, ou a chave no modo Lados de Itens em qualquer bloco do reator. Uma configuração cobre um lado inteiro: Frente é a parede com o bloco do Biorreator Industrial, e Esquerda e Direita são as paredes à sua esquerda e direita olhando aquele bloco de fora. Por exemplo, defina o teto como Inserir e o piso como Extrair para que tubos no teto nunca puxem produção e tubos sob o piso nunca empurrem para dentro.

Colônias carregam e descarregam pela Porta de Placas. Uma placa entra no espaço superior entre a grade de colônias e as saídas, e placas com colônia saem pelo inferior; placas vazias saem do espaço na fileira de baixo, entre os nutrientes e as melhorias. Uma Placa de Petri com colônia a carrega no primeiro espaço de colônia que a comporte inteira. Quando todos os espaços de colônia estão cheios, uma placa de colônia nova troca em vez disso, mas só por uma colônia Senescente: sua colônia substitui a Senescente mais velha, e a colônia antiga sai naquela mesma placa, então nenhuma placa vazia sobra. Enquanto nenhuma colônia for Senescente a placa espera na porta, e uma troca também espera enquanto o espaço de saída da colônia estiver cheio. Uma placa vazia retira a colônia Senescente mais velha e espera na porta enquanto nenhuma for Senescente, e a porta recusa placas com colônia Senescente, então um único baú pode coletar da porta e alimentá-la ao mesmo tempo. Para retirar uma colônia que não é Senescente, clique no espaço dela com uma placa vazia. A automação alcança a porta onde quer que alcance os outros espaços.

A automação só insere itens nos espaços de nutrientes, melhorias e Porta de Placas e só os retira dos espaços de saída e da Porta de Placas. Mantenha funis longe das escotilhas do teto: um bloco sobre uma escotilha impede a entrada de um feixe descendo nela.

Um layout simples: um baú e um funil num canto do teto para nutrientes, escotilhas com feixes no resto do teto, e funis sob o piso levando ao armazenamento. Uma colônia no teto pode encher seu espaço de saída em uns dez segundos, então dê à saída mais de um funil quando as colônias estiverem fortes.

***

## <Color id="gold">Receita</Color>

<RecipeFor id="industrial_bio_reactor"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Biorreator Industrial primeiro calcula os AP de que precisa a partir de suas colônias e melhorias. Um feixe mais forte que isso acelera a produção sobre suas Melhorias de Velocidade: a velocidade é a raiz quadrada de (feixe ÷ o que ele precisa).

| Feixe, em múltiplos do que precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os dois se multiplicam. Um reator cuja Melhoria de Velocidade o faz rodar a ×1.5 e que recebe quatro vezes a potência necessária roda a ×3. Nutrientes são gastos por tique de trabalho, então um feixe mais forte produz mais itens com o mesmo nutriente. Passe o mouse sobre uma seta de progresso para ver a velocidade do feixe e a velocidade total com melhorias; o Jade também mostra a velocidade do feixe.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
