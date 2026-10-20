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

Segure a Ferramenta de Enxertia na mão principal e uma <ItemLink id="petri_dish"/> vazia na mão secundária, então clique com o botão direito num bloco enxertável no bioma que ele precisa. Cada tentativa custa um ponto de durabilidade e tem uma chance de colocar uma nova colônia na placa. Continue clicando até uma pegar.

<Color id="gold">Dica</Color>: enxerte numa placa vazia. Se a placa da mão secundária já segura uma colônia, a ferramenta mostra "Esta Placa de Petri já contém uma colônia" e não faz nada, sem gastar durabilidade.

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
| Podzol | qualquer floresta | Metanogênicas | 40% |
| Netherrack | o Nether | Termófilas | 40% |
| Pólipo Luminoso | Bosque bioluminescente | Cianobactérias | 50% |
| Alga Profunda | Bosque bioluminescente | Halotróficas | 30% |
| Alga Luminescente | Bosque bioluminescente | Formadoras de Algas | 30% |
| Fronde de Prismarinho | Recife de prismarinho | Fototróficas | 35% |
| <ItemLink id="budding_prismarine"/> | Recife de prismarinho, Bosque bioluminescente, Fossa abissal, Oceano Quente, Oceano Morno Profundo | Litófilas | 30% |
| Coral Abissal | Fossa abissal | Calciófilas | 30% |
| Verme Tubular Hidrotermal | Fontes hidrotermais | Sulfurófilas | 25% |

Pacotes podem mudar esta lista. A categoria Enxertia de Bactérias do JEI sempre mostra a atual, com o bioma em "Somente Em".

***

## <Color id="gold">Estação de Enxertia</Color>

<Row>
  <ItemImage id="grafting_station" scale="2"/>
</Row>

A Estação de Enxertia enxerta sem a ferramenta, e sem o bioma. Dê a ela uma <ItemLink id="petri_dish"/> vazia, um dos blocos enxertáveis da tabela acima e Água Salgada, e cada ciclo coloca uma colônia nova na placa. Não há rolagem de chance, então ela nunca desperdiça uma tentativa.

* Energia: um feixe de pelo menos 100 AP com pureza 2.8 ou maior, em qualquer face exceto a frontal. Um feixe de <ItemLink id="prismarine_crystal"/> (3.0) alimentado direto, ou por relés e junções, funciona.
* Água Salgada: 4.000 mB por colônia. O tanque comporta 16.000 mB. Canalize-a ou clique com o botão direito segurando um balde.
* Tempo: um minuto por colônia. Um feixe fraco a pausa sem perder progresso.
* Cada colônia gasta uma placa e um bloco, a menos que uma Âncora de Enxertia ou Âncora de Enxertia Avançada esteja instalada.

Clique nela com o botão direito para abri-la. Paire sobre a seta para ver o que ela está esperando, ou olhe para ela através de um <ItemLink id="prism_monocle"/>. Funis e canos podem inserir placas e blocos e puxar placas colonizadas, por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). A janela frontal se acende enquanto ela trabalha.

Todos esses valores estão em `config/nautec-common.toml`.

<RecipeFor id="grafting_station"/>

<Row>
  <ItemImage id="grafting_anchor"/>
  ### <Color id="aqua">Âncora de Enxertia</Color>
</Row>

Uma melhoria para a Estação de Enxertia. Coloque-a no slot no canto inferior esquerdo da tela da estação, e o bloco de amostra permanece após cada enxerto, então um bloco enxerta colônias enquanto você mantiver as placas e a Água Salgada chegando. Shift-clicar na âncora do seu inventário a coloca direto no slot dela. Canos não alcançam aquele slot, então a automação nunca a tira por engano.

<RecipeFor id="grafting_anchor"/>

<Row>
  <ItemImage id="advanced_grafting_anchor"/>
  ### <Color id="aqua">Âncora de Enxertia Avançada</Color>
</Row>

Uma Âncora de Enxertia melhorada com quatro Melhorias de Velocidade do Reator do [Biorreator](bio_reactor.md). Vai no mesmo slot e mantém o bloco de amostra da mesma forma, e também enxerta 200% mais rápido, então uma colônia leva 20 segundos em vez de um minuto. O problema é a energia: a estação então precisa de um feixe de 500 AP, cinco vezes os 100 de costume, ainda com pureza 2.8 ou maior. Paire sobre a seta na tela da estação para ver o que ela precisa com a âncora que você instalou.

<RecipeFor id="advanced_grafting_anchor"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Estação de Enxertia enxerta mais rápido num feixe mais forte que o necessário: a velocidade é a raiz quadrada de (feixe ÷ o que ela precisa). Ela precisa de 100 AP, ou 500 AP com uma Âncora de Enxertia Avançada, sempre com pureza 2.8 ou maior.

| Feixe, como múltiplo do que ela precisa | Velocidade |
|---|---|
| 1× | ×1 (normal) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Os dois acumulam. Uma Âncora de Enxertia Avançada já enxerta três vezes mais rápido com seus 500 AP, e um feixe de 2.000 AP dobra isso de novo, então uma colônia leva 10 segundos em vez de 60.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.

***

## <Color id="gold">Com Qual Colônia Começar</Color>

Cianobactérias, Halobactérias, Metanogênicas e Termófilas não produzem nada e não podem ser incubados. São pontos de partida: leve-os direto ao [Mutador](mutator.md) e transforme-os numa linhagem que produz algo.

As linhagens do oceano profundo estão prontas para trabalhar assim que você as tem. Halotróficas fazem alga, Formadoras de Algas erva-marinha, Fototróficas cana-de-açúcar, Litófilas pedra, Calciófilas farinha de osso e Sulfurófilas pólvora. Litófilas é a linhagem-mãe de muitas outras, e enxertá-la da Drusa de Prismarinho pula uma mutação de 15% a partir de Termófilas, então uma viagem aos [Oceanos Profundos](nautec:getting_started/deep_oceans.md) poupa muitas mutações.

Uma colônia recém-obtida não é analisada. Passe-a pelo [Analisador Bacteriano](bacterial_analyzer.md) para ver o que você conseguiu.