---
navigation:
  title: Começando  (1.19+)
---

<div class="notification is-info">
  As informações a seguir se aplicam apenas ao Applied Energistics 2 no Minecraft
  1.19 e mais recentes.
</div>

## Progressão no Início do Jogo

- Construa um <ItemLink id="charger" /> e alimente-o com uma <ItemLink id="vibration_chamber" /> ou geradores de outros
  mods. Você também pode energizá-lo à mão usando uma <ItemLink id="crank" />.
- Coloque uma bússola vanilla no carregador e carregue-a para criar uma <ItemLink id="sky_compass" />.
- Use a bússola de meteoritos para encontrar meteoritos, que têm chance de conter blocos de quartzo e drusas de quartzo.
- Para progredir, você precisa criar <ItemLink id="fluix_crystal" />. Você tem duas opções:
  - Use a bússola para encontrar um [meteorito](./features/meteorites.md), onde você pode encontrar
    alguns <ItemLink id="fluix_crystal" />.
- Para fabricar os processadores necessários para máquinas mais avançadas, você precisará do <ItemLink id="inscriber" />. Cada tipo de
  processador tem uma prensa associada, que você encontrará em [meteoritos](./features/meteorites.md).

## Meu Primeiríssimo Quartzo

O primeiro passo para começar no AE2 é obter Quartzo. O próprio AE2
adiciona o <ItemLink id="certus_quartz_crystal"/> e também faz uso do
<ItemLink id="minecraft:quartz"/> vanilla. O primeiro nível da tecnologia do AE2, como a
<ItemLink id="certus_quartz_wrench"/>
, a <ItemLink id="certus_quartz_cutting_knife"/>
e as [ferramentas de Quartzo Certus](./features/simple-tools/quartz-tools.md), usa o <ItemLink id="certus_quartz_crystal" /> como
ingrediente principal de fabricação.

A principal forma de obter quartzo é quebrando agregados de cristal de quartzo. Eles crescem em drusas de quartzo de forma
semelhante à ametista do vanilla. A drusa de quartzo se degrada ao gerar brotos, mas pode ser recarregada usando <ItemLink id="charged_certus_quartz_crystal" />
numa poça d'água. Novas drusas de quartzo podem ser criadas da mesma forma usando um <ItemLink id="quartz_block" />.

Meteoritos às vezes contêm uma drusa de quartzo infalível.

## Certo, tenho um monte de Quartzo Certus e do Nether; como eu progrido?

Depois de investigar um pouco, você provavelmente notou que para subir na árvore tecnológica você
precisa de <ItemLink id="fluix_crystal"/>. <ItemLink id="fluix_crystal"/> são feitos pelo seguinte
processo:

Jogue <ItemLink id="charged_certus_quartz_crystal" />, <ItemLink id="minecraft:quartz"/> e <ItemLink id="minecraft:redstone"/> numa poça
d'água e espere. Isso criará <ItemLink id="fluix_crystal" />.

Você pode criar <ItemLink id="charged_certus_quartz_crystal"/> num Carregador, que pode ser energizado
por uma <ItemLink id="vibration_chamber" /> cheia de carvão.

Como o crescimento de cristais sem aceleradores demora bastante, você deve investir seus primeiros cristais de fluix em
construir o máximo de <ItemLink id="quartz_growth_accelerator" /> que puder.

Depois disso, você está pronto para começar o próximo nível de tecnologia com um <ItemLink id="inscriber" />.

## Desbloqueando Tecnologia - Caçando as Últimas Peças

### Não consigo fazer nenhum dos circuitos, e as placas do Inscritor não têm receita. O AE2 está quebrado?

Não, o AE2 não está quebrado. As peças "finais" do quebra-cabeça do AE2 necessárias para subir na árvore tecnológica até as Redes ME são as
Prensas do Inscritor. Existem quatro prensas que você precisa (listadas em ordem de "nível"):

<ItemGrid>
  <ItemIcon id="silicon_press" />
  <ItemIcon id="logic_processor_press" />
  <ItemIcon id="calculation_processor_press" />
  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

Essas prensas são usadas para fazer os circuitos necessários para as máquinas de Tech 2 em diante. Elas são encontradas aleatoriamente
em <ItemLink id="sky_stone_chest"/>, que ficam dentro de meteoritos. Meteoritos surgem aleatoriamente
pelo mundo, normalmente no subsolo. Então, que comece a caçada!

Essa caçada é um pouco menos sem rumo que a busca pelo seu primeiro <ItemLink id="
charged_certus_quartz_crystal"/>. Você terá uma ferramenta para ajudar no caminho: a <ItemLink id="
sky_compass"/>. A bússola apontará para o chunk em que o meteoro foi gerado, não para o bloco específico nem para o
centro do meteoro em si. Você terá que cavar e procurar para encontrar o meteoro, e depois
desmontá-lo e achar o centro, que é onde o <ItemLink id="sky_stone_chest"/> estará
localizado.

### Eu consegui!

Depois disso é que a diversão começa. Agora você tem todas as ferramentas para começar a fabricar as peças complexas que o Applied
Energistics tem a oferecer! Vá lá e comece a encher unidades de armazenamento de dados.

## Tecnologia de Energia de Matéria: Redes ME e Armazenamento

### O que é o Armazenamento ME?

É pronunciado "ême-i", e significa Matter Energy (Energia de Matéria).

Energia de Matéria é o componente principal do Applied Energistics 2; é como uma versão de cientista maluco de um baú multibloco,
e pode revolucionar sua situação de armazenamento. O ME é extremamente diferente de outros sistemas de armazenamento no Minecraft e
pode exigir um pouco de pensamento fora da caixa para se acostumar. Mas uma vez que você comece, quantidades vastas de armazenamento em
espaço, e múltiplos terminais de acesso são apenas a ponta do iceberg do que se torna possível.

### O que eu preciso saber para começar?

Primeiro, o ME armazena itens dentro de outros itens, chamados Células de Armazenamento; existem 4 níveis com quantidades de
armazenamento cada vez maiores. Para usar uma Célula de Armazenamento, ela deve ser colocada dentro de um <ItemLink id="chest"/>
ou de um <ItemLink id="drive"/>.

<CategoryIndex category="Storage Cells" />

O <ItemLink id="chest"/> mostra o conteúdo da célula assim que ela é colocada dentro, e você
pode adicionar e remover itens dele como se fosse um <ItemLink id="minecraft:chest"/>, com a diferença de que os itens são
na verdade armazenados nas células de armazenamento, e não no próprio <ItemLink id="chest"/>.

Embora o <ItemLink id="chest"/> seja uma ótima forma de se introduzir ao conceito de ME, para realmente
aproveitá-lo você precisa montar uma [Rede ME](features/me-network.md).

### Como eu monto minha primeira rede?

Uma [Rede ME](features/me-network.md) é bem fácil de começar, você precisa de 2 coisas:
um <ItemLink id="chest"/> / ou

<ItemLink id="drive" /> e um <ItemLink id="terminal" /> (ou <ItemLink
  id="
ae2:crafting_terminal"
/> ). Você também vai precisar de algum tipo de cabo, como <ItemLink
  id="
ae2:fluix_glass_cable"
/>, para ligar o <ItemLink id="terminal" />.

Coloque tudo isso um ao lado do outro e você tem a rede mais simples do mundo, com armazenamento e acesso.

Você pode adicionar células de armazenamento ao <ItemLink id="drive"/>, ou usar uma num <ItemLink id="
ae2:chest"/> para armazenamento, e acessar tudo pelo <ItemLink id="terminal"/>.

Talvez você queira adicionar mais <ItemLink id="terminal"/> em outras salas; para isso vai querer fazer
alguns <ItemLink id="fluix_glass_cable"/> — quaisquer blocos ME ligados
a <ItemLink id="fluix_glass_cable"/> ficarão conectados à [Rede ME](features/me-network.md).

### Expandindo sua Rede

Então você tem algum armazenamento básico e acesso a ele — é um bom começo, mas provavelmente você vai querer
automatizar algum processamento.

Um ótimo exemplo disso é colocar um <ItemLink id="export_bus"/> em cima de uma fornalha para
despejar minérios, e um <ItemLink id="import_bus"/>
na parte de baixo da fornalha para extrair os minérios fundidos.

O <ItemLink id="export_bus"/> permite exportar itens da rede para o inventário
anexado, enquanto o <ItemLink id="import_bus"/> importa itens do inventário anexado para
a rede.

### Superando Limites

Nesse ponto você provavelmente está chegando perto de uns 8 dispositivos; ao atingir 9 dispositivos você terá que começar a
gerenciar [canais](features/me-network/channels.md). Muitos dispositivos, mas não todos, exigem um [canal](features/me-network/channels.md) para
funcionar. Se o dispositivo lida apenas com energia ou conectividade, como cabos, ele não exige
um [canal](features/me-network/channels.md). Qualquer coisa que use itens ou os mova de lugar, exige.

Por padrão, a rede suporta 8 [canais](features/me-network/channels.md); ao ultrapassar esse limite, você terá que adicionar
um <ItemLink id="controller"/> à sua rede. Isso permite expandir bastante sua rede.

Cada face do controlador emite 32 [canais](features/me-network/channels.md); o que estiver aceitando
esses [canais](features/me-network/channels.md) determina como eles serão usados. Por exemplo, se você colocar um <ItemLink id="
ae2:fluix_covered_dense_cable"/> ao lado do controlador, conseguirá transportar todos os 32
[canais](features/me-network/channels.md); porém, se colocar um <ItemLink id="drive"/> ao lado, ou um cabo
não denso, você terá apenas 8 [canais](features/me-network/channels.md).

### Tunelamento

Então você está começando, mas levar os [canais](features/me-network/channels.md)
até onde você quer é meio chato. É hora de começar a usar <ItemLink id="me_p2p_tunnel"/>.
Quando configurados para ME, eles permitem mover [canais](features/me-network/channels.md) de ponto a ponto. Isso permite
mover até 32 [canais](features/me-network/channels.md) por par de <ItemLink id="me_p2p_tunnel"/>.

![Um exemplo de uso de Túneis P2P para mover canais.](assets/large/tunnelchannels.png)
