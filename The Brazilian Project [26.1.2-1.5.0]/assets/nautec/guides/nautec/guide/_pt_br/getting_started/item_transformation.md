---
navigation:
  title: Transformação de Itens
  icon: nautec:aquarine_steel_ingot
  position: 2
  parent: getting_started/getting_started-index.md
---

# <Color id="light_purple">Transformação de Itens</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquarine_steel_ingot" scale="2"/>
  Um feixe de laser energizado transforma itens soltos nele em outra coisa.
</Column>

Jogue um item de modo que ele fique dentro de um feixe energizado, em qualquer ponto entre o bloco emissor e o receptor. Se uma receita de transformação corresponder ao item e a pureza do feixe for alta o bastante, o item muda após o tempo da receita. Nada precisa de clique, e a pilha inteira solta muda de uma vez, com cada item de entrada dando a saída completa da receita: 3 Cristais de Prismarinho dão 6 Fragmentos de Cristal de Prismarinho.

O item precisa ficar no feixe pelo tempo todo. Se for empurrado para fora, ou o feixe perder energia nem que por um instante, ele recomeça.

***

## <Color id="gold">Receitas</Color>

| Entrada | Saída | Pureza necessária | Tempo |
|---|---|---|---|
| Composto de Aço Aquarine | Lingote de Aço Aquarine | qualquer | 5 s |
| Composto de Aço Aquarine | 2 Lingotes de Aço Aquarine | 2.0 | 4 s |
| <ItemLink id="burnt_coil"/> | Bobina de Canalização de Laser | 1.5 | 10 s |
| Cristais de Prismarinho | 2 <ItemLink id="prismarine_crystal_shard"/>s | 2.0 | 8 s |
| <ItemLink id="cast_iron_block"/> | 4 <ItemLink id="gear"/>s | 2.5 | 8 s |

Quando mais de uma receita corresponde, o feixe usa a de maior pureza que ele atende, então um feixe de 2.0 ou mais transforma cada composto em 2 lingotes.

O JEI lista toda transformação, incluindo as adicionadas por outros mods ou datapacks, em Transformação de Itens.

Para automatizá-las, a [Matriz de Fabricação a Laser](laser_crafting_matrix.md) faz toda transformação desta página dentro de uma máquina, alimentada por tubos.

***

## <Color id="gold">Aço Aquarine</Color>

O Aço Aquarine é a primeira coisa a fazer. Seu composto não precisa de pureza, então qualquer feixe de <ItemLink id="aquatic_catalyst"/> ativo serve: aponte o catalisador para um receptor como um <ItemLink id="prismarine_laser_relay"/> e jogue o composto no chão sob o feixe.

<Recipe id="nautec:aquarine_steel_compound"/>

O [Misturador](nautec:laser_chemistry/mixer.md) faz o composto em massa mais adiante.

***

## <Color id="gold">Pureza Maior</Color>

A Bobina de Canalização de Laser e os Fragmentos de Cristal de Prismarinho precisam de mais pureza que o 1.2 do catalisador. Use uma destas opções:

* Um <ItemLink id="prismarine_crystal"/>, pureza 3.0. Veja o arranjo abaixo.
* Uma <ItemLink id="bacterial_fuel_cell"/>, até 2.5 dependendo de sua colônia.
* Uma <ItemLink id="focusing_lens"/> no caminho do feixe, que adiciona 0.5 ao feixe que a atravessa reto, até 2.0 (`lensPurityBonus`).
* <ItemLink id="budding_prismarine"/> encostada no catalisador, que adiciona 0.1 por bloco, até 2.0. Veja [Energia de Laser](laser_power.md).

Um item é julgado pela pureza do feixe em que ele está. Num feixe saindo de uma lente, isso é a pureza depois que a lente a elevou. Um catalisador com Fragmentos de Cristal de Prismarinho disparando através de uma lente dá 1.7 no feixe de saída da lente, o bastante para a bobina.

***

## <Color id="gold">Sob um Cristal de Prismarinho</Color>

Todo Geodo de Cristal (veja [Estruturas](structures.md)) tem um Cristal de Prismarinho ereto sobre um vão aberto (um bloco num geodo de pedra, dois num de ardosiabissal), que é o arranjo necessário.

* Posicione um Catalisador Aquático na mesma altura de qualquer bloco do cristal, de frente para ele pelo lado. Mantenha-o a até 16 blocos sem nada sólido no meio.
* Carregue o catalisador com qualquer combustível. O bloco de baixo do cristal agora dispara um feixe de pureza 3.0 reto para baixo no piso.
* Jogue seus itens no vão sob o cristal para que fiquem no chão dentro desse feixe.

Mantenha o catalisador alimentado. Quando ele secar os feixes do cristal param e todo item neles recomeça.

<Color id="gold">Dica</Color>: feixes queimam o que estiver dentro deles. Jogue os itens pelo lado em vez de entrar debaixo do cristal.
