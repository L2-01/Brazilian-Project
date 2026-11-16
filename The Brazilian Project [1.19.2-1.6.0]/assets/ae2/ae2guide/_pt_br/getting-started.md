---
navigation:
  title: Começando  (1.19+)
---

<div class="notification is-info">
  As informações a seguir se aplicam apenas ao Applied Energistics 2 no Minecraft
  1.19 e mais recente.
</div>

## Progressão Inicial

- Construa um <ItemLink id="charger" /> e alimente-o com uma <ItemLink id="vibration_chamber" /> ou geradores de outros
  mods. Você também pode alimentá-lo manualmente com uma <ItemLink id="crank" />.
- Coloque uma bússola do Vanilla no carregador e carregue-a para fabricar uma <ItemLink id="sky_compass" />.
- Use a bússola de meteoritos para encontrar meteoritos, que podem conter blocos de quartzo e drusas de quartzo.
- Para progredir, você precisa criar <ItemLink id="fluix_crystal" />. Você tem duas opções:
  - Use a bússola para encontrar um [meteorito](./features/meteorites.md), onde você pode encontrar
    algum <ItemLink id="fluix_crystal" />.
- Para fabricar os processadores necessários para máquinas mais avançadas, você precisará do <ItemLink id="inscriber" />. Cada tipo de
  processador tem uma prensa associada, que você encontrará em [meteoritos](./features/meteorites.md).

## Meu Primeiro Quartzo

O primeiro passo para começar no AE2 é adquirir Quartzo. O próprio AE2
adiciona o <ItemLink id="certus_quartz_crystal"/> e também usa
o <ItemLink id="minecraft:quartz"/> do vanilla. O primeiro nível da tecnologia do AE2, como
a <ItemLink id="certus_quartz_wrench"/>
, a <ItemLink id="certus_quartz_cutting_knife"/>
e as [ferramentas de Quartzo Certus](./features/simple-tools/quartz-tools.md), usa o <ItemLink id="certus_quartz_crystal" /> como
ingrediente principal de fabricação.

A principal forma de obter quartzo é quebrando agregados de cristais de quartzo. Eles crescem em drusas de quartzo de forma
semelhante à ametista do Vanilla. A drusa de quartzo se degrada ao gerar brotos, mas pode ser recarregada usando <ItemLink id="charged_certus_quartz_crystal" />
numa poça de água. Novas drusas de quartzo podem ser criadas da mesma forma usando um <ItemLink id="quartz_block" />.

Meteoritos às vezes contêm uma drusa de quartzo infalível.

## Certo, tenho um monte de Quartzo Certus e do Nether; como avanço?

Depois de investigar um pouco, você provavelmente percebeu que para subir na árvore tecnológica precisa
do <ItemLink id="fluix_crystal"/>. O <ItemLink id="fluix_crystal"/> é feito pelo seguinte
processo:

Jogue um <ItemLink id="charged_certus_quartz_crystal" />, um <ItemLink id="minecraft:quartz"/> e uma <ItemLink id="minecraft:redstone"/> numa poça de
água e espere. Isso criará um <ItemLink id="fluix_crystal" />.

Você pode criar o <ItemLink id="charged_certus_quartz_crystal"/> num Carregador, que pode ser alimentado
por uma <ItemLink id="vibration_chamber" /> cheia de carvão.

Como cultivar cristais sem aceleradores demora bastante, você deve investir seus primeiros cristais de fluix
construindo o máximo de <ItemLink id="quartz_growth_accelerator" /> que puder.

Depois disso, você está pronto para o próximo nível de tecnologia com um <ItemLink id="inscriber" />.

## Desbloqueando Tecnologia — Caçando as Últimas Peças

### Não consigo fazer nenhum dos circuitos, e as placas do Inscritor não têm receita. O AE2 está quebrado?

Não, o AE2 não está quebrado. As peças "finais" do quebra-cabeça do AE2 necessárias para subir na árvore tecnológica até as Redes ME são as
Prensas do Inscritor. São quatro prensas que você precisa (listadas em ordem de "nível"):

<ItemGrid>
  <ItemIcon id="silicon_press" />
  <ItemIcon id="logic_processor_press" />
  <ItemIcon id="calculation_processor_press" />
  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

Essas prensas são usadas para fazer os Circuitos necessários para as máquinas Tech 2 e além. Elas são encontradas aleatoriamente
em <ItemLink id="sky_stone_chest"/>, localizados dentro de Meteoritos. Os meteoritos surgem
aleatoriamente pelo mundo, normalmente no subterrâneo. Então, a caça começa!

Essa caça é um pouco menos sem rumo do que a busca pelo seu primeiro <ItemLink id="
charged_certus_quartz_crystal"/>. Você terá uma ferramenta para ajudar no caminho: a <ItemLink id="
sky_compass"/>. A Bússola apontará para o chunk onde o meteoro foi gerado, não para o bloco específico nem o
centro do meteoro. Você terá que cavar e procurar para encontrar o meteoro, e depois
desmontá-lo e achar o centro, onde o <ItemLink id="sky_stone_chest"/> estará
localizado.

### Consegui!

Depois disso é que a diversão começa. Agora você tem todas as ferramentas para começar a fazer as peças complexas que o Applied
Energistics oferece! Saia por aí e comece a encher gabinetes de dados.

## Tecnologia de Matter Energy: Redes ME e Armazenamento

### O que é Armazenamento ME?

Pronuncia-se Ême-Í e significa Matter Energy.

Matter Energy é o componente principal do Applied Energistics 2 — é como uma versão cientista-maluca de um baú
multibloco e pode revolucionar sua situação de armazenamento. O ME é extremamente diferente de outros sistemas de armazenamento do Minecraft e
pode exigir pensar fora da caixa para se acostumar; mas uma vez que você começa, enormes quantidades de armazenamento num
espaço minúsculo e vários terminais de acesso são só a ponta do iceberg do que se torna possível.

### O que preciso saber para começar?

Primeiro, o ME armazena itens dentro de outros itens, chamados Células de Armazenamento; há 4 níveis com quantidades
cada vez maiores de armazenamento. Para usar uma Célula de Armazenamento, ela deve ser colocada num <ItemLink id="chest"/>
ou num <ItemLink id="drive"/>.

<CategoryIndex category="Storage Cells" />

O <ItemLink id="chest"/> mostra o conteúdo da Célula assim que ela é colocada dentro, e você
pode adicionar e remover itens dele como se fosse um <ItemLink id="minecraft:chest"/>, com a diferença de que os itens
ficam realmente armazenados nas Células de Armazenamento, e não no <ItemLink id="chest"/> em si.

Embora o <ItemLink id="chest"/> seja uma ótima introdução ao conceito de ME, para realmente
aproveitá-lo você precisa montar uma [Rede ME](features/me-network.md).

### Como monto minha primeira rede?

Uma [Rede ME](features/me-network.md) é bem fácil de começar: você precisa de 2 coisas,
um <ItemLink id="chest"/> / ou

<ItemLink id="drive" />, e um <ItemLink id="terminal" /> ( ou <ItemLink
  id="
ae2:crafting_terminal"
/> ); você também vai precisar de algum tipo de cabo, como o <ItemLink
  id="
ae2:fluix_glass_cable"
/> para conectar o <ItemLink id="terminal" />.

Coloque tudo lado a lado e você tem a rede mais simples do mundo: armazenamento e acesso.

Você pode adicionar células de armazenamento ao <ItemLink id="drive"/> ou usar uma num <ItemLink id="
ae2:chest"/> para armazenar e acessar tudo pelo <ItemLink id="terminal"/>.

Talvez você queira adicionar mais <ItemLink id="terminal"/> em outros cômodos; para isso vai querer fazer
alguns <ItemLink id="fluix_glass_cable"/>; quaisquer Blocos ME acoplados
ao <ItemLink id="fluix_glass_cable"/> serão conectados à [Rede ME](features/me-network.md)

### Expandindo sua Rede

Você já tem armazenamento básico e acesso a ele — um bom começo, mas provavelmente vai querer
automatizar algum processamento.

Um ótimo exemplo é colocar um <ItemLink id="export_bus"/> no topo de uma fornalha para
despejar minérios e um <ItemLink id="import_bus"/>
na base da fornalha para extrair os minérios processados.

O <ItemLink id="export_bus"/> permite exportar itens da rede para o
inventário acoplado, enquanto o <ItemLink id="import_bus"/> importa itens do inventário acoplado para
a rede.

### Superando Limites

Nesse ponto você provavelmente está perto de 8 dispositivos; ao chegar a 9, terá que começar a
gerenciar [canais](features/me-network/channels.md). Muitos dispositivos, mas não todos, exigem um [canal](features/me-network/channels.md) para
funcionar. Se o dispositivo só lida com energia ou conectividade, como cabos, ele não exige
um [canal](features/me-network/channels.md). Qualquer coisa que use itens, ou os mova, exigirá.

Por padrão, a rede suporta 8 [canais](features/me-network/channels.md); ao ultrapassar esse limite, você precisará adicionar
um <ItemLink id="controller"/> à sua rede. Isso permite expandir bastante a rede.

Cada face do controlador emite 32 [canais](features/me-network/channels.md); o que está recebendo
esses [canais](features/me-network/channels.md) determina como eles serão usados. Por exemplo, se você colocar um <ItemLink id="
ae2:fluix_covered_dense_cable"/> ao lado do controlador, conseguirá transportar todos os 32
[canais](features/me-network/channels.md); porém, se colocar um <ItemLink id="drive"/> ao lado, ou
um cabo não denso, só terá 8 [canais](features/me-network/channels.md).

### Tunelamento

Suas coisas estão começando a andar, mas levar os [canais](features/me-network/channels.md)
onde você quer é meio chato. É hora de começar a usar o <ItemLink id="me_p2p_tunnel"/>.
Quando configurado para ME, ele permite mover [canais](features/me-network/channels.md) de ponto a ponto. Isso permite
mover até 32 [canais](features/me-network/channels.md) por par de <ItemLink id="me_p2p_tunnel"/>.

![Um exemplo de uso de Túneis P2P para mover canais.](assets/large/tunnelchannels.png)
