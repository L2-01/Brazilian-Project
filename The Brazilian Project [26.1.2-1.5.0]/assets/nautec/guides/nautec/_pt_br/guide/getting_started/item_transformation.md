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
  Um feixe de laser energizado transforma itens jogados nele em outra coisa.
</Column>

Jogue um item de modo que ele fique dentro de um feixe energizado, em qualquer ponto entre o bloco emissor e o receptor. Se uma receita de transformação corresponder ao item e a pureza do feixe for alta o bastante, o item se transforma após o tempo da receita. Nada precisa ser clicado, e a pilha inteira jogada se transforma de uma vez, com cada item de entrada dando a saída completa da receita: 3 Cristais de Prismarinho dão 6 Fragmentos de Cristal de Prismarinho.

O item precisa ficar no feixe pelo tempo completo. Se for empurrado para fora, ou o feixe perder energia mesmo por um instante, ele recomeça.

***

## <Color id="gold">Receitas</Color>

| Entrada | Saída | Pureza necessária | Tempo |
|---|---|---|---|
| Composto de Aço Aquarine | Lingote de Aço Aquarine | qualquer | 5 s |
| Composto de Aço Aquarine | 2 Lingotes de Aço Aquarine | 2.0 | 4 s |
| <ItemLink id="burnt_coil"/> | Bobina de Canalização de Laser | 1.5 | 10 s |
| Cristais de Prismarinho | 2 <ItemLink id="prismarine_crystal_shard"/> | 2.0 | 8 s |
| <ItemLink id="cast_iron_block"/> | 4 <ItemLink id="gear"/> | 2.5 | 8 s |

Quando mais de uma receita corresponde, o feixe usa a de maior pureza que ele atende, então um feixe de 2.0 ou mais transforma cada composto em 2 barras.

O JEI lista toda transformação, incluindo as adicionadas por outros mods ou datapacks, em Transformação de Itens.

Para automatizá-las, a [Matriz de Fabricação a Laser](laser_crafting_matrix.md) faz toda transformação desta página dentro de uma máquina, alimentada por canos.

***

## <Color id="gold">Aço Aquarine</Color>

O Aço Aquarine é a primeira coisa a fazer. Seu composto não exige pureza, então qualquer feixe de <ItemLink id="aquatic_catalyst"/> em funcionamento serve: aponte o catalisador para um receptor como um <ItemLink id="prismarine_laser_relay"/> e jogue o composto no chão sob o feixe.

<Recipe id="nautec:aquarine_steel_compound"/>

O [Misturador](nautec:laser_chemistry/mixer.md) faz o composto em massa mais adiante.

***

## <Color id="gold">Pureza Maior</Color>

A Bobina de Canalização de Laser e os Fragmentos de Cristal de Prismarinho precisam de mais pureza que os 1.2 de um catalisador. Use um destes:

* Um <ItemLink id="prismarine_crystal"/>, pureza 3.0. Veja a montagem abaixo.
* Uma <ItemLink id="bacterial_fuel_cell"/>, até 2.5 dependendo da sua colônia.
* Uma <ItemLink id="focusing_lens"/> no caminho do feixe, que adiciona 0.5 ao feixe que a atravessa direto, até 2.0 (`lensPurityBonus`).
* <ItemLink id="budding_prismarine"/> encostada no catalisador, que adiciona 0.1 por bloco, até 2.0. Veja [Energia de Laser](laser_power.md).

Um item é julgado pela pureza do feixe em que está. Num feixe saindo de uma lente, essa é a pureza depois que a lente a elevou. Um catalisador com Fragmentos de Cristal de Prismarinho disparando através de uma lente dá 1.7 no feixe de saída da lente — o bastante para a bobina.

***

## <Color id="gold">Sob um Cristal de Prismarinho</Color>

Todo Geodo de Cristal (veja [Estruturas](structures.md)) tem um Cristal de Prismarinho de pé sobre uma abertura (um bloco num geodo de pedra, dois num de ardosiabissal), que é a montagem necessária.

* Coloque um Catalisador Aquático nivelado com qualquer bloco do cristal, de frente para ele pela lateral. Mantenha-o a até 16 blocos sem nada sólido no caminho.
* Carregue o catalisador com qualquer combustível. O bloco de baixo do cristal agora dispara um feixe de pureza 3.0 direto para o chão.
* Jogue seus itens na abertura sob o cristal de modo que fiquem no chão dentro daquele feixe.

Mantenha o catalisador abastecido. Quando ele seca, os feixes do cristal param e todo item neles recomeça.

<Color id="gold">Dica</Color>: feixes queimam o que estiver parado neles. Jogue os itens pela lateral em vez de passar por baixo do cristal.