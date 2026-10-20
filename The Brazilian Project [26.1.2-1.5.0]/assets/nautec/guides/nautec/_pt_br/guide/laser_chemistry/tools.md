---
navigation:
  title: Ferramentas de Aço Aquarine
  icon: nautec:aquarine_steel_axe
  position: 8
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:aquarine_steel_sword
  - nautec:aquarine_steel_pickaxe
  - nautec:aquarine_steel_axe
  - nautec:aquarine_steel_shovel
  - nautec:aquarine_steel_hoe
---

# <Color id="light_purple">Ferramentas de Aço Aquarine</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquarine_steel_axe" scale="2"/>
  Ferramentas que rodam com AP em vez de durabilidade, cada uma com uma habilidade que você destrava com EAS.
</Column>

## <Color id="gold">Energia</Color>

Essas ferramentas nunca quebram. Elas gastam AP no lugar: a maioria dos blocos minerados ou criaturas atingidas custa 1 AP. A barra sob o ícone mostra a carga, e a dica dá o valor exato.

Sem AP, uma ferramenta não minera, ataca nem é usada em blocos, então mantenha-a carregada num [Carregador](charger.md) ou com uma [Bateria Prismática](prismatic_battery.md). A Enxada armazena 700 AP; as outras, 1.200.

***

## <Color id="gold">Destravando Habilidades</Color>

Uma ferramenta nova vem com a habilidade travada. Derrame um bloco-fonte de [Soro Eletrolítico de Algas](chemistry_introduction.md) e jogue a ferramenta nele. Após cerca de 7.5 segundos a ferramenta fica infundida de vez e o EAS é consumido.

Uma vez infundida, segure a ferramenta e use Shift + botão direito para ligar ou desligar sua habilidade. A ferramenta brilha enquanto a habilidade está ligada.

***

<Row>
  <ItemImage id="aquarine_steel_pickaxe"/>
  ### <Color id="aqua">Picareta</Color>
</Row>

Mina um quadrado 3x3 de pedra e outros blocos de picareta na face que você quebra, a 2 AP por bloco. Ela pula blocos que guardam entidade de bloco, como baús e máquinas.

Blocos quebrados por uma habilidade caem como se minerados com uma ferramenta comum, então desligue a habilidade quando quiser que Fortuna ou Toque Suave contem. Isso vale para o Machado e a Pá também.

Com a habilidade ligada, ela também é como você colhe um <ItemLink id="prismarine_crystal"/>: veja [Fragmentos de Cristal de Prismarinho](crystal_shards.md).

<RecipeFor id="aquarine_steel_pickaxe"/>

***

<Row>
  <ItemImage id="aquarine_steel_axe"/>
  ### <Color id="aqua">Machado</Color>
</Row>

Quebrar um tronco derruba todo tronco conectado a ele, a 2 AP por tronco, até a árvore cair ou o machado acabar.

<RecipeFor id="aquarine_steel_axe"/>

***

<Row>
  <ItemImage id="aquarine_steel_shovel"/>
  ### <Color id="aqua">Pá</Color>
</Row>

Cada bloco que ela minera custa 1 AP. Com a habilidade ligada ela cava um quadrado 3x3 de terra, areia, cascalho e qualquer outra coisa que uma pá mine, na face que você quebra, a 2 AP por bloco extra. Ela pula blocos que guardam entidade de bloco.

<RecipeFor id="aquarine_steel_shovel"/>

***

<Row>
  <ItemImage id="aquarine_steel_hoe"/>
  ### <Color id="aqua">Enxada</Color>
</Row>

Ara uma parcela 3x3 de terra ou grama em terra arada num único uso, a 2 AP por bloco.

<RecipeFor id="aquarine_steel_hoe"/>

***

<Row>
  <ItemImage id="aquarine_steel_sword"/>
  ### <Color id="aqua">Espada</Color>
</Row>

Com a habilidade ligada ela causa 70% mais dano enquanto tiver AP, e invoca um raio sobre o que atingir. Cada golpe então custa 10 AP.

<Color id="gold">Cuidado</Color>: o raio também atinge qualquer coisa a poucos blocos do alvo, você incluído, e pode iniciar incêndios.

<RecipeFor id="aquarine_steel_sword"/>