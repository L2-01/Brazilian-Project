---
navigation:
  title: Cabos
  icon: fluix_glass_cable
item_ids:
  - ae2:white_glass_cable
  - ae2:orange_glass_cable
  - ae2:magenta_glass_cable
  - ae2:light_blue_glass_cable
  - ae2:yellow_glass_cable
  - ae2:lime_glass_cable
  - ae2:pink_glass_cable
  - ae2:gray_glass_cable
  - ae2:light_gray_glass_cable
  - ae2:cyan_glass_cable
  - ae2:purple_glass_cable
  - ae2:blue_glass_cable
  - ae2:brown_glass_cable
  - ae2:green_glass_cable
  - ae2:red_glass_cable
  - ae2:black_glass_cable
  - ae2:fluix_glass_cable
  - ae2:white_covered_cable
  - ae2:orange_covered_cable
  - ae2:magenta_covered_cable
  - ae2:light_blue_covered_cable
  - ae2:yellow_covered_cable
  - ae2:lime_covered_cable
  - ae2:pink_covered_cable
  - ae2:gray_covered_cable
  - ae2:light_gray_covered_cable
  - ae2:cyan_covered_cable
  - ae2:purple_covered_cable
  - ae2:blue_covered_cable
  - ae2:brown_covered_cable
  - ae2:green_covered_cable
  - ae2:red_covered_cable
  - ae2:black_covered_cable
  - ae2:fluix_covered_cable
  - ae2:white_covered_dense_cable
  - ae2:orange_covered_dense_cable
  - ae2:magenta_covered_dense_cable
  - ae2:light_blue_covered_dense_cable
  - ae2:yellow_covered_dense_cable
  - ae2:lime_covered_dense_cable
  - ae2:pink_covered_dense_cable
  - ae2:gray_covered_dense_cable
  - ae2:light_gray_covered_dense_cable
  - ae2:cyan_covered_dense_cable
  - ae2:purple_covered_dense_cable
  - ae2:blue_covered_dense_cable
  - ae2:brown_covered_dense_cable
  - ae2:green_covered_dense_cable
  - ae2:red_covered_dense_cable
  - ae2:black_covered_dense_cable
  - ae2:fluix_covered_dense_cable
  - ae2:white_smart_cable
  - ae2:orange_smart_cable
  - ae2:magenta_smart_cable
  - ae2:light_blue_smart_cable
  - ae2:yellow_smart_cable
  - ae2:lime_smart_cable
  - ae2:pink_smart_cable
  - ae2:gray_smart_cable
  - ae2:light_gray_smart_cable
  - ae2:cyan_smart_cable
  - ae2:purple_smart_cable
  - ae2:blue_smart_cable
  - ae2:brown_smart_cable
  - ae2:green_smart_cable
  - ae2:red_smart_cable
  - ae2:black_smart_cable
  - ae2:fluix_smart_cable
  - ae2:white_smart_dense_cable
  - ae2:orange_smart_dense_cable
  - ae2:magenta_smart_dense_cable
  - ae2:light_blue_smart_dense_cable
  - ae2:yellow_smart_dense_cable
  - ae2:lime_smart_dense_cable
  - ae2:pink_smart_dense_cable
  - ae2:gray_smart_dense_cable
  - ae2:light_gray_smart_dense_cable
  - ae2:cyan_smart_dense_cable
  - ae2:purple_smart_dense_cable
  - ae2:blue_smart_dense_cable
  - ae2:brown_smart_dense_cable
  - ae2:green_smart_dense_cable
  - ae2:red_smart_dense_cable
  - ae2:black_smart_dense_cable
  - ae2:fluix_smart_dense_cable
  - ae2:toggle_bus
  - ae2:inverted_toggle_bus
---
Embora redes ME também sejam criadas por máquinas ME adjacentes, cabos são a forma primária de
estender uma rede ME por áreas maiores.

Cabos de cores diferentes podem ser usados para garantir que cabos adjacentes não se conectem entre si,
permitindo que os [canais](channels.md) sejam distribuídos de forma mais eficiente.

## Cabo ME

![Uma imagem do Cabo de Vidro](../../assets/large/glass_cable.png)

<ItemLink id="fluix_glass_cable" /> é o cabo mais simples de fazer, transfere energia
e até 8 [canais](channels.md). Ele vem em 17 cores diferentes, o padrão é
Fluix, e pode ser tingido de qualquer cor usando qualquer um dos 16 corantes.

Para fabricar cabos coloridos, cerque um corante de qualquer tipo com 8 cabos do mesmo
tipo (a cor dos cabos não importa, mas eles devem ser do mesmo tipo,
ME, Inteligente, etc.). Você também pode pintar cabos com qualquer pincel de tinta
compatível com Forge no mundo.

Você pode lavar qualquer cabo colorido com um balde de água para remover o corante.

Você pode cobrir o cabo com lã para criar <ItemLink id="fluix_covered_cable"/>, e fabricar <ItemLink
id="fluix_smart_cable"/> para ter uma ideia melhor do que está acontecendo com
seus [canais](channels.md).

<RecipeFor id="fluix_glass_cable" />

## Cabo Coberto

![Uma imagem de cabos cobertos.](../../assets/large/covered_cable.png)

A variante de cabo coberto não oferece vantagens de jogo sobre sua contraparte <ItemLink
id="fluix_glass_cable"/>. Ela pode, porém, ser usada
como uma escolha estética alternativa se você preferir o visual coberto.

Pode ser colorido da mesma forma que o <ItemLink
id="fluix_glass_cable"/>. Quatro <ItemLink
id="fluix_covered_cable"/> podem ser fabricados com
redstone e pedra luminosa para fazer <ItemLink
id="fluix_covered_dense_cable"/>.

<RecipeFor id="fluix_covered_cable" />

## Cabo Denso

![Uma imagem de cabo denso.](../../assets/large/dense_cable.png)Cabo de maior capacidade,
pode carregar 32 canais, ao contrário do cabo comum que só carrega 8.
No entanto, ele não suporta pontos, então você deve primeiro descer do cabo denso para um
cabo menor (como <ItemLink
id="fluix_glass_cable"/> ou <ItemLink
id="fluix_smart_cable"/>) antes de usar pontos ou
painéis. Mostra a carga de forma semelhante ao <ItemLink
id="fluix_smart_cable"/>, com cada linha acesa
representando quatro canais em uso.

<RecipeFor id="fluix_covered_dense_cable" />

## Cabo Inteligente

![Uma imagem de cabo inteligente.](../../assets/large/smart_cable.png)

Embora tenha alguma semelhança visual com o <ItemLink id="fluix_covered_cable"/>, ele
fornece função de diagnóstico ao visualizar o uso de canais nos cabos;
os canais aparecem como linhas coloridas acesas que correm ao longo da faixa preta nos
cabos, dando a você uma compreensão de como seus canais estão sendo usados na
sua rede. Os primeiros quatro canais aparecem como linhas na cor do
cabo; os quatro seguintes aparecem como linhas brancas.

Eles também podem ser coloridos da mesma forma que o <ItemLink
id="fluix_glass_cable"/>.

<RecipeFor id="fluix_smart_cable" />

## Ponto Interruptor

Um ponto que funciona de forma semelhante ao <ItemLink
id="fluix_glass_cable"/> ou a outros cabos, mas
permite que seu estado de conexão seja alternado via redstone. Isso permite cortar
uma seção de uma [Rede ME](../me-network.md).

Quando um sinal de redstone é fornecido, a parte ativa a conexão; o <ItemLink
id="inverted_toggle_bus"/> fornece o
comportamento inverso, desativando a conexão em vez disso.

<RecipeFor id="toggle_bus" />

Existe também uma versão invertida do ponto interruptor que desativa a conexão
quando um sinal de redstone é fornecido.

<RecipeFor id="inverted_toggle_bus" />
