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
  Carrega energia de laser (AP) e FE para qualquer lugar de uma rede, sem cadeia de relés.
</Column>

Um <ItemLink id="uplink_array"/> pega AP de seus lasers e FE de seus cabos e os transmite a um satélite em órbita acima dele. O satélite os transmite de volta para cada [Nó de Ressonância](resonance_node.md) de saída e Amuleto de Ressonância na mesma rede, por mais distantes que estejam.

***

## <Color id="gold">Montando</Color>

1. Coloque um <ItemLink id="uplink_array"/>. Ele tem dois blocos de altura.
2. Clique direito nele com a mão vazia e escolha ou crie uma rede, do mesmo jeito que num <ItemLink id="resonance_node"/>. Conjuntos e nós compartilham redes e seus jogadores confiados.
3. Clique direito no uplink com um <ItemLink id="prism_satellite"/> para lançá-lo. O satélite sobe à órbita e fica lá até o uplink ser quebrado, o que o derruba de volta.
4. Dispare lasers nas laterais ou na parte de baixo do uplink, e tubule FE para ele por qualquer lado.
5. Coloque um <ItemLink id="resonance_node"/> onde a energia é necessária, ponha-o na mesma rede e defina-o como **Saída**.

***

## <Color id="gold">Regras</Color>

* **Céu:** o uplink precisa de céu aberto acima da antena. Só blocos sólidos atrapalham. Água, vidro e folhas contam como aberto, então um uplink no fundo do mar ou sob um teto de vidro funciona. Nós de Ressonância não precisam de céu.
* **Dimensão:** todo uplink com um satélite lançado alimenta uma reserva única para a rede inteira, em todas as dimensões. Um nó de saída numa dimensão sem uplink próprio ainda recebe energia, mas seu AP chega com 5% a menos de pureza (`satelliteCrossDimensionPurityLoss`). Construa um uplink naquela dimensão para evitar a perda.
* **Divisão:** nós de saída e amuletos com a maior prioridade enchem primeiro, e os de mesma prioridade dividem igualmente. 10% se perde no caminho. A pureza passa inalterada dentro de uma dimensão que tenha uplink.
* **Vários uplinks:** todo uplink numa rede adiciona à mesma reserva, qualquer que seja a dimensão. Seus feixes se fundem, então a pureza da reserva fica próxima à do uplink mais puro.
* **Chunks carregados:** um uplink só funciona enquanto seu chunk está carregado. Ligue **Carregar** em sua tela e ele mantém o próprio chunk carregado, a menos que o servidor tenha desligado isso (`resonanceChunkLoading`).

A tela mostra se o uplink está online e, se não, do que está esperando, junto de quanto AP e FE ele comporta.

***

## <Color id="gold">Buffers</Color>

Cada uplink comporta até 5.000.000 de AP e 5.000.000 de FE (`satelliteApBuffer` e `satelliteFeBuffer`). Ele guarda o AP transmitido a ele, junto de sua pureza, e o FE empurrado a ele, e mantém ambos até nós de saída ou amuletos da rede os quererem, então um uplink pode encher antes de suas saídas serem construídas.

Prioridade e limites por tique são definidos em cada nó de saída; veja [Nó de Ressonância](resonance_node.md).
