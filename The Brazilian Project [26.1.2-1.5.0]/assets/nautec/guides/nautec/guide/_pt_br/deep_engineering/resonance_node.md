---
navigation:
  title: Nó de Ressonância
  icon: nautec:resonance_node
  position: 11
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:resonance_node
---

# <Color id="aqua">Nó de Ressonância</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="resonance_node" scale="2"/>
  Conecta qualquer linha de laser ou cabo de FE a uma rede de satélite, sem antena e sem céu aberto.
</Column>

Um Nó de Ressonância entra nas mesmas [Redes de Ressonância](resonance_network.md) que os [Conjuntos de Transmissão](prism_satellite.md). Todo uplink com um satélite lançado acumula sua energia para a rede inteira. Um nó põe energia nessa reserva, ou tira energia dela, de onde você o colocar.

***

## <Color id="gold">Montando</Color>

1. Coloque o nó na face de qualquer bloco. Seu cristal aponta para longe da face clicada.
2. Clique direito nele com a mão vazia e escolha ou crie uma rede. Digite um nome e aperte **Criar** para uma nova, ou use as setas para escolher uma que já tenha.
3. Defina-o como **Entrada** ou **Saída** com o botão em sua tela.

A rede precisa de pelo menos um <ItemLink id="uplink_array"/> com um satélite lançado e céu aberto, em qualquer dimensão. Até ter um, o nó mostra **Sem núcleo** e não move nada.

***

## <Color id="gold">Entrada e Saída</Color>

* **Entrada:** recebe feixes de laser disparados em qualquer lado e FE de cabos, e envia ambos aos uplinks da rede. Ele envia a uplinks de sua própria dimensão primeiro. AP que ele envia a um uplink de outra dimensão perde 5% de sua pureza.
* **Saída:** recebe AP e FE da rede. Ele dispara o AP pela ponta de seu cristal como um feixe e empurra o FE para qualquer coisa encostada nele.

Nós de saída dividem a energia da rede com Amuletos de Ressonância, em ordem de prioridade. 10% se perde no caminho, e um nó numa dimensão sem uplink próprio recebe seu AP com 5% a menos de pureza.

***

## <Color id="gold">Buffers, Prioridade e Limites</Color>

Um nó comporta até 200.000 de AP e 1.000.000 de FE (`resonanceNodeApBuffer` e `resonanceNodeFeBuffer`). Um nó de entrada guarda o que recebe até os uplinks terem espaço. Um nó de saída guarda o que tira da rede e repassa tão rápido quanto seu limite permitir.

Os controles no topo da tela definem sua prioridade, de -100 a 100, e seu limite: o máximo de AP, e separadamente de FE, que ele move a cada tique. Prioridades maiores enchem primeiro. Clique em qualquer número para zerá-lo.

***

## <Color id="gold">Melhorias</Color>

Por conta própria um nó move até 100.000 de AP e 100.000 de FE por tique (`satelliteTransferLimit`). Uma melhoria de conduíte eleva isso, e seus buffers crescem junto:

| Melhoria | Move por tique | Buffer de FE | Buffer de AP |
|---|---|---|---|
| Nenhuma | 100.000 | 1.000.000 | 200.000 |
| <ItemLink id="eddy_upgrade"/> | 500.000 | 5.000.000 | 1.000.000 |
| <ItemLink id="surge_upgrade"/> | 2.500.000 | 25.000.000 | 5.000.000 |
| <ItemLink id="riptide_upgrade"/> | 10.000.000 | 100.000.000 | 20.000.000 |
| <ItemLink id="maelstrom_upgrade"/> | sem limite | 1.000.000.000 | 1.000.000.000 |

Clique direito no nó com uma melhoria para instalá-la; uma melhoria instalada volta a você ao trocá-la. Agache e clique direito com a mão vazia para removê-la. A tela mostra a melhoria instalada abaixo do botão de modo. `resonanceNodeUpgradeLimits` define os limites por tique.

Cada <ItemLink id="uplink_array"/> comporta 5.000.000 de FE, então uma rede movendo mais que isso a cada tique precisa de mais de um uplink.

Ligue **Carregar** para manter o chunk do nó carregado, então ele funciona enquanto ninguém está perto.

Um <ItemLink id="configuration_card"/> copia a rede, o modo, a prioridade, o limite, o carregamento de chunk e a melhoria de um nó para outro.

***

## <Color id="gold">Receita</Color>

<RecipeFor id="resonance_node"/>
