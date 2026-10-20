---
navigation:
  title: Caixotes e Gravação
  icon: nautec:rusty_crate
  position: 6
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:etching_acid_bucket
  - nautec:crate
  - nautec:rusty_crate
---

# <Color id="light_purple">Caixotes e Gravação</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="rusty_crate" scale="2"/>
  Abra Caixotes como um baú, e limpe os enferrujados em Ácido de Gravação antes.
</Column>

***

<Row>
  <ItemImage id="crate"/>
  ### <Color id="aqua">Caixote</Color>
</Row>

Um contêiner de 27 slots encontrado em geodos e nos saques vanilla de naufrágios e ruínas. Clique com o botão direito para abri-lo como um baú. Funis também podem mover itens para dentro e para fora dele.

Quebrar um caixote larga o próprio caixote com o conteúdo ainda dentro, aberto ou não, então você pode levar um achado para casa antes de abri-lo.

***

<Row>
  <ItemImage id="rusty_crate"/>
  ### <Color id="aqua">Caixote Enferrujado</Color>
</Row>

Um caixote travado pela ferrugem, encontrado em ruínas. Ele não abre, e funis não alcançam seu conteúdo, até você gravá-lo: largue-o em Ácido de Gravação e ele vira um Caixote comum com o mesmo saque. O tooltip dele e a mensagem que você recebe ao tentar abri-lo dizem o mesmo, e o JEI mostra a conversão em Gravação de Itens.

Caixotes Enferrujados guardam salvados melhores que os comuns. Quebre um para carregá-lo; ele mantém o saque da mesma forma que um Caixote.

***

## <Color id="gold">Gravação</Color>

Largue um item no Ácido de Gravação e ele sai limpo após o tempo da receita, de 8 a 10 segundos. A pilha inteira larga converte de uma vez.

| Entrada | Saída | Tempo |
|---|---|---|
| Caixote Enferrujado | Caixote, saque mantido | 10 s |
| <ItemLink id="rusty_gear"/> | <ItemLink id="gear"/> | 8 s |
| <ItemLink id="ancient_valve"/> | <ItemLink id="valve"/> | 10 s |

O JEI lista isso em Gravação de Itens.

Uma em cada três gravações consome o bloco-fonte de Ácido de Gravação em que o item está. Ácido corrente nunca é consumido, nem o bloco sob a poça. Uma única fonte de ácido num buraco de um bloco de profundidade basta, desde que você guarde um balde reserva para reabastecê-la.

***

<Row>
  <ItemImage id="etching_acid_bucket"/>
  ### <Color id="aqua">Ácido de Gravação</Color>
</Row>

<RecipeFor id="etching_acid_bucket"/>

O [Misturador](nautec:laser_chemistry/mixer.md) o faz a partir de Água Salgada quando você tiver um. O Ácido de Gravação é espesso: você afunda nele e vadeia devagar, e criaturas desviam dele. A [Forja de Pressão Abissal](nautec:deep_engineering/pressure_forge.md) também funciona com ele.