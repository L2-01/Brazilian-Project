---
navigation:
  title: Farol de Conduto
  icon: nautec:conduit_beacon
  position: 19
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:conduit_beacon
---

# <Color id="light_purple">Farol de Conduto</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="conduit_beacon" scale="2"/>
  Um Conduto movido a laser que também impede mobs de surgir ao redor da sua base.
</Column>

Construa-o do mesmo jeito que um Conduto vanilla: o farol fica na água, com o espaço de 3 x 3 x 3 ao redor todo de água, dentro de uma moldura de Prismarinho, Tijolos de Prismarinho, Prismarinho Escuro ou Lanternas do Mar. Ele precisa de pelo menos 16 blocos de moldura para começar, e uma moldura completa tem 42.

Enquanto funciona, ele faz duas coisas:

* Dá Poder de Conduto a jogadores na água ou na chuva, igual a um Conduto com a mesma moldura. Uma moldura de 16 blocos alcança 32 blocos, e uma completa alcança 96.
* Nenhum mob hostil, passivo ou ambiente surge naturalmente num raio horizontal de 128 blocos dele, em qualquer altura. Geradores, ovos geradores, criação, invasões e criaturas aquáticas como peixes e lulas não são afetados.

***

## <Color id="gold">Energia</Color>

Aponte um feixe de laser para o farol. Toda posição da moldura alinhada com ele faz parte da moldura, então deixe uma abertura para o feixe: um espaço da moldura com um feixe passando conta como preenchido, então uma moldura completa ainda alcança 96 blocos.

O farol armazena até 5.000 AP. A energia que chega enche o estoque, e o farol funciona com ele a 50 AP por tique, então continua por cerca de 5 segundos depois que o feixe para. Qualquer pureza serve.

Um sinal de redstone no farol ou em qualquer bloco de sua moldura o desliga. Como o farol está sempre cercado de água, coloque uma alavanca ou uma linha de redstone num bloco da moldura.

Olhe para ele através de um <ItemLink id="prism_monocle"/> para ver seu estado, tamanho da moldura, alcance e energia armazenada.

O consumo de energia, o estoque e o raio de surgimento são `conduitBeaconPowerUsage`, `conduitBeaconBuffer` e `conduitBeaconSpawnRadius` em `config/nautec-common.toml`.

<RecipeFor id="conduit_beacon"/>
