---
navigation:
  title: Progressão de Bactérias
  icon: nautec:bio_reactor
  position: 1
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Progressão de Bactérias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="bio_reactor" scale="2"/>
  Uma rota da sua primeira colônia a uma parede de reatores, e a energia que cada passo precisa.
</Column>

Uma colônia compensa quando fica num [Biorreator](bio_reactor.md) energizado com seu nutriente ao lado: ela então produz itens enquanto a energia durar, sem envelhecer. Todo o resto destas páginas é sobre conseguir uma boa colônia até lá e manter mais delas rodando.

Esta página lista o que construir em ordem, o que cada máquina precisa antes que você possa fabricá-la, e como energizá-la em cada etapa. A [Árvore de Linhagens](strain_tree.md) mostra quais mutações levam a quais linhagens.

***

## <Color id="gold">Antes de Começar</Color>

As máquinas de biologia precisam de três coisas do resto do mod:

* **Água Salgada.** O [Mutador](mutator.md) é fabricado com um balde de Soro Eletrolítico de Algas, que o [Misturador](nautec:laser_chemistry/mixer.md) faz a partir de Água Salgada. Um [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) é a fonte constante.
* **Um feixe de pureza 1.5.** A Bobina de Canalização de Laser dentro da Incubadora, do Biorreator e da Célula de Combustível é feita por [Transformação de Itens](nautec:getting_started/item_transformation.md) com pureza 1.5. Um <ItemLink id="aquatic_catalyst"/> queimando <ItemLink id="prismarine_crystal_shard"/> dá 1.2, e cada <ItemLink id="budding_prismarine"/> encostada nele adiciona 0.1, então três delas chegam a 1.5.
* **Aço Aquarine**, para o Analisador, os escudos e as lentes.

***

## <Color id="gold">Energia num Relance</Color>

Todo número aqui é um mínimo. Abaixo dele uma máquina espera, e acima dele a maioria roda mais rápido ([Feixes Mais Fortes](nautec:getting_started/stronger_beams.md)).

| Máquina | Precisa | Feixe entra por |
|---|---|---|
| [Analisador Bacteriano](bacterial_analyzer.md) | 5 AP | a face de baixo |
| [Mutador](mutator.md) | 10 AP | a face de cima ou de baixo |
| [Incubadora](incubator.md) | 20 AP | a face de cima ou de baixo, e as duas somam |
| [Biorreator](bio_reactor.md) | 20 AP para 1 colônia, 50 AP para 3 | escotilhas na sua camada superior |
| [Analisador Bacteriano Avançado](bacterial_analyzer.md) | 40 AP com pureza 2.1 | qualquer face menos a frontal |
| [Replicador de Colônias](colony_replicator.md) | 80 AP com pureza 2.0 | qualquer face menos a frontal |
| [Estação de Enxertia](bacteria_grafting.md) | 100 AP com pureza 2.8 | qualquer face menos a frontal |
| [Biorreator Industrial](industrial_bio_reactor.md) | 150 AP para 1 colônia, 550 AP para 9 | escotilhas do teto |

[Melhorias de Reator](reactor_upgrades.md) multiplicam o número de um reator.

Um Catalisador Aquático com Fragmentos de Prismarinho dá 12 AP e queima dois fragmentos por minuto. Cada Drusa de Prismarinho encostada nele adiciona 25%, então um catalisador com uma dá 15 AP. Isso cobre toda máquina inicial: um Biorreator roda uma colônia com dois catalisadores, duas colônias com três, e as três com quatro catalisadores com uma Drusa de Prismarinho cada. Uma fileira de catalisadores come muitos fragmentos, então passar o reator para um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) cedo poupa muito prismarinho.

***

## <Color id="gold">Etapa 1: Uma Primeira Colônia</Color>

**Construa:** Placas de Petri, uma Ferramenta de Enxertia, um Analisador Bacteriano e um catalisador embaixo dele.

Pegue uma pilha de placas vazias e enxerte. Os melhores primeiros enxertos:

* **Litófilas** de <ItemLink id="budding_prismarine"/> num Oceano Quente, Oceano Morno Profundo ou nos biomas de oceano profundo (30%). Toda linhagem de metal e gema descende dela, e enxertá-la pula uma mutação.
* **Halobactérias** de Areia em qualquer praia (40%). Alga no Mutador a transforma em Halotróficas com 75%, a primeira mutação mais fácil, e Halotróficas levam a Lipófilas, que fazem os lipídios para o petróleo do [Dínamo de Combustão](nautec:getting_started/combustion_dynamo.md).
* As linhagens do oceano profundo estão prontas para trabalhar assim que você as tem: Halotróficas (alga), Formadoras de Algas (erva-marinha), Fototróficas (cana-de-açúcar), Calciófilas (farinha de osso) e Sulfurófilas (pólvora). Veja [Enxertia de Bactérias](bacteria_grafting.md) para onde.

Cianobactérias, Halobactérias, Metanogênicas e Termófilas não produzem nada. Só existem para serem mutados.

Analise cada colônia para ver seus stats. Você não é obrigado: toda máquina funciona com colônias não analisadas também. A análise diz qual manter.

***

## <Color id="gold">Etapa 2: Uma Linha Funcionando</Color>

**Construa, nesta ordem:** o Mutador, depois o Biorreator, depois a Incubadora.

**1. Mute para a linhagem que você quer.** Ponha uma colônia pequena e fresca e o catalisador no Mutador. Não a cultive antes: uma colônia maior muta um pouco menos, e a nova colônia começa no tamanho próprio, qualquer que fosse o da mãe. Ponha um Frasco de Soro Eletrolítico de Algas (EAS) no slot de reforço sempre que puder. Ele triplica a chance e impede que falhas encolham a colônia, e só é gasto num sucesso. A maioria dos passos iniciais é 15%: cerca de 7 tentativas sem frasco e 2 ou 3 com um.

**2. Ponha-a para trabalhar.** Carregue a colônia no Biorreator e ponha seu nutriente num slot de nutriente. A categoria Alimentação de Colônias do JEI, ou pairar sobre o slot de nutriente vazio, mostra o que ela come. Uma colônia alimentada nunca envelhece, então nunca precisa sair. Muitas linhagens de metal comem o item que produzem, então um reator pode se alimentar do próprio produto.

**3. Cultive-a, se quiser.** A Incubadora dobra a velocidade de uma colônia no máximo: uma colônia no limite de tamanho trabalha duas vezes mais rápido que uma mínima. Vale construí-la, mas uma colônia fresca num reator alimentado já está produzindo itens, então pode esperar a linha rodar. Sua outra função é reviver uma colônia que ficou Senescente.

Uma colônia fresca é lenta mas útil: uma nova colônia de Ferrófilas faz cerca de 24 lingotes de ferro por minuto e come uma lingote de ferro por minuto.

**Energizando esta etapa:**

* Analisador e Mutador: um catalisador cada.
* Incubadora: um catalisador acima e um abaixo.
* Biorreator: um catalisador por escotilha, dois para uma colônia e três para duas. Três colônias precisam de 50 AP: quatro catalisadores com uma Drusa de Prismarinho cada, ou uma [Junção de Laser](nautec:laser_chemistry/laser_manipulation.md) fundindo vários catalisadores numa escotilha.

***

## <Color id="gold">Etapa 3: Escalando</Color>

**Mude para energia FE.** Um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) transforma 10 FE em 1 AP e envia até 150 AP por tique. Ele dispara por todo lado que tem um receptor alinhado e divide o AP entre eles, então um conversor entre um Mutador e uma Incubadora alimenta os dois. Boas fontes, na ordem em que você as alcança:

| Gerador | FE por tique | AP através de um conversor |
|---|---|---|
| Rotor de Marés | 40 a 80 | 4 a 8 cada |
| Dínamo de Combustão com petróleo de Lipófilas | 320 | 32 |
| Captador Hidrotermal | 350 a 1.250 | 35 a 125 |

Veja [Geradores Oceânicos](nautec:getting_started/ocean_generators.md).

**Apure stats melhores.** Os stats de uma colônia só mudam pelo Mutador. Para melhorar uma colônia sem mudar sua linhagem, use o bloco de armazenamento do item que ela produz como catalisador (um Bloco de Ferro para Ferrófilas). Isso a apura: 25% de chance base, mesma linhagem, stats levemente deslocados. Guarde os melhores resultados e apure-os de novo. Apure Taxa de Produção primeiro para colônias de reator. [Stats de Bactérias](bacteria_stats.md) explica cada stat.

**Melhore o reator.** [Melhorias de Reator](reactor_upgrades.md) são feitas de Chips Aquáticos, Revestimento de Aço Profundo, Fragmentos Ressonantes e Cristais de Prismarinho Impecáveis. Para produção por AP, uma Melhoria de Produção vence uma de Velocidade.

**Use colônias velhas para energia.** Uma [Célula de Combustível Bacteriana](bacterial_fuel_cell.md) queima qualquer colônia, senescente ou não, num feixe de até 48 AP. Uma colônia com alta Resistência à Mutação dá um feixe puro: 0.8 de resistência dá pureza 2.0.

**Mantenha colônias organizadas** no [Armazenamento de Placas](dish_storage.md), que nunca funde nem mistura placas.

**Alimente o Mutador com um feixe mais forte.** 40 AP lhe dão o dobro de tentativas por minuto que 10 AP.

***

## <Color id="gold">Etapa 4: Fim de Jogo</Color>

Um feixe de [Cristal de Prismarinho](nautec:getting_started/laser_power.md) (pureza 3.0) destrava as máquinas de biologia de alta pureza:

* **[Estação de Enxertia](bacteria_grafting.md):** enxerta sem a ferramenta nem o bioma, cada ciclo um sucesso garantido. Com uma Âncora de Enxertia instalada, um bloco enxerta para sempre. É de onde vêm as colônias de forragem.
* **[Replicador de Colônias](colony_replicator.md):** copia sua melhor colônia usando colônias da mesma linhagem, ou o item que ela produz, como biomassa. Apure uma ótima colônia, depois encha um reator de cópias. Apure Resistência à Mutação primeiro se quiser cópias exatas.
* **[Analisador Bacteriano Avançado](bacterial_analyzer.md):** nove placas de uma vez.
* **[Biorreator Industrial](industrial_bio_reactor.md):** nove colônias e quatro slots de melhoria. Energize-o com vários Conversores de Energia nas escotilhas do teto.

Cada uma dessas máquinas tem uma Porta de Placas, então canos podem carregar placas pela linha inteira: Estação de Enxeteria para Analisador para Replicador para reator. Quando um reator está cheio, uma nova colônia chegando à sua porta toma o lugar da sua colônia Senescente mais velha, que sai de volta na mesma placa.

***

## <Color id="gold">Erros Comuns</Color>

* **Um reator abaixo da energia.** Nada roda e todo progresso zera. Paire sobre a seta de progresso para ver a energia chegando contra a necessária.
* **Um "!" numa colônia do reator.** Seu nutriente está faltando ou ela ficou Senescente. Paire nela para ver qual.
* **Sem nutriente no reator.** Uma colônia fresca tem entre 45 segundos e dois minutos de Longevidade, depois fica Senescente e começa a encolher. Uma pilha do seu nutriente evita isso.
* **Mais tipos de nutriente que slots de nutriente.** Um Biorreator alimenta no máximo dois nutrientes diferentes e o Biorreator Industrial três. Encha um reator com linhagens que os compartilhem.
* **Um slot de saída cheio.** Aquela colônia pausa até haver espaço, então canalize a saída para fora.
* **Cultivar uma colônia antes de mutá-la.** Só reduz a chance e dá às falhas mais para comer.
* **Uma linhagem base num reator.** Cianobactérias, Halobactérias, Metanogênicas e Termófilas não produzem nada.
* **Placas vazias na Porta de Placas de um reator.** Uma placa vazia tira uma colônia.