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
  Um caminho da sua primeira colônia a uma parede de reatores, e a energia que cada passo exige.
</Column>

Uma colônia vale a pena quando está num [Biorreator](bio_reactor.md) energizado com seu nutriente ao lado: ela então produz itens enquanto a energia durar, sem envelhecer. Todo o resto destas páginas trata de chegar com uma boa colônia até lá e manter mais delas rodando.

Esta página lista o que construir em ordem, do que cada máquina precisa antes de você poder fabricá-la e como energizá-la em cada estágio. A [Árvore de Linhagens](strain_tree.md) mostra quais mutações levam a quais linhagens.

***

## <Color id="gold">Antes de Começar</Color>

As máquinas de biologia precisam de três coisas do resto do mod:

* **Água Salgada.** O [Mutador](mutator.md) é fabricado com um balde de Soro Eletrolítico de Algas, que o [Misturador](nautec:laser_chemistry/mixer.md) faz a partir de Água Salgada. Um [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) é a fonte constante.
* **Um feixe de pureza 1.5.** A Bobina de Canalização de Laser dentro da Incubadora, do Biorreator e da Célula de Combustível é feita por [Transformação de Itens](nautec:getting_started/item_transformation.md) a pureza 1.5. Um <ItemLink id="aquatic_catalyst"/> queimando <ItemLink id="prismarine_crystal_shard"/> dá 1.2, e cada <ItemLink id="budding_prismarine"/> encostando nele adiciona 0.1, então três delas chegam a 1.5.
* **Aço Aquarine**, para o Analisador, os escudos e as lentes.

***

## <Color id="gold">Energia num Relance</Color>

Todo número aqui é um mínimo. Abaixo dele uma máquina espera, e acima dele a maioria das máquinas roda mais rápido ([Feixes Mais Fortes](nautec:getting_started/stronger_beams.md)).

| Máquina | Precisa | Feixe entra em |
|---|---|---|
| [Analisador Bacteriano](bacterial_analyzer.md) | 5 AP | a face inferior |
| [Mutador](mutator.md) | 10 AP | a face superior ou inferior |
| [Incubadora](incubator.md) | 20 AP | a face superior ou inferior, e ambas se somam |
| [Biorreator](bio_reactor.md) | 20 AP para 1 colônia, 50 AP para 3 | escotilhas na camada de cima |
| [Analisador Bacteriano Avançado](bacterial_analyzer.md) | 40 AP a pureza 2.1 | qualquer face exceto a frente |
| [Replicador de Colônias](colony_replicator.md) | 80 AP a pureza 2.0 | qualquer face exceto a frente |
| [Estação de Enxertia](bacteria_grafting.md) | 100 AP a pureza 2.8 | qualquer face exceto a frente |
| [Biorreator Industrial](industrial_bio_reactor.md) | 150 AP para 1 colônia, 550 AP para 9 | escotilhas no teto |

[Melhorias do Reator](reactor_upgrades.md) multiplicam o valor de um reator.

Um Catalisador Aquático com Fragmentos de Prismarinho dá 12 AP e queima dois fragmentos por minuto. Cada Drusa de Prismarinho encostando nele adiciona 25%, então um catalisador com uma dá 15 AP. Isso cobre todas as máquinas iniciais: um Biorreator opera uma colônia com dois catalisadores, duas colônias com três, e todas as três com quatro catalisadores com uma Drusa de Prismarinho cada. Uma fileira de catalisadores consome muitos fragmentos, então passar o reator para um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) cedo economiza muito prismarinho.

***

## <Color id="gold">Estágio 1: Uma Primeira Colônia</Color>

**Construa:** Placas de Petri, uma Ferramenta de Enxertia, um Analisador Bacteriano e um catalisador embaixo dele.

Pegue uma pilha de placas vazias e enxerte. Os melhores primeiros enxertos:

* **Litófilos** de <ItemLink id="budding_prismarine"/> num Oceano Quente, Oceano Morno Profundo ou nos biomas de oceano profundo (30%). Toda linhagem de metal e gema descende dele, e enxertá-lo pula uma mutação.
* **Halobactérias** de Areia em qualquer praia (40%). Alga no Mutador a transforma em Halótrofos a 75%, a mutação inicial mais fácil, e Halótrofos levam a Lipófilos, que fazem os lipídios para o petróleo do [Dínamo de Combustão](nautec:getting_started/combustion_dynamo.md).
* As linhagens do oceano profundo estão prontas para trabalhar assim que você as tem: Halótrofos (alga), Algaformadores (erva marinha), Fotótrofos (cana-de-açúcar), Calciófilos (farinha de osso) e Sulfurófilos (pólvora). Veja [Enxertia de Bactérias](bacteria_grafting.md) para onde.

Cianobactérias, Halobactérias, Metanógenos e Termófilos não produzem nada. Elas só existem para ser mutadas.

Analise cada colônia para ver seus atributos. Você não precisa: toda máquina também funciona com colônias não analisadas. A análise diz qual vale manter.

***

## <Color id="gold">Estágio 2: Uma Linha de Produção</Color>

**Construa, nesta ordem:** o Mutador, depois o Biorreator, depois a Incubadora.

**1. Mute para a linhagem que quer.** Coloque uma colônia pequena e nova e o catalisador no Mutador. Não a cultive antes: uma colônia maior muta um pouco menos, e a nova colônia começa em seu próprio tamanho qualquer que tenha sido o da mãe. Coloque um Frasco de Soro Eletrolítico de Algas no espaço de estimulante sempre que puder. Ele triplica a chance e impede que falhas encolham a colônia, e só é consumido num sucesso. A maioria dos passos iniciais é de 15%: cerca de 7 tentativas sem frasco e 2 ou 3 com um.

**2. Ponha-a para trabalhar.** Carregue a colônia no Biorreator e ponha seu nutriente num espaço de nutrientes. A categoria Alimentação de Colônias do JEI, ou passar o mouse sobre o espaço de nutriente vazio, mostra o que ela come. Uma colônia alimentada nunca envelhece, então nunca precisa sair. Muitas linhagens de metal comem o item que produzem, então um reator pode se alimentar da própria produção.

**3. Cultive-a, se quiser.** A Incubadora no máximo dobra a velocidade de uma colônia: uma colônia no teto de tamanho trabalha duas vezes mais rápido que uma minúscula. Vale construir, mas uma colônia nova num reator alimentado já está produzindo itens, então ela pode esperar até a linha rodar. Sua outra função é reviver uma colônia que virou Senescente.

Uma colônia nova é lenta mas útil: uma colônia nova de Ferrófilos faz cerca de 24 lingotes de ferro por minuto e come um lingote de ferro por minuto.

**Energizando este estágio:**

* Analisador e Mutador: um catalisador cada.
* Incubadora: um catalisador acima e um abaixo.
* Biorreator: um catalisador por escotilha, dois para uma colônia e três para duas. Três colônias precisam de 50 AP: quatro catalisadores com uma Drusa de Prismarinho cada, ou uma [Junção de Laser](nautec:laser_chemistry/laser_manipulation.md) fundindo vários catalisadores numa escotilha.

***

## <Color id="gold">Estágio 3: Escalando</Color>

**Mude para energia FE.** Um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md) transforma 10 FE em 1 AP e envia até 150 AP por tique. Ele dispara por cada lado que tenha um receptor alinhado e divide os AP entre eles, então um conversor entre um Mutador e uma Incubadora energiza ambos. Boas fontes, na ordem em que você as alcança:

| Gerador | FE por tique | AP por um conversor |
|---|---|---|
| Rotor de Marés | 40 a 80 | 4 a 8 cada |
| Dínamo de Combustão com petróleo de Lipófilos | 320 | 32 |
| Captador Hidrotermal | 350 a 1.250 | 35 a 125 |

Veja [Geradores Oceânicos](nautec:getting_started/ocean_generators.md).

**Crie atributos melhores.** Os atributos de uma colônia só mudam pelo Mutador. Para melhorar uma colônia sem mudar sua linhagem, use o bloco de armazenamento do item que ela produz como catalisador (um Bloco de Ferro para Ferrófilos). Isso a refina: 25% de chance base, mesma linhagem, atributos um pouco deslocados. Fique com os melhores resultados e refine-os de novo. Crie Taxa de Produção primeiro para colônias de reator. [Atributos das Bactérias](bacteria_stats.md) explica cada atributo.

**Melhore o reator.** [Melhorias do Reator](reactor_upgrades.md) são feitas de Chips Aquáticos, Revestimento de Aço Profundo, Fragmentos Ressoantes e Cristais de Prismarinho Impecáveis. Para produção por AP, uma Melhoria de Produção vence uma Melhoria de Velocidade.

**Use colônias velhas para energia.** Uma [Célula de Combustível Bacteriana](bacterial_fuel_cell.md) queima qualquer colônia, senescente ou não, num feixe de até 48 AP. Uma colônia com alta Resistência à Mutação dá um feixe puro: 0.8 de resistência dá pureza 2.0.

**Mantenha colônias organizadas** num [Armazenamento de Placas](dish_storage.md), que nunca funde nem mistura placas.

**Alimente o Mutador com um feixe mais forte.** 40 AP lhe dão o dobro de tentativas por minuto que 10 AP.

***

## <Color id="gold">Estágio 4: Fim de Jogo</Color>

Um feixe de [Cristal de Prismarinho](nautec:getting_started/laser_power.md) (pureza 3.0) destrava as máquinas de biologia de alta pureza:

* **[Estação de Enxertia](bacteria_grafting.md):** enxerta sem a ferramenta ou o bioma, cada ciclo um sucesso garantido. Com uma Âncora de Enxertia instalada, um bloco enxerta para sempre. É daqui que vêm as colônias de forragem.
* **[Replicador de Colônias](colony_replicator.md):** copia sua melhor colônia usando colônias da mesma linhagem, ou o item que ela produz, como biomassa. Crie uma grande colônia, depois encha um reator de cópias. Crie Resistência à Mutação primeiro se quiser cópias exatas.
* **[Analisador Bacteriano Avançado](bacterial_analyzer.md):** nove placas de uma vez.
* **[Biorreator Industrial](industrial_bio_reactor.md):** nove colônias e quatro espaços de melhorias. Energize-o com vários Conversores de Energia nas escotilhas do teto.

Cada uma dessas máquinas tem uma Porta de Placas, então tubos podem carregar placas por toda a linha: Estação de Enxertia → Analisador → Replicador → reator. Quando um reator está cheio, uma nova colônia chegando à sua porta toma o lugar de sua colônia Senescente mais velha, que volta na mesma placa.

***

## <Color id="gold">Erros Comuns</Color>

* **Um reator abaixo de sua potência.** Nada funciona e todo progresso zera. Passe o mouse sobre a seta de progresso para ver a energia chegando contra a necessária.
* **Um "!" numa colônia de reator.** Seu nutriente está faltando ou ela virou Senescente. Passe o mouse sobre ela para ver qual.
* **Sem nutriente no reator.** Uma colônia nova tem entre 45 segundos e dois minutos de Vida Útil, depois vira Senescente e começa a encolher. Uma pilha de seu nutriente evita isso.
* **Mais tipos de nutriente que espaços de nutrientes.** Um Biorreator fornece no máximo dois nutrientes diferentes e o Biorreator Industrial três. Encha um reator com linhagens que os compartilhem.
* **Um espaço de saída cheio.** Aquela colônia pausa até haver espaço, então retire a produção por tubo.
* **Cultivar uma colônia antes de mutá-la.** Só diminui a chance e dá às falhas mais o que comer.
* **Uma linhagem base num reator.** Cianobactérias, Halobactérias, Metanógenos e Termófilos não produzem nada.
* **Placas vazias na Porta de Placas de um reator.** Uma placa vazia retira uma colônia.
