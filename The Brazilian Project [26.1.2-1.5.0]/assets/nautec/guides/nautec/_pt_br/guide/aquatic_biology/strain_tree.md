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

Toda linhagem exceto as enxertadas vem do [Mutador](mutator.md). Cada linha abaixo é uma mutação: ponha uma colônia da linhagem-mãe no Mutador com o catalisador. O catalisador nunca é gasto. Pacotes podem mudar essas receitas; a categoria Mutações de Bactérias do JEI sempre mostra as atuais, e sua categoria Linhagem de Linhagens mostra a rota mais rápida até qualquer linhagem a partir de uma que você pode enxertar. Procure as receitas da placa de uma linhagem para vê-la.

***

## <Color id="gold">Quanto uma Mutação Leva</Color>

Em média, para uma colônia fresca num feixe de 10 AP (12 segundos por tentativa):

| Chance | Tentativas | Tempo | Com um frasco de reforço |
|---|---|---|---|
| 75% | 1 ou 2 | cerca de 15 segundos | 1 tentativa |
| 30% | 3 ou 4 | cerca de 40 segundos | 1 ou 2 tentativas |
| 15% | cerca de 7 | menos de 1.5 minuto | 2 ou 3 tentativas |
| 9% | cerca de 11 | cerca de 2 minutos | cerca de 4 tentativas |
| 5% | 20 | 4 minutos | cerca de 7 tentativas |
| 3% | 33 | cerca de 7 minutos | cerca de 11 tentativas |

Um feixe de 40 AP corta cada tempo pela metade. Um Frasco de Soro Eletrolítico de Algas (EAS) no slot de reforço triplica a chance, impede que falhas encolham a colônia, e só é gasto num sucesso.

***

## <Color id="gold">Linhagens Iniciais</Color>

| Linhagem | Enxertada de | Onde |
|---|---|---|
| Termófilas | Netherrack | o Nether |
| Litófilas | <ItemLink id="budding_prismarine"/> | Recife de prismarinho, Bosque bioluminescente, Fossa abissal, Oceano Quente, Oceano Morno Profundo |
| Halobactérias | Areia | qualquer praia |
| Cianobactérias | Pedra, ou um Pólipo Luminoso num Bosque bioluminescente | qualquer oceano |
| Metanogênicas | Podzol | qualquer floresta |

[Enxertia de Bactérias](bacteria_grafting.md) lista todo enxerto, incluindo as linhagens do oceano profundo que pulam a primeira mutação.

***

## <Color id="gold">Pedra, Minerais e Metais</Color>

O ramo mais valioso. Enxerte Litófilas da Drusa de Prismarinho para pular seu primeiro passo. Todo passo até ferro, redstone e lápis é 15%; ouro, diamante e esmeralda ficam em 5%.

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Litófilas | Pedra | Termófilas | Pedra | 15% |
| Calciófilas | Farinha de Osso | Litófilas | Farinha de Osso | 15% |
| Silicófilas | Areia | Litófilas | Areia | 15% |
| Carbófagas | Carvão | Litófilas | Carvão | 15% |
| Metalófilas | Lingote de Cobre | Carbófagas | Lingote de Cobre | 15% |
| Ferrófilas | Lingote de Ferro | Metalófilas | Lingote de Ferro | 15% |
| Acidófilas | Redstone | Metalófilas | Redstone | 15% |
| Azuritófilas | Lápis-Lazúli | Metalófilas | Lápis-Lazúli | 15% |
| Sulfurófilas | Pólvora | Acidófilas | Pólvora | 15% |
| Aurófilas | Lingote de Ouro | Ferrófilas | Lingote de Ouro | 5% |
| Adamantófilas | Diamante | Aurófilas | Diamante | 5% |
| Esmaragdófilas | Esmeralda | Adamantófilas | Esmeralda | 5% |

Sulfurófilas também podem ser enxertados de um Verme Tubular Hidrotermal nas Fontes hidrotermais.

Rotas mais curtas a partir de uma colônia de Litófilas enxertada:

| Alvo | Rota | Mutações |
|---|---|---|
| Carvão | Litófilas, Carbófagas | 1 |
| Cobre | depois Metalófilas | 2 |
| Ferro, Redstone ou Lápis | depois Ferrófilas, Acidófilas ou Azuritófilas | 3 |
| Ouro ou Pólvora | depois Aurófilas ou Sulfurófilas | 4 |
| Diamante | depois Adamantófilas | 5 |
| Esmeralda | depois Esmaragdófilas | 6 |

Começar de Termófilas adiciona mais uma. Você precisa de um de cada catalisador no caminho, e como um catalisador nunca é gasto, uma lingote de ferro destrava Ferrófilas para sempre.

***

## <Color id="gold">Materiais de Outros Mods</Color>

Linhagens para metais e gemas de outros mods só existem quando um mod do pacote adiciona aquele material. O catalisador é sempre a própria lingote ou gema do material, e a mãe depende de quão raro ele é:

| Mãe | Chance | Materiais |
|---|---|---|
| Litófilas | 30% | alumínio, bauxita, latão, bronze, grafite, chumbo, ferro-gusa, aço, estanho, zinco, apatita |
| Metalófilas | 30% | prata, níquel, antimônio, bismuto, boro, constantan, electrum, invar, ouro rosa, aço inoxidável, bronze de ametista, e gemas como rubi, safira, peridoto e topázio |
| Ferrófilas | 5% | ósmio, urânio, cobalto, titânio, tungstênio e a maioria dos outros metais de nível médio, quartzo certus e negro |
| Aurófilas | 5% | platina, irídio, paládio, enderium e outros metais preciosos |
| Adamantófilas | 3% | netherita, allthemodium, vibranium, unobtainium e os outros metais de nível máximo |

[Taxas de Produção](production_rates.md) tem a lista completa com o Rendimento de Linhagem de cada um.

***

## <Color id="gold">Plantas Oceânicas e Petróleo</Color>

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Halotróficas | Alga | Halobactérias | Alga | 75% |
| Formadoras de Algas | Erva-Marinha | Halobactérias | Erva-Marinha | 75% |
| Lipófilas | Lipídio de Algas | Halotróficas | Polpa de Algas | 30% |
| Fototróficas | Cana-de-Açúcar | Halotróficas | Cana-de-Açúcar | 15% |
| Fototróficas | Cana-de-Açúcar | Cianobactérias | Cana-de-Açúcar | 30% |
| Criobiontes | Gelo | Formadoras de Algas | Gelo Azul | 15% |

Lipófilas fazem os lipídios que viram petróleo para o [Dínamo de Combustão](nautec:getting_started/combustion_dynamo.md), o que o torna o primeiro passo rumo a energia que se paga.

***

## <Color id="gold">Plantações</Color>

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Cactófilas | Cacto | Fototróficas | Cacto | 30% |
| Rizobactérias | Trigo | Fototróficas | Trigo | 15% |
| Bambufágas | Bambu | Rizobactérias | Bambu | 30% |
| Filobactérias Beta | Beterraba | Rizobactérias | Beterraba | 30% |
| Carotófilas | Cenoura | Rizobactérias | Cenoura | 30% |
| Solanófilas | Batata | Rizobactérias | Batata | 30% |
| Cucurbitófilas | Abóbora | Rizobactérias | Abóbora | 30% |
| Melófagas | Fatia de Melancia | Cucurbitófilas | Fatia de Melancia | 30% |
| Briófitófilas | Bloco de Musgo | Rizobactérias | Bloco de Musgo | 15% |

***

## <Color id="gold">Madeira, Fungos e Carne</Color>

| Linhagem | Produz | Mãe | Catalisador | Chance |
|---|---|---|---|---|
| Lignócitos | Tronco de Carvalho | Metanogênicas | Tronco de Carvalho | 15% |
| Betulófilas, Boreófilas, Acaciófilas, Selvícolas, Lignócitos Escuros, Lignócitos de Prunus, Lignócitos de Rhizophora | Troncos de Bétula, Abeto, Acácia, Selva, Carvalho Escuro, Cerejeira e Mangue | Lignócitos | aquele tronco | 15% |
| Lignócitos Carmesins, Lignócitos Distorcidos | Caules Carmesins e Distorcidas | Lignócitos | aquela caule | 9% |
| Cacauófilas | Grãos de Cacau | Selvícolas | Grãos de Cacau | 30% |
| Bactérias Carnívoras | Carne Podre | Metanogênicas | Carne Podre | 15% |
| Bactérias Micotróficas Marrom | Cogumelo Marrom | Metanogênicas | Bloco de Cogumelo Marrom | 60% |
| Bactérias Micotróficas Vermelhas | Cogumelo Vermelho | Metanogênicas | Bloco de Cogumelo Vermelho | 60% |
| Micróbios Carmesins, Micróbios Distorcidos | Fungo Carmesim e Distorcido | qualquer linhagem Micotrófica | aquele fungo | 9% |

***

## <Color id="gold">Apuramento</Color>

Qualquer linhagem que produz algo também pode mutar em si mesma. Use o bloco de armazenamento do item que ela produz como catalisador (um Bloco de Ferro para Ferrófilas, um Fardo de Feno para Rizobactérias), ou o próprio item se não tiver bloco. Um apuramento tem 25% de chance base, mantém a linhagem e o tamanho da colônia, e desloca seus stats um pouco. É como você apura uma colônia melhor da linhagem que já tem. Veja [Mutador](mutator.md).