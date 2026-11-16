---
navigation:
  title: Catalisador de Enriquecimento Bacteriano
  icon: nautec:bacterial_enrichment_catalyst
  position: 17
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:bacterial_enrichment_catalyst
---

# <Color id="light_purple">Catalisador de Enriquecimento Bacteriano</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="bacterial_enrichment_catalyst" scale="2"/>
  Eleva a pureza de um Cristal de Prismarinho Cultivado além do 6,00 que ele pode obter, até 12.
</Column>

Um cristal obtém uma pureza entre 3,00 e 6,00 quando cresce em um [Berço de Cristal](crystal_cultivation.md). O Catalisador a eleva um pouco mais de cada vez. Ele trabalha em ciclos, e cada ciclo gasta energia de feixe de um segundo cristal e parte de uma colônia de Prismatófilas.

***

## <Color id="gold">O Esquema</Color>

Dois cristais participam. O **alvo** é aquele que você quer melhorar. A **fonte** é um segundo cristal cuja pureza define até onde o alvo pode ser elevado.

<GameScene zoom="4" background="#333333" interactive={true}>
  <ImportStructure src="bacterial_enrichment_catalyst.nbt" />
  <IsometricCamera yaw="225" pitch="30" />
  <BoxAnnotation min="0.97 0.97 0.97" max="2.03 7.03 2.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Cristal-alvo.** Um Cristal de Prismarinho Cultivado de pureza 4,0 ou mais, com seis blocos de altura.
  </BoxAnnotation>
  <BoxAnnotation min="1.97 1.97 0.97" max="3.03 8.03 2.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Cristal-fonte.** Fica na própria coluna do Catalisador, diretamente acima dele. Sua ponta inferior dispara para dentro do Catalisador.
  </BoxAnnotation>
  <BoxAnnotation min="1.97 0.97 0.97" max="3.03 2.03 2.03" color="#ffd86b" thickness="0.06" alwaysOnTop={true}>
    **Catalisador de Enriquecimento Bacteriano.** Encostado no cristal-alvo de costas para ele, diretamente sob o cristal-fonte.
  </BoxAnnotation>
  <BoxAnnotation min="0.97 -0.03 0.97" max="2.03 1.03 2.03" color="#9aa5b1" thickness="0.06" alwaysOnTop={true}>
    **Berço de Cristal.** Está aqui só porque este cristal cresceu no lugar. Um cristal que você moveu com uma chave-Inglesa não precisa de um.
  </BoxAnnotation>
  <BoxAnnotation min="2.97 3.97 0.97" max="4.03 5.03 2.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Laser.** Apontado para a lateral do cristal-fonte.
  </BoxAnnotation>
  <BoxAnnotation min="1.97 3.97 1.97" max="3.03 5.03 3.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Laser.** Apontado para a lateral do cristal-fonte.
  </BoxAnnotation>
</GameScene>

As caixas coloridas marcam onde os dois cristais ficam. Passe o mouse sobre uma caixa para ver o que ela é, e arraste a cena para girá-la.

1. Erga um Cristal de Prismarinho Cultivado com pureza 4,0 ou mais. Este é o alvo.
2. Coloque o <ItemLink id="bacterial_enrichment_catalyst"/> encostado em qualquer lateral da coluna do alvo, de costas para o cristal.
3. Erga o cristal-fonte na própria coluna do Catalisador, diretamente acima ou abaixo dele, de modo que a ponta do cristal dispare direto para dentro do topo ou da base do Catalisador. O Catalisador não aceita feixe de mais nada: nem de lasers, relés, lentes, nós nem da ponta do próprio alvo.
4. Aponte seus lasers para as laterais do cristal-fonte. Um cristal repassa toda a energia que recebe na sua própria pureza, então o que conta é a pureza da fonte, e o AP total de todos os seus lasers define a velocidade.
5. Carregue uma <ItemLink id="petri_dish"/> de Prismatófilas. Uma placa cheia carrega a colônia, e colocar uma placa vazia a retira.
6. Abra o Catalisador e defina uma pureza-alvo. Um sinal de redstone o pausa.

Apenas um Catalisador trabalha num cristal por vez. O Catalisador precisa de pelo menos **500 AP** vindos do cristal-fonte.

***

## <Color id="gold">Ciclos e Custo</Color>

O Catalisador trabalha em ciclos. Um ciclo custa 1.000.000 de AP para um cristal de pureza 6, e o custo dobra para cada ponto inteiro de pureza. Toda a potência de um feixe conta a cada tick, então dobrar o feixe reduz o tempo pela metade.

| Pureza do cristal | AP por ciclo | Colônia por ciclo | Tempo a 1.000 AP/t |
|---|---|---|---|
| 4 | 250.000 | cerca de 50 | 12,5 segundos |
| 6 | 1.000.000 | 100 | 50 segundos |
| 8 | 4.000.000 | cerca de 200 | 3 minutos e 20 segundos |
| 10 | 16.000.000 | cerca de 400 | 13 minutos |
| 12 | 64.000.000 | cerca de 800 | 53 minutos |

No fim de um ciclo, o cristal ou ganha **0,10 de pureza** ou regride **0,20**. A regressão nunca leva um cristal abaixo de 4,0. O cristal continua disparando seus feixes enquanto é enriquecido, e conserva sua pureza quando você o move com uma chave-Inglesa.

***

## <Color id="gold">Risco e Escalonamento</Color>

A chance de regressão depende de quanto a pureza do alvo está acima da da fonte:

| Alvo contra a fonte | Chance de regressão |
|---|---|
| Fonte mais pura por 1,0 ou mais | 2% |
| Iguais | 10% |
| Alvo 1,5 acima da fonte | 30% |

A 1,5 acima da fonte, o Catalisador para, então uma fonte 6,0 pode levar um cristal até 7,5. Esse cristal pode então ser a fonte do próximo, até 9,0, e assim por diante. Dois cristais também podem se revezar elevando um ao outro.

Uma fonte mais pura é mais segura e gasta menos colônia (veja A Colônia abaixo). Confira a pureza de um cristal na tooltip do item ou com um <ItemLink id="prism_monocle"/>.

***

## <Color id="gold">Pureza-Alvo e Pausa</Color>

Defina a pureza-alvo na tela do Catalisador. Quando o cristal a atinge, o Catalisador para até você aumentar o alvo. Um cristal não pode passar de 12. Um sinal de redstone pausa o Catalisador, e ele conserva o progresso e continua quando o sinal cessa.

Um cristal não pode ser enriquecido enquanto está dentro de uma [Planta de Fusão](fusion_plant.md) formada. Enriqueça-o do lado de fora, recolha-o com uma chave-Inglesa e coloque-o como o coração.

***

## <Color id="gold">A Colônia</Color>

O Catalisador funciona a base de **Prismatófilas**. Você as produz no [Mutador](nautec:aquatic_biology/mutator.md) a partir de Esmaragdófilas (a linhagem de esmeralda) com um <ItemLink id="atlantic_gold_ingot"/> como catalisador, a 5% de chance. Elas não produzem nada num Biorreator. Cultive e alimente-as na [Incubadora](nautec:aquatic_biology/incubator.md) sobre <ItemLink id="prismarine_crystal_shard"/>, e refine seus atributos no Mutador sobre um Fragmento de Cristal de Prismarinho (25% de chance base). Veja a [Árvore de Linhagens](nautec:aquatic_biology/strain_tree.md).

Cada ciclo usa colônia: 100 na pureza 6, crescendo cerca de 1,41 vez por ponto de pureza (cerca de 800 perto da pureza 12). Quando o alvo está acima da fonte, o custo sobe novamente pelo valor base a cada ponto de diferença, ficando o dobro a 1,0 acima. Uma colônia no teto de Resistência a Mutações paga metade. A colônia precisa ser pelo menos o custo de um ciclo, senão o Catalisador espera.

***

## <Color id="gold">Quando Ele Para</Color>

A linha superior da tela mostra o primeiro problema que o Catalisador encontra, nesta ordem.

| Status | O que fazer |
|---|---|
| Sem cristal | Não há nada atrás do Catalisador. Coloque um cristal cultivado encostado na traseira dele. |
| Cristal selvagem | Cristais selvagens não podem ser enriquecidos. Cultive um num Berço de Cristal. |
| Cristal em uso | Outro Catalisador já está neste cristal. Remova um deles. |
| Cristal impuro demais | O cristal está abaixo da pureza 4,0. Use um que tenha obtido 4,0 ou mais. |
| Pureza máxima | O cristal está em 12 e não pode subir mais. |
| Alvo atingido | Aumente a pureza-alvo na tela. |
| Pausado | Desligue o sinal de redstone. |
| Sem feixe-fonte | Coloque um cristal na coluna do Catalisador e aponte lasers para suas laterais. |
| Feixe fraco demais | São necessários 500 AP. Adicione energia aos lasers que alimentam o cristal-fonte. |
| Fonte fraca demais | O cristal está 1,5 ou mais acima da fonte. Use um cristal-fonte mais puro. |
| Sem colônia | Carregue uma Placa de Petri de Prismatófilas. |
| Colônia pequena demais | A colônia é menor que o custo de um ciclo. Cultive-a de novo, ou use uma fonte mais pura para reduzir o custo. |
| Enriquecendo | Nada, ele está funcionando. O número é o progresso do ciclo atual. |

***

## <Color id="gold">O que a Pureza Oferece</Color>

* [Cultivador de Cristais](nautec:laser_chemistry/crystal_cultivator.md): um nível de Fortuna por ponto de pureza até 6, depois Fortuna VIII na pureza 9 e Fortuna IX em 12.
* [Fundição a Laser de Purificação](laser_purification_smelter.md): uma fundição mais barata.
* [Câmara de Ressonância](resonance_chamber.md): um teto mais alto.
* [Planta de Fusão](fusion_plant.md): mais FE por AP dos feixes injetores acima da pureza 3,0, e um teto de saída mais alto a partir da pureza do próprio coração.

***

## <Color id="gold">Fabricação</Color>

<RecipeFor id="bacterial_enrichment_catalyst"/>

Os números de AP, pureza, risco e colônia são as configurações `enrichment` em `config/nautec-common.toml`.
