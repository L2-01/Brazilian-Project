---
navigation:
  title: Enxertia de Bactérias
  icon: nautec:grafting_tool
  position: 3
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:grafting_tool
  - nautec:grafting_station
  - nautec:grafting_anchor
  - nautec:advanced_grafting_anchor
---

# <Color id="light_purple">Enxertia de Bactérias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="grafting_tool" scale="2"/>
  A Ferramenta de Enxertia raspa uma primeira colônia de um bloco para uma Placa de Petri.
</Column>

Segure a Ferramenta de Enxertia na mão principal e uma <ItemLink id="petri_dish"/> vazia na mão secundária, depois clique direito num bloco enxertável no bioma que ele exige. Cada tentativa custa um ponto de durabilidade e tem uma chance de colocar uma nova colônia na placa. Continue clicando até uma pegar.

<Color id="gold">Dica</Color>: enxerte numa placa vazia. Se a placa da mão secundária já tiver uma colônia, a ferramenta mostra "Esta Placa de Petri já contém uma colônia" e não faz nada, sem gastar durabilidade.

***

## <Color id="gold">Ferramenta de Enxertia</Color>

<RecipeFor id="grafting_tool"/>

A ferramenta tem 80 de durabilidade.

***

## <Color id="gold">Onde Enxertar</Color>

| Bloco | Bioma | Linhagem | Chance |
|---|---|---|---|
| Pedra | qualquer oceano | Cianobactérias | 40% |
| Areia | qualquer praia | Halobactérias | 40% |
| Podzol | qualquer floresta | Metanógenos | 40% |
| Netherrack | o Nether | Termófilos | 40% |
| Pólipo Luminoso | Bosque bioluminescente | Cianobactérias | 50% |
| Alga Profunda | Bosque bioluminescente | Halótrofos | 30% |
| Alga Luminescente | Bosque bioluminescente | Algaformadores | 30% |
| Fronde de Prismarinho | Recife de prismarinho | Fotótrofos | 35% |
| <ItemLink id="budding_prismarine"/> | Recife de prismarinho, Bosque bioluminescente, Fossa abissal, Oceano Quente, Oceano Morno Profundo | Litófilos | 30% |
| Coral Abissal | Fossa abissal | Calciófilos | 30% |
| Verme Tubular Hidrotermal | Fontes hidrotermais | Sulfurófilos | 25% |

Packs podem mudar esta lista. A categoria Enxertia de Bactérias do JEI sempre mostra a atual, com o bioma em "Somente Em".

***

## <Color id="gold">Estação de Enxertia</Color>

<Row>
  <ItemImage id="grafting_station" scale="2"/>
</Row>

A Estação de Enxertia enxerta sem a ferramenta, e sem o bioma. Dê a ela uma <ItemLink id="petri_dish"/> vazia, um dos blocos enxertáveis da tabela acima e Água Salgada, e cada ciclo coloca uma colônia nova na placa. Não há sorteio de chance, então ela nunca desperdiça uma tentativa.

* Energia: um feixe de pelo menos 100 AP a pureza 2.8 ou maior, em qualquer face exceto a frente. Um feixe de <ItemLink id="prismarine_crystal"/> (3.0) alimentado direto, ou por relés e junções, funciona.
* Água Salgada: 4.000 mB por colônia. O tanque comporta 16.000 mB. Tubule-a ou clique direito com um balde.
* Tempo: um minuto por colônia. Um feixe fraco a pausa sem perder progresso.
* Cada colônia consome uma placa e um bloco, a menos que uma Âncora de Enxertia ou Âncora de Enxertia Avançada esteja instalada.

Clique direito para abri-la. Passe o mouse sobre a seta para ver do que ela está esperando, ou olhe-a através de um <ItemLink id="prism_monocle"/>. Funis e tubos podem inserir placas e blocos e puxar placas colonizadas, por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). A janela frontal acende enquanto ela trabalha.

Todos esses valores estão em `config/nautec-common.toml`.

<RecipeFor id="grafting_station"/>

<Row>
  <ItemImage id="grafting_anchor"/>
  ### <Color id="aqua">Âncora de Enxertia</Color>
</Row>

Uma melhoria para a Estação de Enxertia. Coloque-a no espaço no canto inferior esquerdo da tela da estação, e o bloco de amostra permanece após cada enxerto, então um único bloco enxerta colônias enquanto você mantiver as placas e a Água Salgada chegando. Shift+clique na âncora a partir do seu inventário a coloca direto no espaço. Tubos não alcançam esse espaço, então a automação nunca a tira por engano.

<RecipeFor id="grafting_anchor"/>

<Row>
  <ItemImage id="advanced_grafting_anchor"/>
  ### <Color id="aqua">Âncora de Enxertia Avançada</Color>
</Row>

Uma Âncora de Enxertia aprimorada com quatro Melhorias de Velocidade do Reator do [Biorreator](bio_reactor.md). Ela vai no mesmo espaço e mantém o bloco de amostra da mesma forma, e ainda enxerta 200% mais rápido, então uma colônia leva 20 segundos em vez de um minuto. O porém é a energia: a estação então precisa de um feixe de 500 AP, cinco vezes os 100 usuais, ainda a pureza 2.8 ou maior. Passe o mouse sobre a seta na tela da estação para ver o que ela precisa com a âncora que você instalou.

<RecipeFor id="advanced_grafting_anchor"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Estação de Enxertia enxerta mais rápido num feixe mais forte que o necessário: a velocidade é a raiz quadrada de (feixe ÷ o que ela precisa). Ela precisa de 100 AP, ou 500 AP com uma Âncora de Enxertia Avançada, sempre a pureza 2.8 ou maior.

| Feixe, em múltiplos do que ela precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os dois se acumulam. Uma Âncora de Enxertia Avançada já enxerta três vezes mais rápido com seus 500 AP, e um feixe de 2.000 AP dobra isso de novo, então uma colônia leva 10 segundos em vez de 60.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.

***

## <Color id="gold">Com Qual Colônia Começar</Color>

Cianobactérias, Halobactérias, Metanógenos e Termófilos não produzem nada e não podem ser incubadas. São pontos de partida: leve-as direto ao [Mutador](mutator.md) e transforme-as numa linhagem que produza algo.

As linhagens do oceano profundo estão prontas para trabalhar assim que você as tem. Halótrofos fazem alga, Algaformadores erva marinha, Fotótrofos cana-de-açúcar, Litófilos pedra, Calciófilos farinha de osso e Sulfurófilos pólvora. Litófilos é a mãe de muitas outras linhagens, e enxertá-la de Drusa de Prismarinho pula uma mutação de 15% a partir de Termófilos, então uma viagem aos [Oceanos Profundos](nautec:getting_started/deep_oceans.md) economiza muita mutação.

Uma colônia nova vem não analisada. Passe-a pelo [Analisador Bacteriano](bacterial_analyzer.md) para ver o que você conseguiu.
