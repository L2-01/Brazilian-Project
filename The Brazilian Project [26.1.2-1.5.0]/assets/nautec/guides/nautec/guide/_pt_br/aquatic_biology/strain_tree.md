---
navigation:
  title: Árvore de Linhagens
  icon: nautec:mutator
  position: 2
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Árvore de Linhagens</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="mutator" scale="2"/>
  Qual linhagem muta em qual, com o catalisador e sua chance.
</Column>

Toda linhagem exceto as enxertadas vem do [Mutador](mutator.md). Cada linha abaixo é uma mutação: coloque uma colônia da linhagem-mãe no Mutador com o catalisador. O catalisador nunca é consumido. Packs podem mudar essas receitas; a categoria Mutações de Bactérias do JEI sempre mostra as atuais, e sua categoria Descendência de Linhagens mostra a rota mais rápida até qualquer linhagem a partir de uma enxertável. Consulte as receitas da placa de uma linhagem para vê-la.

***

## <Color id="gold">Quanto Tempo uma Mutação Leva</Color>

Em média, para uma colônia nova num feixe de 10 AP (12 segundos por tentativa):

| Chance | Tentativas | Tempo | Com frasco estimulante |
|---|---|---|---|
| 75% | 1 ou 2 | cerca de 15 segundos | 1 tentativa |
| 30% | 3 ou 4 | cerca de 40 segundos | 1 ou 2 tentativas |
| 15% | cerca de 7 | menos de 1,5 minuto | 2 ou 3 tentativas |
| 9% | cerca de 11 | cerca de 2 minutos | cerca de 4 tentativas |
| 5% | 20 | 4 minutos | cerca de 7 tentativas |
| 3% | 33 | cerca de 7 minutos | cerca de 11 tentativas |

Um feixe de 40 AP corta todos os tempos pela metade. Um Frasco de Soro Eletrolítico de Algas no espaço de estimulante triplica a chance, impede que falhas encolham a colônia e só é consumido num sucesso.

***

## <Color id="gold">Linhagens Iniciais</Color>

| Linhagem | Enxertada de | Onde |
|---|---|---|
| Termófilos | Netherrack | o Nether |
| Litófilos | <ItemLink id="budding_prismarine"/> | Recife de prismarinho, Bosque bioluminescente, Fossa abissal, Oceano Quente, Oceano Morno Profundo |
| Halobactérias | Areia | qualquer praia |
| Cianobactérias | Pedra, ou um Pólipo Luminoso num Bosque bioluminescente | qualquer oceano |
| Metanógenos | Podzol | qualquer floresta |

[Enxertia de Bactérias](bacteria_grafting.md) lista todo enxerto, incluindo as linhagens do oceano profundo que pulam a primeira mutação.

***

## <Color id="gold">Pedra, Minerais e Metais</Color>

O ramo mais valioso. Enxerte Litófilos de Drusa de Prismarinho para pular seu primeiro passo. Todo passo até ferro, redstone e lápis-lazúli é 15%; ouro, diamante e esmeralda ficam em 5%.

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Litófilos | Pedra | Termófilos | Pedra | 15% |
| Calciófilos | Farinha de Osso | Litófilos | Farinha de Osso | 15% |
| Silicófilos | Areia | Litófilos | Areia | 15% |
| Carbófagos | Carvão | Litófilos | Carvão | 15% |
| Metalófilos | Lingote de Cobre | Carbófagos | Lingote de Cobre | 15% |
| Ferrófilos | Lingote de Ferro | Metalófilos | Lingote de Ferro | 15% |
| Acidófilos | Redstone | Metalófilos | Redstone | 15% |
| Azuritófilos | Lápis-Lazúli | Metalófilos | Lápis-Lazúli | 15% |
| Sulfurófilos | Pólvora | Acidófilos | Pólvora | 15% |
| Aurófilos | Lingote de Ouro | Ferrófilos | Lingote de Ouro | 5% |
| Adamantófilos | Diamante | Aurófilos | Diamante | 5% |
| Esmeralófilos | Esmeralda | Adamantófilos | Esmeralda | 5% |

Sulfurófilos também podem ser enxertados de um Verme Tubular Hidrotermal nas Fontes hidrotermais.

Rotas mais curtas a partir de uma colônia de Litófilos enxertada:

| Alvo | Rota | Mutações |
|---|---|---|
| Carvão | Litófilos, Carbófagos | 1 |
| Cobre | depois Metalófilos | 2 |
| Ferro, Redstone ou Lápis | depois Ferrófilos, Acidófilos ou Azuritófilos | 3 |
| Ouro ou Pólvora | depois Aurófilos ou Sulfurófilos | 4 |
| Diamante | depois Adamantófilos | 5 |
| Esmeralda | depois Esmeralófilos | 6 |

Começar de Termófilos adiciona mais uma. Você precisa de um exemplar de cada catalisador no caminho, e como o catalisador nunca é consumido, um lingote de ferro desbloqueia Ferrófilos para sempre.

***

## <Color id="gold">Materiais de Outros Mods</Color>

Linhagens para metais e gemas de outros mods só existem quando um mod do pack adiciona aquele material. O catalisador é sempre o próprio lingote ou gema do material, e a mãe depende do quão raro ele é:

| Mãe | Chance | Materiais |
|---|---|---|
| Litófilos | 30% | alumínio, bauxita, latão, bronze, grafite, chumbo, ferro-gusa, aço, estanho, zinco, apatita |
| Metalófilos | 30% | prata, níquel, antimônio, bismuto, boro, constantan, electrum, invar, ouro rosé, aço inoxidável, bronze de ametista, e gemas como rubi, safira, peridoto e topázio |
| Ferrófilos | 5% | ósmio, urânio, cobalto, titânio, tungstênio e a maioria dos outros metais de nível médio, certus e quartzo negro |
| Aurófilos | 5% | platina, irídio, paládio, enderium e outros metais preciosos |
| Adamantófilos | 3% | netherita, allthemodium, vibranium, unobtainium e os demais metais de nível máximo |

[Taxas de Produção](production_rates.md) tem a lista completa com o Rendimento de Linhagem de cada um.

***

## <Color id="gold">Plantas Oceânicas e Petróleo</Color>

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Halótrofos | Alga | Halobactérias | Alga | 75% |
| Algaformadores | Erva Marinha | Halobactérias | Erva Marinha | 75% |
| Lipófilos | Lipídio de Algas | Halótrofos | Polpa de Algas | 30% |
| Fotótrofos | Cana-de-Açúcar | Halótrofos | Cana-de-Açúcar | 15% |
| Fotótrofos | Cana-de-Açúcar | Cianobactérias | Cana-de-Açúcar | 30% |
| Criobiontes | Gelo | Algaformadores | Gelo Azul | 15% |

Lipófilos produzem os lipídios que viram petróleo para o [Dínamo de Combustão](nautec:getting_started/combustion_dynamo.md), o que os torna o primeiro passo rumo a energia que se paga.

***

## <Color id="gold">Plantações</Color>

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Cactófilos | Cacto | Fotótrofos | Cacto | 30% |
| Rizobactérias | Trigo | Fotótrofos | Trigo | 15% |
| Bambufagos | Bambu | Rizobactérias | Bambu | 30% |
| Betabactérias | Beterraba | Rizobactérias | Beterraba | 30% |
| Carotófilos | Cenoura | Rizobactérias | Cenoura | 30% |
| Solanófilos | Batata | Rizobactérias | Batata | 30% |
| Cucurbitófilos | Abóbora | Rizobactérias | Abóbora | 30% |
| Melófagos | Fatia de Melancia | Cucurbitófilos | Fatia de Melancia | 30% |
| Briofitófilos | Bloco de Musgo | Rizobactérias | Bloco de Musgo | 15% |

***

## <Color id="gold">Madeira, Fungos e Carne</Color>

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Lignócitos | Tronco de Carvalho | Metanógenos | Tronco de Carvalho | 15% |
| Betulófilos, Boreófilos, Acacifilos, Junglófilos, Lignócitos Escuros, Lignócitos Cerejeira, Lignócitos Rizófora | Troncos de Bétula, Pinheiro, Acácia, Selva, Carvalho Escuro, Cerejeira e Mangue | Lignócitos | aquele tronco | 15% |
| Lignócitos Carmesim, Lignócitos Distorcidos | Caules Carmesim e Distorcido | Lignócitos | aquele caule | 9% |
| Cocoáfilos | Sementes de Cacau | Junglófilos | Sementes de Cacau | 30% |
| Bactérias Carnívoras | Carne Podre | Metanógenos | Carne Podre | 15% |
| Bactérias Micotróficas Marrons | Cogumelo Marrom | Metanógenos | Bloco de Cogumelo Marrom | 60% |
| Bactérias Micotróficas Vermelhas | Cogumelo Vermelho | Metanógenos | Bloco de Cogumelo Vermelho | 60% |
| Microborganismos Carmesim, Microborganismos Distorcidos | Fungo Carmesim e Distorcido | qualquer linhagem Micotrófica | aquele fungo | 9% |

***

## <Color id="gold">Refinamento</Color>

Qualquer linhagem que produz algo também pode mutar em si mesma. Use o bloco de armazenamento do item que ela produz como catalisador (um Bloco de Ferro para Ferrófilos, um Fardo de Feno para Rizobactérias), ou o próprio item se não tiver bloco. Um refino tem 25% de chance base, mantém a linhagem e o tamanho da colônia, e desloca um pouco seus atributos. É como você cria uma colônia melhor da linhagem que já tem. Veja [Mutador](mutator.md).
