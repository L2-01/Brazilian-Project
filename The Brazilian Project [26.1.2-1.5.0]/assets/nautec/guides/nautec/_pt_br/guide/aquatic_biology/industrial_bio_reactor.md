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
  Um reator de 5 por 5 por 4 que roda nove colônias com quatro slots de melhoria.
</Column>

Funciona como o [Biorreator](bio_reactor.md): a mesma [fórmula de produção](production_rates.md) e velocidade base, a mesma [alimentação](colony_feeding.md), envelhecimento e decaimento, e as mesmas [melhorias](reactor_upgrades.md). O que ele adiciona é espaço: 9 slots de colônia com 9 slots de saída, 3 slots de nutriente e 4 slots de melhoria.

***

## <Color id="gold">Construindo-o</Color>

Quatro camadas, cada uma 5 por 5:

* Camada 1 (base): Pilares de Prismarinho Escuro nos quatro cantos, Prismarinho Polido no resto.
* Camadas 2 e 3: Pilares de Prismarinho Escuro nos cantos e Escudos de Contenção de Bactérias ao longo das bordas, com o meio 3 por 3 deixado vazio. O Biorreator Industrial toma o lugar da blindagem do meio de uma parede na camada 2.
* Camada 4 (teto): Pilares de Prismarinho Escuro nos cantos, Blocos de Aço Aquarine no resto.

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

O Biorreator Industrial pode ficar no meio de qualquer uma das quatro paredes, então você pode construir a moldura primeiro e pôr o bloco do reator no lado que estiver virado para você. A cena o mostra na parede norte. A câmara de 3 por 3 por 2 no interior deve ser ar, sem água nem blocos. Sem o teto fica assim:

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

Clique com o botão direito no Biorreator Industrial segurando uma <ItemLink id="aquarine_steel_wrench"/> no modo Girar, sem agachar, para formá-lo. Se um bloco estiver errado, o chat nomeia sua posição, o que está lá e o que deveria estar. Quebrar qualquer bloco do reator formado o desfaz.

Formado, clique com o botão direito em qualquer um dos seus blocos sem a chave na mão para abri-lo.

***

## <Color id="gold">Energia</Color>

Ele precisa de 100 AP mais 50 AP por slot de colônia ocupado: 150 AP para uma colônia e 550 AP para nove, antes das melhorias multiplicarem. Como no Biorreator, isso é um mínimo. Abaixo dele nada roda e todo progresso zera, e um feixe mais forte acima dele acelera o reator (veja Feixes Mais Fortes abaixo).

A energia entra por escotilhas no teto. Clique com o botão direito num dos Blocos de Aço Aquarine do teto formado com a chave para transformá-lo numa escotilha, e de novo para revertê-lo. Isso não funciona no modo Lados de Itens, que em vez disso define os lados do reator. Uma escotilha aceita um feixe apontando para baixo nela por cima, e uma escotilha na borda do teto também aceita um apontando para sua lateral externa. Você pode abrir quantas escotilhas quiser, e suas energias somam. Um feixe na frente do próprio bloco do Biorreator Industrial também conta.

Isso é muito mais do que um catalisador dá. Um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) sem melhorias envia até 150 AP por tique, então quatro deles em quatro escotilhas cobrem nove colônias sem melhorias. Feixes também podem ser combinados numa <ItemLink id="laser_junction"/> antes de chegar a uma escotilha.

***

## <Color id="gold">A Tela</Color>

* A grade 3 por 3 à esquerda comporta as colônias. A barra fina à direita de cada uma é sua reserva de nutriente e a barra embaixo é seu progresso.
* A grade 3 por 3 à direita comporta a saída, um slot por colônia na mesma ordem.
* A linha de baixo tem os três slots de nutriente à esquerda e os quatro slots de melhoria à direita.
* A seta no meio mostra o progresso médio. Paire nela para ver a energia chegando contra a necessária, e o que as melhorias estão fazendo.

Nove colônias precisam ser alimentadas a partir de só três slots de nutriente, então rode não mais que três nutrientes diferentes por vez. [Alimentação de Colônias](colony_feeding.md) tem os detalhes.

***

## <Color id="gold">Automação</Color>

* Toda face externa de todo bloco recebe e entrega itens: um funil no teto ou apontando para uma parede alimenta nutrientes e melhorias, funis sob o chão puxam a saída, e um cano funciona em qualquer lugar do lado de fora.
* A [Configuração de Lados](nautec:getting_started/utilities.md) define o que cada lado da estrutura faz. Use a aba à direita da tela do reator, ou a chave no modo Lados de Itens em qualquer bloco do reator. Uma configuração cobre um lado inteiro: Frente é a parede com o bloco do Biorreator Industrial nela, e Esquerda e Direita são as paredes à sua esquerda e direita olhando para aquele bloco de fora. Por exemplo, ponha o teto em Inserir e o chão em Extrair para que canos no teto nunca puxem saída e canos sob o chão nunca empurrem para dentro.

Colônias carregam e descarregam pela Porta de Placas. Uma placa entra no slot superior entre a grade de colônias e as saídas, e placas segurando uma colônia saem pelo inferior; placas vazias saem pelo slot na linha de baixo, entre os nutrientes e as melhorias. Uma Placa de Petri segurando uma colônia a carrega no primeiro slot de colônia que comporte tudo. Quando todos os slots de colônia estão cheios, uma nova placa de colônia troca em vez disso, mas apenas por uma colônia Senescente: sua colônia substitui a Senescente mais velha, e a colônia antiga sai naquela mesma placa, então nenhuma placa vazia sobra. Enquanto nenhuma colônia estiver Senescente a placa espera na porta, e uma troca também espera enquanto o slot de saída da colônia estiver cheio. Uma placa vazia tira a colônia com menos reserva de nutriente restante, então mantenha placas vazias longe da porta de um reator a menos que queira descarregá-lo. A automação alcança a porta onde quer que alcance os outros slots.

A automação só coloca itens nos slots de nutriente, melhoria e Porta de Placas e só os tira dos slots de saída e da Porta de Placas. Mantenha funis fora das escotilhas do teto: um bloco em cima de uma escotilha impede um feixe de descer nela.

Um layout simples: um baú e funil num canto do teto para nutrientes, escotilhas com feixes no resto do teto, e funis sob o chão levando ao armazenamento. Uma colônia no teto pode encher seu slot de saída em cerca de dez segundos, então dê à saída mais de um funil quando as colônias ficarem fortes.

***

## <Color id="gold">Receita</Color>

<RecipeFor id="industrial_bio_reactor"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Biorreator Industrial primeiro calcula o AP que precisa a partir de suas colônias e melhorias. Um feixe mais forte que isso acelera a produção por cima das suas Melhorias de Velocidade: a velocidade é a raiz quadrada de (feixe ÷ o que precisa).

| Feixe, como múltiplo do que precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os dois multiplicam. Um reator cuja Melhoria de Velocidade o faz rodar a ×1.5 e que recebe quatro vezes a energia necessária roda a ×3. Nutrientes são gastos por tique de trabalho, então um feixe mais forte produz mais itens do mesmo nutriente. Paire numa seta de progresso para ver a velocidade do feixe e a velocidade total com melhorias; o Jade também mostra a velocidade do feixe.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.