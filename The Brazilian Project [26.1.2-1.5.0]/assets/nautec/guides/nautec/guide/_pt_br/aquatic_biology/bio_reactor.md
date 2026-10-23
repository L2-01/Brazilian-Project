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
  O Biorreator coloca até três colônias para trabalhar produzindo itens.
</Column>

Cada colônia produz o item de sua linhagem, um de cada vez, enquanto o reator tiver energia. Produzir itens não consome a colônia, e uma colônia mantida alimentada pelos espaços de nutrientes do reator tampouco envelhece. O [Biorreator Industrial](industrial_bio_reactor.md) é a versão maior para nove colônias.

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

Clique direito no Biorreator com uma <ItemLink id="aquarine_steel_wrench"/> no modo Girar, sem agachar, para formá-lo. Se um bloco estiver errado, o chat indica sua posição, o que há nele e o que deveria haver. Quebrar qualquer bloco de um reator formado o desfaz.

Uma vez formado, clique direito no Biorreator para abri-lo.

***

## <Color id="gold">A Tela</Color>

* Os três espaços de colônias recebem colônias de Placas de Petri, como descrito em [Introdução às Bactérias](bacteria_introduction.md).
* A barra fina ao lado de cada colônia é seu buffer de nutrientes. Passe o mouse sobre ela para ver quantos segundos de alimento restam.
* Cada colônia tem seu próprio espaço de saída à direita.
* Os dois espaços na extrema esquerda são espaços de nutrientes. [Alimentação de Colônias](colony_feeding.md) explica o que vai neles.
* Os dois espaços na extrema direita recebem [Melhorias do Reator](reactor_upgrades.md), uma por espaço.
* Passe o mouse sobre uma seta de progresso para ver a energia chegando contra a necessária.
* Um "!" amarelo ou vermelho numa colônia significa que ela precisa de atenção: seu nutriente não está nos espaços de nutrientes, ela está envelhecendo ou é Senescente. Passe o mouse sobre a colônia para ver qual, e o que ela come.

***

## <Color id="gold">Energia e Escotilhas</Color>

O reator recebe energia por escotilhas. Clique direito num dos quatro Escudos de Contenção de Bactérias da camada de cima com a chave para transformá-lo numa escotilha (clique de novo para reverter), depois aponte um feixe para baixo na escotilha por cima. Isso não funciona no modo Lados de Itens, que define os lados do reator. Você pode abrir mais de uma escotilha, e suas energias se somam.

| Colônias | AP necessários |
|---|---|
| 1 | 20 |
| 2 | 35 |
| 3 | 50 |

Isso são 5 AP pelo reator mais 15 AP por espaço de colônia preenchido, ambos configuráveis. Melhorias multiplicam o total, veja [Melhorias do Reator](reactor_upgrades.md). A potência é um limiar, não um custo. Abaixo dela nada funciona e todo progresso zera, e um feixe mais forte acelera o reator (veja Feixes Mais Fortes abaixo).

Um <ItemLink id="aquatic_catalyst"/> dá 12 AP com Fragmentos de Prismarinho, então dois catalisadores em duas escotilhas operam uma colônia e três operam duas. Para três colônias, encoste <ItemLink id="budding_prismarine"/> nos catalisadores para potencializá-los, adicione uma quarta escotilha, ou combine feixes numa <ItemLink id="laser_junction"/> antes de chegarem a uma escotilha. Uma [Célula de Combustível Bacteriana](bacterial_fuel_cell.md) dá até 48 AP de um único feixe.

***

## <Color id="gold">Velocidade de Produção</Color>

A velocidade é a Taxa de Produção vezes um fator de tamanho que vai de 0.5 para uma colônia minúscula a 1 no teto de tamanho, vezes o Rendimento de Linhagem. Para uma linhagem com Rendimento de Linhagem 1, como Litófilos:

| Colônia | Tempo por item |
|---|---|
| Taxa de Produção 0.3, tamanho 400 | cerca de 2 segundos |
| Taxa de Produção 1, tamanho 20.000 | cerca de 0.4 segundos |
| Taxa de Produção 2, tamanho 40.000 | cerca de 0.15 segundos |

Linhagens valiosas são mais lentas: uma colônia de diamante leva pouco mais de oito vezes mais tempo. [Taxas de Produção](production_rates.md) tem a fórmula completa e o Rendimento de cada linhagem.

Cada colônia tem seu próprio espaço de saída. Quando um espaço está cheio, aquela colônia pausa até haver espaço: ela não produz nada, não come nada, não envelhece e não encolhe.

***

## <Color id="gold">Automação</Color>

* Toda face externa do reator formado recebe e entrega itens: um funil sob a base puxa a produção, um funil sobre o bloco do Biorreator alimenta nutrientes, e um tubo funciona em qualquer lado.
* A [Configuração de Lados](nautec:getting_started/utilities.md) define o que cada lado da estrutura faz. Use a aba à direita da tela do reator, ou a chave no modo Lados de Itens em qualquer bloco do reator. Uma configuração cobre um lado inteiro, então Baixo definido como Extrair deixa tubos apenas extrair de toda a base. O reator trata seu lado norte como frente.
* Carregue e descarregue colônias pela Porta de Placas. Uma placa entra no espaço no canto inferior esquerdo e placas com colônia saem do espaço ao lado; placas vazias saem do espaço sob as melhorias. Uma Placa de Petri com colônia a carrega no primeiro espaço de colônia que a comporte inteira. Quando todos os espaços de colônia estão cheios, uma placa de colônia nova troca em vez disso, mas só por uma colônia Senescente: sua colônia substitui a Senescente mais velha, e a colônia antiga sai naquela mesma placa, então nenhuma placa vazia sobra. Enquanto nenhuma colônia for Senescente a placa espera na porta, e uma troca também espera enquanto o espaço de saída da colônia estiver cheio. Uma placa vazia retira a colônia Senescente mais velha e espera na porta enquanto nenhuma for Senescente, e a porta recusa placas com colônia Senescente, então um único baú pode coletar da porta e alimentá-la ao mesmo tempo. Para retirar uma colônia que não é Senescente, clique no espaço dela com uma placa vazia. A automação alcança a porta onde quer que alcance os outros espaços.

A automação só insere itens nos espaços de nutrientes, melhorias e Porta de Placas e só os retira dos espaços de saída e da Porta de Placas. Com nutrientes entrando e produção saindo, o reator roda indefinidamente.

***

## <Color id="gold">Envelhecimento e Decadência</Color>

Uma colônia em trabalho gasta seu buffer de nutrientes em vez de envelhecer. Quando o buffer acaba, o reator a alimenta com o próximo nutriente correspondente de um espaço de nutrientes. Só quando não há nutriente correspondente a colônia envelhece, um tique para cada tique de trabalho, e sua barra lê "Sem nutrientes: a colônia está envelhecendo".

Quando sua idade passa sua Vida Útil a colônia vira Senescente. Uma colônia senescente faminta perde 2% do seu tamanho (no mínimo 1) a cada segundo que trabalha, então cerca de metade some após 35 segundos. A taxa é configurável.

Alimentar para a perda na hora, mas não rejuvenesce a colônia: ela continua Senescente e volta a encolher assim que os nutrientes acabam. Um ciclo completo de [Incubadora](incubator.md) zera sua idade.

***

## <Color id="gold">Receitas</Color>

<Recipe id="nautec:bio_reactor"/>

<RecipesFor id="bacterial_containment_shield"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

Um Biorreator primeiro calcula os AP de que precisa a partir de suas colônias e melhorias. Um feixe mais forte que isso acelera a produção sobre suas Melhorias de Velocidade: a velocidade é a raiz quadrada de (feixe ÷ o que ele precisa).

| Feixe, em múltiplos do que precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os dois se multiplicam. Um reator cuja Melhoria de Velocidade o faz rodar a ×1.5 e que recebe quatro vezes a potência necessária roda a ×3. Nutrientes são gastos por tique de trabalho, então um feixe mais forte produz mais itens com o mesmo nutriente. Passe o mouse sobre uma seta de progresso para ver a velocidade do feixe e a velocidade total com melhorias; o Jade também mostra a velocidade do feixe.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.

<RecipeFor id="polished_prismarine"/>

<RecipeFor id="dark_prismarine_pillar"/>
