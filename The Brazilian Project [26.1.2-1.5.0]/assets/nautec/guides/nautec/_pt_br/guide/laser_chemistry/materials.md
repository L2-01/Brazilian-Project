---
navigation:
  title: Aço Aquarine e Ferro Fundido
  icon: nautec:aquarine_steel_ingot
  position: 2
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:aquarine_steel_compound
  - nautec:aquarine_steel_ingot
  - nautec:aquarine_steel_block
  - nautec:cast_iron_compound
  - nautec:cast_iron_ingot
  - nautec:cast_iron_nugget
  - nautec:cast_iron_rod
  - nautec:cast_iron_block
  - nautec:laser_channeling_coil
  - nautec:whisk
  - nautec:broken_whisk
  - nautec:oil_barrel
---

# <Color id="light_purple">Aço Aquarine e Ferro Fundido</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquarine_steel_ingot" scale="2"/>
  Os metais e peças de que a maioria das máquinas do NauTec é feita.
</Column>

## <Color id="gold">Aço Aquarine</Color>

<Row>
  <ItemImage id="aquarine_steel_compound"/>
  ### <Color id="aqua">Composto de Aço Aquarine</Color>
</Row>

Fabrique-o à mão, ou faça-o no [Misturador](mixer.md) com Água Salgada, que dá mais composto pelo mesmo ferro bruto. O JEI mostra a receita do Misturador.

<Recipe id="nautec:aquarine_steel_compound"/>

<Row>
  <ItemImage id="aquarine_steel_ingot"/>
  ### <Color id="aqua">Lingote de Aço Aquarine</Color>
</Row>

Jogue o composto em qualquer feixe de laser energizado e ele vira um lingote após 5 segundos. Qualquer pureza funciona, então um Catalisador Aquático basta. Um feixe de pureza 2.0 ou maior dá 2 lingotes por composto em 4 segundos. Veja [Transformação de Itens](nautec:getting_started/item_transformation.md) para a montagem.

<Row>
  <ItemImage id="aquarine_steel_block"/>
  ### <Color id="aqua">Bloco de Aço Aquarine</Color>
</Row>

Armazenamento para nove lingotes.

<RecipeFor id="aquarine_steel_block"/>

***

## <Color id="gold">Ferro Fundido</Color>

<Row>
  <ItemImage id="cast_iron_compound"/>
  ### <Color id="aqua">Composto de Ferro Fundido</Color>
</Row>

<Recipe id="nautec:cast_iron_compound"/>

<Row>
  <ItemImage id="cast_iron_ingot"/>
  ### <Color id="aqua">Lingote de Ferro Fundido</Color>
</Row>

Fundir o composto numa Fornalha, ou duas vezes mais rápido num Alto-Forno.

<Recipe id="nautec:cast_iron_ingot_blasting"/>

Ferro velho do leito marinho também funde: uma Âncora dá 11 lingotes e um Barril de Petróleo dá 5.

<Recipe id="nautec:cast_iron_ingot_from_oil_barrel_blasting"/>

<Row>
  <ItemImage id="cast_iron_rod"/>
  ### <Color id="aqua">Haste de Ferro Fundido</Color>
</Row>

Usada nas ferramentas de Aço Aquarine, na Estação de Pesca, na Parede do Dreno do Mar Profundo, no Barril de Petróleo e no Batedor.

<Recipe id="nautec:cast_iron_rod"/>

<Row>
  <ItemImage id="cast_iron_nugget"/>
  ### <Color id="aqua">Pepita de Ferro Fundido</Color>
</Row>

Nove por lingote, e vice-versa. Pepitas consertam um Batedor Quebrado.

<Row>
  <ItemImage id="cast_iron_block"/>
  ### <Color id="aqua">Bloco de Ferro Fundido</Color>
</Row>

Armazenamento para nove lingotes.

<Recipe id="nautec:cast_iron_block_from_ingots"/>

<Row>
  <ItemImage id="oil_barrel"/>
  ### <Color id="aqua">Barril de Petróleo</Color>
</Row>

Um tambor de ferro fundido que guarda até 8.000 mB de petróleo, do NauTec ou de qualquer outro mod (qualquer coisa na marcador `c:oil`). Clique nele com o botão direito para abrir ou fechar sua tampa; canos só alcançam o Petróleo enquanto a tampa está aberta. Funda-o em Lingotes de Ferro Fundido. Mine-o com uma picareta para recolhê-lo.

<Recipe id="nautec:oil_barrel"/>

***

## <Color id="gold">Peças de Máquina</Color>

<Row>
  <ItemImage id="laser_channeling_coil"/>
  ### <Color id="aqua">Bobina de Canalização de Laser</Color>
</Row>

Feita de uma <ItemLink id="burnt_coil"/> por Transformação de Itens: 10 segundos num feixe de pureza 1.5 ou maior. Um Catalisador Aquático para em 1.2, então ou dispare o catalisador num <ItemLink id="prismarine_crystal"/> e use o feixe que sai dele, ou passe um feixe a fragmentos de cristal direto por uma <ItemLink id="focusing_lens"/>.

A bobina entra no Carregador, na Bateria Prismática, na maioria das ferramentas de Aço Aquarine e em muitas máquinas mais adiante.

<Row>
  <ItemImage id="broken_whisk"/>
  ### <Color id="aqua">Batedor Quebrado</Color>
</Row>

Afogados às vezes deixam um, zonas de pesca de sorte podem revelar um como tesouro, e baús de ruína oceânica e de posto de pesquisa podem conter um.

<Row>
  <ItemImage id="whisk"/>
  ### <Color id="aqua">Batedor</Color>
</Row>

A peça de agitação do [Misturador](mixer.md). Conserte um Batedor Quebrado com quatro Pepitas de Ferro Fundido, ou fabrique um novo com Hastes de Ferro Fundido, um Fragmento de Cristal de Prismarinho e um Lingote de Aço Aquarine.

<Recipe id="nautec:whisk"/>
<Recipe id="nautec:whisk_from_cast_iron"/>