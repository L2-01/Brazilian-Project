---
navigation:
  title: Satélite Prismático
  icon: nautec:prism_satellite
  position: 10
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:prism_satellite
  - nautec:uplink_array
---

# <Color id="aqua">Satélite Prismático</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="uplink_array" scale="2"/>
    <ItemImage id="prism_satellite" scale="2"/>
  </Row>
  Carrega energia de laser (AP) e FE para qualquer ponto de uma rede, sem cadeia de relés.
</Column>

Um <ItemLink id="uplink_array"/> recebe AP dos seus lasers e FE dos seus cabos e os transmite a um satélite em órbita acima dele. O satélite os transmite de volta a todo [Nó de Ressonância](resonance_node.md) de saída e Amuleto de Ressonância na mesma rede, por mais distantes que estejam.

***

## <Color id="gold">Montando</Color>

1. Coloque um <ItemLink id="uplink_array"/>. Ele tem dois blocos de altura.
2. Clique nele com o botão direito de mão vazia e escolha ou crie uma rede, da mesma forma que num <ItemLink id="resonance_node"/>. Conjuntos e nós compartilham redes e seus jogadores de confiança.
3. Clique no conjunto de transmissão com o botão direito segurando um <ItemLink id="prism_satellite"/> para lançá-lo. O satélite sobe à órbita e fica lá até o conjunto ser quebrado, o que o derruba de volta.
4. Dispare lasers nas laterais ou na base do conjunto, e envie FE para ele por canos de qualquer lado.
5. Coloque um <ItemLink id="resonance_node"/> onde a energia for necessária, ponha-o na mesma rede e defina-o como **Saída**.

***

## <Color id="gold">Regras</Color>

* **Céu:** o conjunto precisa de céu livre acima da antena. Só blocos sólidos atrapalham. Água, vidro e folhas contam como livre, então um conjunto no leito marinho ou sob um teto de vidro funciona. Nós de Ressonância não precisam de céu.
* **Dimensão:** todo conjunto com um satélite lançado alimenta uma única reserva para a rede inteira, em toda dimensão. Um nó de saída numa dimensão sem conjunto próprio ainda recebe energia, mas seus AP chegam com 5% menos pureza (`satelliteCrossDimensionPurityLoss`). Construa um conjunto naquela dimensão para evitar a perda.
* **Divisão:** nós de saída e amuletos com a prioridade mais alta são preenchidos primeiro, e os com a mesma prioridade dividem igualmente. 10% são perdidos no caminho. A pureza passa inalterada dentro de uma dimensão que tenha um conjunto.
* **Vários conjuntos:** todo conjunto numa rede soma à mesma reserva, em qualquer dimensão que esteja. Seus feixes se fundem, então a pureza da reserva fica perto da pureza do conjunto mais puro.
* **Chunks carregados:** um conjunto só funciona enquanto seu chunk está carregado. Ligue **Carregar** na tela dele e ele mantém o próprio chunk carregado, a menos que o servidor tenha desativado isso (`resonanceChunkLoading`).

A tela mostra se o conjunto está online e, se não, o que está esperando, junto com quanto AP e FE ele guarda.

***

## <Color id="gold">Buffers</Color>

Cada conjunto armazena até 5.000.000 AP e 5.000.000 FE (`satelliteApBuffer` e `satelliteFeBuffer`). Ele guarda os AP transmitidos a ele, junto com sua pureza, e os FE empurrados a ele, e mantém ambos até que nós de saída ou amuletos na rede os queiram, então um conjunto pode encher antes de suas saídas serem construídas.

Prioridade e limites por tique são definidos em cada nó de saída; veja [Nó de Ressonância](resonance_node.md).