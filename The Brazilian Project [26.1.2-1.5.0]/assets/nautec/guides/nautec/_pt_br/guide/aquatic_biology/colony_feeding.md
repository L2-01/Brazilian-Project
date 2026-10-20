---
navigation:
  title: Alimentação de Colônias
  icon: minecraft:bone_block
  position: 9
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Alimentação de Colônias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="minecraft:bone_block" scale="2"/>
  Nutrientes nos slots de nutriente de um reator impedem suas colônias de envelhecer.
</Column>

Funciona igual no [Biorreator](bio_reactor.md) e no [Biorreator Industrial](industrial_bio_reactor.md).

***

## <Color id="gold">A Reserva de Nutriente</Color>

Todo slot de colônia tem uma reserva de nutriente, mostrada como a barra fina ao lado da colônia. Enquanto a colônia trabalha ela gasta um tique de reserva por tique em vez de envelhecer. Quando a reserva esvazia, o reator pega um nutriente correspondente dos seus slots de nutriente e adiciona os tiques daquela receita à reserva. Toda linhagem incluída ganha 1.200 tiques, um minuto de trabalho, de cada item, exceto que um bloco de armazenamento dá nove vezes isso.

Então cada colônia trabalhando come um nutriente por minuto. A reserva só drena enquanto a colônia trabalha: um reator sem energia suficiente, ou uma colônia cujo slot de saída está cheio, não gasta nada. Uma [Melhoria de Eficiência do Reator](reactor_upgrades.md) faz cada item durar mais.

Paire na barra para ver quantos segundos restam. Com reserva vazia e nenhum nutriente correspondente a barra lê "Sem nutrientes: a colônia está envelhecendo", e a colônia envelhece como descrito em [Stats de Bactérias](bacteria_stats.md). Uma colônia Senescente faminta encolhe 2% do seu tamanho por segundo trabalhado, e um único nutriente para isso na hora. Alimentar nunca zera a idade de uma colônia; só a [Incubadora](incubator.md) faz isso.

***

## <Color id="gold">Qual Nutriente</Color>

Cada linhagem tem seu próprio nutriente, e por padrão é o mesmo item que a linhagem come na Incubadora. A categoria Alimentação de Colônias do JEI lista todos: procure uma linhagem para ver seu nutriente, ou procure os usos de um item para ver quais linhagens ele alimenta. Alguns exemplos:

| Linhagem | Nutriente |
|---|---|
| Litófilas | Pedra |
| Silicófilas e Halotróficas | Areia |
| Lipófilas | Polpa de Algas |
| Calciófilas | Bloco de Ossos |
| Micróbios Carmesins | Nicélio Carmesim |
| Carbófagas | qualquer minério de carvão |
| Ferrófilas | qualquer minério de ferro |
| Adamantófilas | qualquer minério de diamante |
| Plumbófilas | lingotes de chumbo |

Linhagens para metais e gemas de outros mods comem a lingote ou gema que produzem, então você pode devolver uma pequena parte da saída de um reator ao seu slot de nutriente.

Além do seu próprio nutriente, toda linhagem que tem um também come o item que produz e o bloco de armazenamento daquele item. Ferrófilas aceitam Lingotes de Ferro e Blocos de Ferro além de minério de ferro, Rizobactérias aceitam Fardos de Feno além de trigo, e uma linhagem de estanho aceita blocos de estanho. O item que ela produz alimenta tanto quanto seu próprio nutriente, e um bloco de armazenamento nove vezes mais. Isso cobre linhagens de outros mods e linhagens feitas com `/nautec bacteria generate` também. O JEI as lista junto das demais.

Cianobactérias, Halobactérias, Metanogênicas e Termófilas não têm nutriente, então sempre envelhecem enquanto trabalham.

***

## <Color id="gold">Slots de Nutriente</Color>

O Biorreator tem 2 slots de nutriente e o Biorreator Industrial tem 3. Eles só aceitam itens que alimentam alguma linhagem. Quando uma colônia precisa de alimento, o reator verifica os slots em ordem e tira do primeiro que contém o nutriente daquela colônia, então uma pilha alimenta toda colônia daquela linhagem.

Cada slot comporta um tipo de item, então um Biorreator pode alimentar no máximo dois nutrientes diferentes por vez e o Biorreator Industrial três. Encha um reator com linhagens que compartilham nutrientes, ou com não mais linhagens que slots de nutriente, se toda colônia deve ficar alimentada. Um nutriente que nada no reator come só ocupa um slot.

***

## <Color id="gold">Automatizando Nutrientes</Color>

Funis e canos podem inserir nutrientes:

* Biorreator: pelo topo do bloco do Biorreator, por exemplo com um funil em cima dele, ou com um cano na parte de baixo da base.
* Biorreator Industrial: por qualquer face externa de qualquer um dos seus blocos, por exemplo com um funil no teto.

A automação coloca nutrientes só nos slots de nutriente e melhorias só nos slots de melhoria, e nunca tira nenhum dos dois de volta. Um baú de nutrientes alimentando e a saída sendo puxada bastam para rodar um reator indefinidamente.

***

## <Color id="gold">Mudando a Alimentação num Pacote</Color>

A alimentação é dado. Cada regra é uma receita do tipo `nautec:colony_feeding`, e as incluídas estão em `data/nautec/recipe/colony_feeding/<strain>.json`, então um datapack pode substituí-las ou adicionar mais.

| Campo | Significado |
|---|---|
| `bacteria` | Um id de linhagem, uma tag de bactérias escrita com `#`, ou omitido para corresponder a toda linhagem. |
| `ingredient` | Um objeto contendo o `ingredient` do item e um `count` opcional (padrão 1). O slot deve conter pelo menos aquela quantidade, e uma alimentação leva tudo. |
| `vitality_ticks` | Tiques de reserva que uma alimentação adiciona. |

Quando mais de uma receita aceita o mesmo item para uma colônia, uma receita nomeando a linhagem vence uma tag, e uma tag vence uma receita para toda linhagem. Uma receita escrita sempre vence a regra automática de produto e bloco de armazenamento.

O bloco de armazenamento é encontrado a partir da tag `c:storage_blocks/<material>` que corresponde à tag `c:ingots`, `c:gems` ou `c:dusts` do item. Itens sem uma, como Trigo e Farinha de Osso, nomeiam seu bloco no mapa de dados de itens `nautec:storage_blocks`, ao qual um datapack pode adicionar. `bacteriaProductNutrients` em `config/nautec-common.toml` desliga a regra. `/nautec bacteria generate` escreve uma receita de alimentação para cada linhagem que cria, veja [Bactérias Personalizadas](custom_bacteria.md).