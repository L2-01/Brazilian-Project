---
navigation:
  title: Biorreator
  icon: nautec:bio_reactor
  position: 8
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:bio_reactor
  - nautec:bacterial_containment_shield
---

# <Color id="light_purple">Biorreator</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="bio_reactor" scale="2"/>
  O Biorreator põe até três colônias para trabalhar produzindo itens.
</Column>

Cada colônia produz o item que sua linhagem produz, um de cada vez, enquanto o reator tiver energia. Produzir itens não gasta a colônia, e uma colônia mantida alimentada pelos slots de nutriente do reator também não envelhece. O [Biorreator Industrial](industrial_bio_reactor.md) é a versão maior para nove colônias.

***

## <Color id="gold">Construindo-o</Color>

Uma estrutura de 3 por 3 por 2:

* Camada de baixo: Pilares de Prismarinho Escuro nos cantos, Escudos de Contenção de Bactérias nas bordas, Prismarinho Polido no meio.
* Camada de cima: Pilares de Prismarinho Escuro nos cantos, Escudos de Contenção de Bactérias nas bordas, o Biorreator no meio.

<GameScene zoom="4" background="#333333" interactive={true}>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="2" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="1"/>
  <Block id="nautec:bio_reactor" x="1" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="1" z="1"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="2"/>
  <Block id="nautec:dark_prismarine_pillar" x="2" y="1" z="2"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="0" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="2" y="0" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="0" z="1"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="0" z="2"/>
  <Block id="nautec:dark_prismarine_pillar" x="2" y="0" z="2"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

Clique com o botão direito no Biorreator segurando uma <ItemLink id="aquarine_steel_wrench"/> no modo Girar, sem agachar, para formá-lo. Se um bloco estiver errado, o chat nomeia sua posição, o que está lá e o que deveria estar. Quebrar qualquer bloco de um reator formado o desfaz.

Formado, clique no Biorreator com o botão direito para abri-lo.

***

## <Color id="gold">A Tela</Color>

* Os três slots de colônia aceitam colônias de Placas de Petri, como descrito em [Introdução às Bactérias](bacteria_introduction.md).
* A barra fina ao lado de cada colônia é sua reserva de nutriente. Paire nela para ver quantos segundos de alimento restam.
* Cada colônia tem seu próprio slot de saída à direita.
* Os dois slots na extrema esquerda são slots de nutriente. [Alimentação de Colônias](colony_feeding.md) explica o que vai neles.
* Os dois slots na extrema direita aceitam [Melhorias de Reator](reactor_upgrades.md), uma por slot.
* Paire numa seta de progresso para ver a energia chegando contra a energia necessária.
* Um "!" amarelo ou vermelho numa colônia significa que ela precisa de atenção: seu nutriente não está nos slots de nutriente, está envelhecendo ou está Senescente. Paire na colônia para ver qual, e o que ela come.

***

## <Color id="gold">Energia e Escotilhas</Color>

O reator recebe energia por escotilhas. Clique com o botão direito numa das quatro Escudos de Contenção de Bactérias da camada superior com a chave para transformá-la numa escotilha (clique de novo para revertê-la), então aponte um feixe para baixo na escotilha por cima. Isso não funciona no modo Lados de Itens, que em vez disso define os lados do reator. Você pode abrir mais de uma escotilha, e suas energias somam.

| Colônias | AP necessário |
|---|---|
| 1 | 20 |
| 2 | 35 |
| 3 | 50 |

São 5 AP pelo reator mais 15 AP por slot de colônia ocupado, ambos configuráveis. Melhorias multiplicam o total, veja [Melhorias de Reator](reactor_upgrades.md). A energia é um limiar, não um custo. Abaixo dele nada roda e todo progresso zera, e um feixe mais forte acelera o reator (veja Feixes Mais Fortes abaixo).

Um <ItemLink id="aquatic_catalyst"/> dá 12 AP com Fragmentos de Prismarinho, então dois catalisadores em duas escotilhas rodam uma colônia e três rodam duas. Para três colônias, encoste <ItemLink id="budding_prismarine"/> nos catalisadores para potencializá-los, adicione uma quarta escotilha, ou combine feixes numa <ItemLink id="laser_junction"/> antes que cheguem a uma escotilha. Uma [Célula de Combustível Bacteriana](bacterial_fuel_cell.md) dá até 48 AP de um único feixe.

***

## <Color id="gold">Velocidade de Produção</Color>

Velocidade é Taxa de Produção vezes um fator de tamanho que vai de 0.5 para uma colônia mínima a 1 no limite de tamanho, vezes o Rendimento de Linhagem da linhagem. Para uma linhagem com Rendimento de Linhagem 1, como Litófilas:

| Colônia | Tempo por item |
|---|---|
| Taxa de Produção 0.3, tamanho 400 | cerca de 2 segundos |
| Taxa de Produção 1, tamanho 20.000 | cerca de 0.4 segundos |
| Taxa de Produção 2, tamanho 40.000 | cerca de 0.15 segundos |

Linhagens valiosas são mais lentas: uma colônia de diamante leva pouco mais de oito vezes mais. [Taxas de Produção](production_rates.md) tem a fórmula completa e o Rendimento de Linhagem de cada linhagem.

Cada colônia tem seu próprio slot de saída. Quando um slot enche, aquela colônia pausa até haver espaço: não produz nada, não come nada, não envelhece e não encolhe.

***

## <Color id="gold">Automação</Color>

* Toda face externa do reator formado recebe e entrega itens: um funil sob a base puxa a saída, um funil em cima do bloco do Biorreator alimenta nutrientes, e um cano funciona em qualquer lado.
* A [Configuração de Lados](nautec:getting_started/utilities.md) define o que cada lado da estrutura faz. Use a aba à direita da tela do reator, ou a chave no modo Lados de Itens em qualquer bloco do reator. Uma configuração cobre um lado inteiro, então Base em Extrair deixa canos só extraírem da base inteira. O reator trata seu lado norte como frente.
* Carregue e descarregue colônias pela Porta de Placas. Uma placa entra no slot no canto inferior esquerdo e placas segurando uma colônia saem pelo slot ao lado; placas vazias saem pelo slot sob as melhorias. Uma Placa de Petri segurando uma colônia a carrega no primeiro slot de colônia que comporte tudo. Quando todos os slots de colônia estão cheios, uma nova placa de colônia troca em vez disso, mas apenas por uma colônia Senescente: sua colônia substitui a Senescente mais velha, e a colônia antiga sai naquela mesma placa, então nenhuma placa vazia sobra. Enquanto nenhuma colônia estiver Senescente a placa espera na porta, e uma troca também espera enquanto o slot de saída da colônia estiver cheio. Uma placa vazia tira a colônia com menos reserva de nutriente restante, então mantenha placas vazias longe da porta de um reator a menos que queira descarregá-lo. A automação alcança a porta onde quer que alcance os outros slots.

A automação só coloca itens nos slots de nutriente, melhoria e Porta de Placas e só os tira dos slots de saída e da Porta de Placas. Com nutrientes entrando e saída saindo, o reator roda indefinidamente.

***

## <Color id="gold">Envelhecimento e Decaimento</Color>

Uma colônia trabalhando gasta sua reserva de nutriente em vez de envelhecer. Quando a reserva acaba, o reator lhe dá o próximo nutriente correspondente de um slot de nutriente. Só quando não há nutriente correspondente a colônia envelhece, um tique para cada tique trabalhado, e sua barra lê "Sem nutrientes: a colônia está envelhecendo".

Quando sua idade passa sua Longevidade a colônia fica Senescente. Uma colônia senescente faminta perde 2% do seu tamanho (no mínimo 1) por segundo trabalhado, então cerca de metade dela se foi após 35 segundos. A taxa é configurável.

Alimentar para a perda na hora, mas não torna a colônia jovem de novo: ela fica Senescente e volta a encolher assim que os nutrientes acabam. Um ciclo completo de [Incubadora](incubator.md) zera sua idade.

***

## <Color id="gold">Receitas</Color>

<Recipe id="nautec:bio_reactor"/>

<RecipesFor id="bacterial_containment_shield"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

Um Biorreator primeiro calcula o AP que precisa a partir de suas colônias e melhorias. Um feixe mais forte que isso acelera a produção por cima das suas Melhorias de Velocidade: a velocidade é a raiz quadrada de (feixe ÷ o que precisa).

| Feixe, como múltiplo do que precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os dois multiplicam. Um reator cuja Melhoria de Velocidade o faz rodar a ×1.5 e que recebe quatro vezes a energia necessária roda a ×3. Nutrientes são gastos por tique de trabalho, então um feixe mais forte produz mais itens do mesmo nutriente. Paire numa seta de progresso para ver a velocidade do feixe e a velocidade total com melhorias; o Jade também mostra a velocidade do feixe.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.

<RecipeFor id="polished_prismarine"/>

<RecipeFor id="dark_prismarine_pillar"/>