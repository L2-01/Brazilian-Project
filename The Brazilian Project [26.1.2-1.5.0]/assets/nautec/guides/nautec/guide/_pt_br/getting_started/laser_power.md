---
navigation:
  title: Energia de Laser
  icon: nautec:aquatic_catalyst
  position: 1
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:aquatic_catalyst
  - nautec:advanced_aquatic_catalyst
  - nautec:prismarine_crystal
---

# <Color id="light_purple">Energia de Laser</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquatic_catalyst" scale="2"/>
  O Catalisador Aquático queima prismarinho e o dispara como um feixe de laser.
</Column>

As máquinas do NauTec funcionam com energia de laser, medida em AP por tique (AP/t). Um feixe carrega dois valores: sua potência e sua pureza. As máquinas usam a potência para funcionar, e as receitas checam a pureza antes de começar.

Um feixe só se forma entre dois blocos de laser. O bloco emissor precisa de algo naquele lado que aceite um feixe (uma máquina, um relé, uma junção, uma lente), a não mais de 16 blocos (`laserDistance` em `config/nautec-common.toml`), ou 64 a partir de um relé, sem bloco sólido no meio. Feixes atravessam água e vidro, então você pode fechar um feixe em vidro.

***

<Row>
  <ItemImage id="aquatic_catalyst"/>
  ### <Color id="aqua">Catalisador Aquático</Color>
</Row>

Sua primeira fonte de energia. Ele queima itens de prismarinho um de cada vez e dispara um feixe por uma face.

<Recipe id="nautec:aquatic_catalyst"/>

Carregue combustível clicando direito no catalisador com uma pilha, ou alimente-o por um funil. Clique direito com a mão vazia para pegar de volta o combustível que ele ainda não começou a queimar.

| Combustível | Pureza | Potência | Tempo de queima |
|---|---|---|---|
| Fragmento de Prismarinho | 0.4 | 12 AP/t | 30 s |
| Cristais de Prismarinho | 0.8 | 6 AP/t | 30 s |
| <ItemLink id="prismarine_crystal_shard"/> | 1.2 | 20 AP/t | 75 s |

A face para a qual você olha ao posicioná-lo é a entrada clara, com oito encaixes que se enchem conforme você carrega combustível. O feixe sai da face oposta, a escura com a lente ciano. Olhe para baixo ao posicioná-lo para disparar para baixo, olhe para cima para disparar para cima. Uma <ItemLink id="aquarine_steel_wrench"/> gira um catalisador posicionado.

O catalisador só queima enquanto houver um receptor no lado do emissor. Sem nada lá ele guarda o combustível e espera, então um catalisador sem alvo não desperdiça nada. Ele passa direto de um item de combustível para o próximo, então o feixe fica ligado enquanto a pilha durar. Uma pilha de 64 fragmentos dura 32 minutos.

Um sinal de redstone o pausa. Um catalisador pausado não emite feixe e mantém o combustível e o progresso do item que queimava, retomando de onde parou quando o sinal cessa.

<ItemLink id="budding_prismarine"/> encostada no catalisador em qualquer face exceto a da lente o potencializa. Cada bloco adiciona 25% à sua potência e 0.1 à sua pureza, até uma pureza de 2.0 (`catalystBuddingOutputBonus`, `catalystBuddingPurityBonus` e `catalystBuddingMaxPurity`). Uma Drusa de Prismarinho potencializadora não cresce nada: o catalisador quebra qualquer Agregado de Prismarinho sobre ela a cada segundo, sem drop.

As duas lâmpadas pequenas perto da ponta da lente de cada lado mostram se ele achou um receptor. Verde significa que um bloco de laser dentro do alcance aceita o feixe. Vermelho significa que não: nada está alinhado com a lente, um bloco sólido está no caminho, ou o bloco à frente não aceita feixe por aquele lado (um relé virado para o lado errado é a causa usual). Shift+clique direito no catalisador com a mão vazia para um relatório no chat sobre seu combustível, para onde ele dispara, no que o feixe bate e como consertar.

<Color id="gold">Dica</Color>: o feixe queima o que estiver dentro dele, você inclusive, e um feixe mais forte queima mais (veja [Movendo Energia de Laser](nautec:laser_chemistry/laser_manipulation.md)). Contorne feixes ativos, ou os faça passar por vidro.

***

<Row>
  <ItemImage id="advanced_aquatic_catalyst"/>
  ### <Color id="aqua">Catalisador Aquático Avançado</Color>
</Row>

Um Catalisador Aquático com moldura guarnecida de ouro que queima oito itens de combustível de uma vez. Cada queima dura tanto quanto um item no Catalisador Aquático, e o feixe carrega oito vezes a potência, então uma pilha de fragmentos dá 160 AP por tique em vez de 20 e acaba oito vezes mais rápido. A energia de cada item é a mesma; você a recebe toda mais cedo.

<Recipe id="nautec:advanced_aquatic_catalyst"/>

| Combustível | Pureza | Potência | Tempo de queima |
|---|---|---|---|
| Fragmento de Prismarinho | 0.44 | 96 AP/t | 30 s |
| Cristais de Prismarinho | 0.88 | 48 AP/t | 30 s |
| <ItemLink id="prismarine_crystal_shard"/> | 1.32 | 160 AP/t | 75 s |

Seu feixe é 10% mais puro que o mesmo combustível num Catalisador Aquático, antes de qualquer bônus de Drusa de Prismarinho. Com menos de oito itens carregados ele queima o que houver, naquela proporção de potência. Todo o resto funciona como no Catalisador Aquático: posicionamento, lâmpadas, pausa por redstone, Drusa de Prismarinho e o relatório de shift+clique direito. `advancedCatalystFuelMultiplier` e `advancedCatalystPurityMultiplier` definem o oito e os 10%.

***

## <Color id="gold">Pureza</Color>

A pureza é definida onde o feixe começa. Um feixe de catalisador carrega a pureza do combustível, de 0.4 a 1.2, mais qualquer bônus de Drusa de Prismarinho. Quando dois ou mais feixes alimentam o mesmo bloco, suas potências se somam e sua pureza fica próxima da do feixe mais puro. O resultado é a maior pureza menos um quarto da diferença entre ela e a média de todas (`beamMergePurityDrop`), então um feixe 3.0 fundido com um feixe 0 sai a cerca de 2.6.

Pureza maior vem de um <ItemLink id="prismarine_crystal"/> (3.0), de uma <ItemLink id="bacterial_fuel_cell"/> (até 2.5) ou de uma <ItemLink id="focusing_lens"/> adicionada a um feixe existente. [Óptica de Feixes](nautec:deep_engineering/beam_optics.md) cobre como curvar, dividir e focar feixes.

***

<Row>
  <ItemImage id="prismarine_crystal"/>
  ### <Color id="aqua">Cristal de Prismarinho</Color>
</Row>

Um cristal de seis blocos de altura encontrado ereto dentro de Geodos de Cristal sob o fundo do oceano (veja [Estruturas](structures.md)). Ele transforma qualquer feixe num feixe de pureza 3.0. Cristais selvagens estão enraizados no lugar, mas você pode cultivar um que possa mover: veja [Cultivo de Cristais](nautec:deep_engineering/crystal_cultivation.md).

Dispare um feixe no cristal pelo lado. Qualquer um de seus seis blocos aceita feixe em qualquer um de seus quatro lados, e feixes de várias fontes se somam. O bloco de cima então dispara reto para cima e o de baixo dispara reto para baixo, ambos com pureza 3.0. Se só um deles alcançar um receptor, esse feixe carrega toda a potência de entrada. Se os dois alcançarem, a potência é dividida igualmente entre eles, então um cristal nunca emite mais AP do que recebe. Esses dois feixes correm até alcançar um receptor ou um bloco sólido, então também funcionam para dentro de um piso ou teto vazio.

O cristal fica onde gerou, então construa ao redor dele. Uma Picareta de Aço Aquarine com sua habilidade ligada lasca [Fragmentos de Cristal de Prismarinho](nautec:laser_chemistry/crystal_shards.md) dele, mas cada golpe tem chance de destruir o cristal inteiro.

***

## <Color id="gold">Movendo Energia</Color>

* [Manipulação de Laser](nautec:laser_chemistry/laser_manipulation.md): o Relé de Laser de Prismarinho repassa um feixe, e a Junção de Laser funde e divide feixes.
* [Óptica de Feixes](nautec:deep_engineering/beam_optics.md): a Lente de Focalização, para aumentar a pureza.
* [Carregador](nautec:laser_chemistry/charger.md) e [Bateria Prismática](nautec:laser_chemistry/prismatic_battery.md): armazenando energia em itens.

Vista um <ItemLink id="prism_monocle"/> para ler a potência e a pureza que chegam a qualquer bloco de laser.

***

## <Color id="gold">Feixes Mais Fortes</Color>

O número de AP de uma máquina é o mínimo que ela precisa para funcionar, não um custo. Um feixe mais forte que isso nunca é desperdiçado: a maioria das máquinas funciona mais rápido com ele, pela raiz quadrada de (feixe ÷ o que elas precisam), então quatro vezes a potência faz uma máquina rodar duas vezes mais rápido. [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) tem a regra completa e a lista de máquinas.
