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
  Nutrientes nos espaços de nutrientes de um reator impedem suas colônias de envelhecer.
</Column>

Isso funciona igual no [Biorreator](bio_reactor.md) e no [Biorreator Industrial](industrial_bio_reactor.md).

***

## <Color id="gold">O Buffer de Nutrientes</Color>

Todo espaço de colônia tem um buffer de nutrientes, mostrado como a barra fina ao lado da colônia. Enquanto a colônia trabalha ela gasta um tique de buffer por tique em vez de envelhecer. Quando o buffer esvazia, o reator pega um nutriente correspondente de seus espaços de nutrientes e adiciona os tiques daquela receita ao buffer. Toda linhagem do mod ganha 1.200 tiques, um minuto de trabalho, de cada item, exceto que um bloco de armazenamento dá nove vezes isso.

Assim, cada colônia em trabalho come um nutriente por minuto. O buffer só drena enquanto a colônia trabalha: um reator sem energia suficiente, ou uma colônia cujo espaço de saída está cheio, não gasta nada. Uma [Melhoria de Eficiência do Reator](reactor_upgrades.md) faz cada item durar mais.

Passe o mouse sobre a barra para ver quantos segundos restam. Com o buffer vazio e sem nutriente correspondente a barra lê "Sem nutrientes: a colônia está envelhecendo", e a colônia envelhece como descrito em [Atributos das Bactérias](bacteria_stats.md). Uma colônia Senescente faminta encolhe 2% do seu tamanho a cada segundo que trabalha, e um único nutriente para isso na hora. Alimentar nunca zera a idade de uma colônia; só a [Incubadora](incubator.md) faz isso.

***

## <Color id="gold">Qual Nutriente</Color>

Cada linhagem tem seu próprio nutriente, e por padrão é o mesmo item que a linhagem come na Incubadora. A categoria Alimentação de Colônias do JEI lista cada um: procure uma linhagem para ver seu nutriente, ou procure os usos de um item para ver quais linhagens ele alimenta. Alguns exemplos:

| Linhagem | Nutriente |
|---|---|
| Litófilos | Pedra |
| Silicófilos e Halótrofos | Areia |
| Lipófilos | Polpa de Algas |
| Calciófilos | Bloco de Ossos |
| Microborganismos Carmesim | Níquel Carmesim |
| Carbófagos | qualquer minério de carvão |
| Ferrófilos | qualquer minério de ferro |
| Adamantófilos | qualquer minério de diamante |
| Plumbófilos | lingotes de chumbo |

Linhagens para metais e gemas de outros mods comem o lingote ou a gema que produzem, então você pode devolver uma pequena parte da produção de um reator ao seu espaço de nutriente.

Além de seu próprio nutriente, toda linhagem que tem um também come o item que produz e o bloco de armazenamento daquele item. Ferrófilos aceitam Lingotes de Ferro e Blocos de Ferro além de minério de ferro, Rizobactérias aceitam Fardos de Feno além de trigo, e uma linhagem de estanho aceita blocos de estanho. O item que ela produz alimenta por tanto tempo quanto seu nutriente próprio, e um bloco de armazenamento nove vezes mais. Isso cobre linhagens de outros mods e as feitas com `/nautec bacteria generate` também. O JEI lista esses junto dos demais.

Cianobactérias, Halobactérias, Metanógenos e Termófilos não têm nutriente, então sempre envelhecem enquanto trabalham.

***

## <Color id="gold">Espaços de Nutrientes</Color>

O Biorreator tem 2 espaços de nutrientes e o Biorreator Industrial tem 3. Eles só aceitam itens que alimentem alguma linhagem. Quando uma colônia precisa de alimento, o reator checa os espaços em ordem e pega do primeiro que tiver o nutriente daquela colônia, então uma pilha alimenta toda colônia daquela linhagem.

Cada espaço comporta um tipo de item, então um Biorreator pode fornecer no máximo dois nutrientes diferentes por vez e o Biorreator Industrial três. Encha um reator com linhagens que compartilhem nutrientes, ou com no máximo tantas linhagens quanto seus espaços de nutrientes, se toda colônia deve ficar alimentada. Um nutriente que nada no reator come só ocupa espaço.

***

## <Color id="gold">Automatizando Nutrientes</Color>

Funis e tubos podem inserir nutrientes:

* Biorreator: pelo topo do bloco do Biorreator, por exemplo com um funil sobre ele, ou com um tubo na parte de baixo da base.
* Biorreator Industrial: por qualquer face externa de qualquer um de seus blocos, por exemplo com um funil no teto.

A automação só insere nutrientes em espaços de nutrientes e melhorias em espaços de melhorias, e nunca retira nenhum dos dois de volta. Um baú de nutrientes alimentando e a saída sendo puxada basta para um reator rodar indefinidamente.

***

## <Color id="gold">Mudando a Alimentação num Pack</Color>

A alimentação é dado. Cada regra é uma receita do tipo `nautec:colony_feeding`, e as do mod estão em `data/nautec/recipe/colony_feeding/<strain>.json`, então um datapack pode substituí-las ou adicionar mais.

| Campo | Significado |
|---|---|
| `bacteria` | Um id de linhagem, uma tag de bactérias com `#`, ou omitido para corresponder a toda linhagem. |
| `ingredient` | Um objeto com o `ingredient` do item e um `count` opcional (padrão 1). O espaço precisa ter pelo menos essa quantia, e uma alimentação os consome todos. |
| `vitality_ticks` | Tiques de buffer que uma alimentação adiciona. |

Quando mais de uma receita aceita o mesmo item para uma colônia, uma receita que nomeia a linhagem vence uma tag, e uma tag vence uma receita genérica. Uma receita escrita sempre vence a regra automática de produto e bloco de armazenamento.

O bloco de armazenamento é encontrado a partir da tag `c:storage_blocks/<material>` que corresponde à tag `c:ingots`, `c:gems` ou `c:dusts` do item. Itens sem uma, como Trigo e Farinha de Osso, nomeiam seu bloco no mapa de dados de itens `nautec:storage_blocks`, ao qual um datapack pode adicionar. `bacteriaProductNutrients` em `config/nautec-common.toml` desliga a regra. `/nautec bacteria generate` escreve uma receita de alimentação para cada linhagem que cria, veja [Bactérias Personalizadas](custom_bacteria.md).
