---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Cabos
  icon: fluix_glass_cable
  position: 110
categories:
- network infrastructure
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
---

# Cabos

<GameScene zoom="3" background="transparent">
  <ImportStructure src="../assets/assemblies/cables.snbt" />
  <IsometricCamera yaw="180" pitch="30" />
</GameScene>

Embora redes ME também sejam criadas por máquinas ME adjacentes, cabos são a forma primária de
estender uma rede ME por áreas maiores.

Cabos de cores diferentes podem ser usados para garantir que cabos adjacentes não se conectem entre si,
permitindo que [canais](../ae2-mechanics/channels.md) sejam distribuídos de forma mais eficiente. Eles também afetam a cor dos terminais conectados a eles,
então você não precisa ter todos os seus terminais roxos. Cabos fluix se conectam a todas as outras cores.

Vale notar que **CANAIS NÃO TÊM NADA A VER COM A COR DO CABO**. Tudo que a cor do cabo faz é impedir que cabos se conectem.

## Uma Nota Importante

**Se você é novo no AE2 e não conhece canais, use Cabo ME Inteligente e Cabo ME Denso Inteligente onde puder.
Eles mostrarão como os canais são roteados pela sua rede, tornando seu comportamento mais compreensível.**

## Outra Nota

**Estes não são canos para itens, fluido, energia, etc.** Eles não têm inventário interno, provedores de padrões e máquinas não "empurram"
para dentro deles; tudo que fazem é conectar [dispositivos](../ae2-mechanics/devices.md) AE2 entre si numa rede.

## Cabo ME

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/fluix_glass_cable.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="fluix_glass_cable" /> é o cabo mais simples de fazer, e transfere energia
e até 8 [canais](../ae2-mechanics/channels.md). Vem em 17 cores diferentes, sendo a padrão
Fluix, e pode ser tingido de qualquer cor usando qualquer um dos 16 corantes.

Para fabricar cabos coloridos, cerque um corante de qualquer tipo com 8 cabos do mesmo
tipo (a cor dos cabos não importa, mas eles devem ser do mesmo tipo:
ME, Inteligente, etc.). Você também pode pintar cabos com qualquer pincel de tinta
compatível com Forge no mundo.

Você pode fabricar qualquer cabo colorido com um balde de água para remover o corante.

Você pode cobrir o cabo com lã para criar <ItemLink id="fluix_covered_cable" />, e fabricar <ItemLink id="fluix_smart_cable" /> para ter uma ideia melhor do que está acontecendo com
seus [canais](../ae2-mechanics/channels.md).

<RecipeFor id="fluix_glass_cable" />

<RecipeFor id="blue_glass_cable" />

## Cabo Coberto

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

A variante de cabo coberto não oferece benefícios de gameplay sobre sua contraparte <ItemLink id="fluix_glass_cable" />. Ela pode, no entanto, ser usada
como uma escolha estética alternativa se você preferir o visual coberto.

Pode ser colorido da mesma maneira que o <ItemLink id="fluix_glass_cable" />. Quatro <ItemLink id="fluix_covered_cable" /> podem ser fabricados com
redstone e pedra-luminosa para fazer <ItemLink id="fluix_covered_dense_cable" />.

<Recipe id="network/cables/covered_fluix" />

<RecipeFor id="blue_covered_cable" />

## Cabo Denso

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Cabo de maior capacidade. Pode carregar 32 canais, ao contrário dos cabos padrão que só carregam 8.
No entanto, ele não suporta pontos, então você deve primeiro descer de denso para um
cabo menor (como <ItemLink id="fluix_glass_cable" /> ou <ItemLink id="fluix_smart_cable" />) antes de usar pontos ou
paineis.

Cabos densos substituem levemente o comportamento de "caminho mais curto" dos canais: canais tomarão o caminho mais curto até um
cabo denso, e então o caminho mais curto através daquele cabo denso até um controlador.

<Recipe id="network/cables/dense_covered_fluix" />

<RecipeFor id="blue_covered_dense_cable" />

## Cabo Inteligente

<Row>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
</Row>

Embora tenham alguma semelhança com o <ItemLink id="fluix_covered_cable" /> na aparência, eles
fornecem função de diagnóstico ao visualizar o uso de canais nos cabos;
os canais aparecem como linhas coloridas acesas que correm ao longo da faixa preta nos
cabos, dando a você uma compreensão de como seus canais estão sendo usados na
sua rede. Em Cabos Inteligentes comuns, os primeiros quatro canais aparecem como linhas na cor do
cabo, os quatro seguintes aparecem como linhas brancas. No Cabo Denso Inteligente, cada faixa representa 4 canais.

Em redes com um <ItemLink id="controller" />, as linhas nos cabos mostram o caminho exato que os canais percorrem.

Cabos inteligentes em redes ad hoc, em vez disso, mostram o número de canais em uso na rede toda em vez do número de canais fluindo por aquele cabo específico.

Estes também podem ser coloridos da mesma maneira que o <ItemLink id="fluix_glass_cable" />.

<Recipe id="network/cables/smart_fluix" />

<Recipe id="network/cables/dense_smart_fluix" />

<RecipeFor id="blue_smart_cable" />
