---
navigation:
  title: Dreno do Mar Profundo
  icon: nautec:deep_sea_drain
  position: 5
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:deep_sea_drain
  - nautec:deep_sea_drain_wall
---

# <Color id="light_purple">Dreno do Mar Profundo</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="deep_sea_drain" scale="2"/>
  Um multibloco 3x3 que bombeia Água Salgada do oceano.
</Column>

## <Color id="gold">Construindo-o</Color>

Monte um 3x3 plano: o Dreno do Mar Profundo no meio e oito Paredes do Dreno do Mar Profundo ao redor. Clique direito no Dreno do Mar Profundo com uma <ItemLink id="aquarine_steel_wrench"/> para formá-lo.

<GameScene zoom="4" background="#333333" interactive={true}>
  <Block id="nautec:deep_sea_drain_wall" x="0" y="0" z="0"/>
  <Block id="nautec:deep_sea_drain_wall" x="1" y="0" z="0"/>
  <Block id="nautec:deep_sea_drain_wall" x="2" y="0" z="0"/>
  <Block id="nautec:deep_sea_drain_wall" x="0" y="0" z="1"/>
  <Block id="nautec:deep_sea_drain" x="1" y="0" z="1"/>
  <Block id="nautec:deep_sea_drain_wall" x="2" y="0" z="1"/>
  <Block id="nautec:deep_sea_drain_wall" x="0" y="0" z="2"/>
  <Block id="nautec:deep_sea_drain_wall" x="1" y="0" z="2"/>
  <Block id="nautec:deep_sea_drain_wall" x="2" y="0" z="2"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

Ele bombeia num bioma oceânico ou semelhante com todos os nove blocos diretamente acima dele de água. Construí-lo no fundo do mar cobre os dois. Qualquer bioma marcado como oceano ou mar conta, incluindo os de mods, e basta que o dreno ou o topo da água acima dele esteja num deles, então um fundo do mar que um mod de geração tornou caverna ou fossa ainda funciona.

***

## <Color id="gold">Energizando-o</Color>

O dreno precisa de mais de 20 AP por tique (configurável). Um <ItemLink id="aquatic_catalyst"/> dá:

| Combustível | AP por tique |
|---|---|
| Cristais de Prismarinho | 6 |
| Fragmento de Prismarinho | 12 |
| Fragmento de Cristal de Prismarinho | 12 |

Dois catalisadores queimando fragmentos, fundidos numa [Junção de Laser](laser_manipulation.md), dão 24 e operam o dreno. São necessários quatro com Cristais de Prismarinho. Uma junção divide sua potência igualmente entre as saídas, então dê a ela uma única saída na direção do dreno.

O feixe entra por uma porta de laser. Com a chave, clique direito numa das quatro peças de parede do meio (não num canto). Qualquer face serve: a porta sempre fica virada para fora, longe do dreno, e uma mensagem confirma. Mire o feixe no lado externo daquela parede. O dreno tem uma porta por vez, então chavear outra parede do meio a move, e chavear a mesma parede de novo a redefine.

***

## <Color id="gold">Operando-o</Color>

Shift+clique direito no dreno com as duas mãos vazias para abri-lo. Ele abre quando tem energia suficiente. A válvula gira, então a tampa abre devagar ao longo de alguns segundos. Shift+clique direito de novo para fechá-lo.

Se não abrir, uma mensagem diz quanta energia ele está recebendo contra o que precisa. Se abrir mas algo o impedir de bombear, como falta de água ou bioma errado, a mensagem também diz.

Enquanto aberto e energizado ele bombeia Água Salgada para um tanque de 128.000 mB. Um feixe um pouco acima de 20 AP bombeia 500 mB por segundo, e um feixe mais forte bombeia mais em proporção direta sem limite: cada AP bombeia 25 mB por segundo, então quatro vezes o feixe bombeia quatro vezes mais.

| Feixe | Água Salgada por segundo |
|---|---|
| pouco acima de 20 AP | cerca de 500 mB |
| 80 AP | 2.000 mB |
| 320 AP | 8.000 mB |
| 2.000 AP | 50.000 mB |
| 20.000 AP | 500.000 mB |

O Jade mostra a taxa atual do dreno. A taxa base, a energia necessária, a velocidade com que a taxa cresce com o feixe (`drainPowerScaling`) e o tamanho do tanque são todos configuráveis. É a fonte estável de Água Salgada para o [Misturador](mixer.md), já que água do oceano num Balde continua sendo água comum a menos que um pack tenha ligado `collectSaltWater` em `config/nautec-common.toml`.

* Retire Água Salgada com um tubo embaixo do bloco central.
* Ou clique direito em qualquer parte do dreno com um Balde ou outro recipiente de fluido. Um Balde enche quando o tanque tiver pelo menos 1.000 mB.

Olhe para uma parede com o <ItemLink id="prism_monocle"/> para ver quanto fluido está armazenado. Com o Jade, olhar para qualquer parte do dreno mostra seu estado (Fechado, Abrindo, Bombeando Água Salgada, Energia insuficiente, Sem água acima, Fora de um oceano, ou Tanque cheio) e a energia que recebe.

<Color id="gold">Cuidado</Color>: um dreno aberto e energizado puxa tudo acima dele para baixo numa coluna de bolhas. Qualquer coisa que entre no dreno sofre dano de afogamento, itens soltos inclusive. Feche-o antes de nadar por cima.

***

### <Color id="aqua">Receitas</Color>

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Dreno do Mar Profundo bombeia mais Água Salgada com um feixe mais forte, em proporção direta em vez da regra da raiz quadrada que as máquinas seguem: quatro vezes o feixe bombeia quatro vezes mais. A tabela acima lista as taxas. Um pack pode mudar isso com `drainPowerScaling` em `config/nautec-common.toml`; 0.5 aplica a regra da raiz quadrada.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.

<RecipeFor id="deep_sea_drain"/>

<RecipeFor id="deep_sea_drain_wall"/>
