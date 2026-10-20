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
  Conecta qualquer linha de laser ou cabo de FE a uma rede de satélite, sem antena e sem céu livre.
</Column>

Um Nó de Ressonância entra nas mesmas [Redes de Ressonância](resonance_network.md) dos [Conjuntos de Transmissão](prism_satellite.md). Todo conjunto com um satélite lançado junta sua energia numa reserva para a rede inteira. Um nó põe energia nessa reserva, ou tira energia dela, de onde você o colocar.

***

## <Color id="gold">Montando</Color>

1. Coloque o nó na face de qualquer bloco. Seu cristal aponta para longe da face clicada.
2. Clique nele com o botão direito de mão vazia e escolha ou crie uma rede. Digite um nome e pressione **Criar** para uma nova, ou use as setas para escolher uma que já tenha.
3. Defina-o como **Entrada** ou **Saída** pelo botão na tela dele.

A rede precisa de pelo menos um <ItemLink id="uplink_array"/> com um satélite lançado e céu livre, em qualquer dimensão. Até ter um, o nó mostra **Sem núcleo** e não move nada.

***

## <Color id="gold">Entrada e Saída</Color>

* **Entrada:** recebe feixes de laser disparados em qualquer lado e FE de cabos, e envia ambos aos conjuntos de transmissão da rede. Envia primeiro aos conjuntos da própria dimensão. AP enviados a um conjunto noutra dimensão perdem 5% de pureza.
* **Saída:** recebe AP e FE da rede. Dispara os AP pela ponta do seu cristal como feixe e empurra os FE para qualquer coisa que o esteja tocando.

Nós de saída dividem a energia da rede com Amuletos de Ressonância, em ordem de prioridade. 10% são perdidos no caminho, e um nó numa dimensão sem conjunto próprio recebe seus AP com 5% menos pureza.

***

## <Color id="gold">Buffers, Prioridade e Limites</Color>

Um nó armazena até 200.000 AP e 1.000.000 FE (`resonanceNodeApBuffer` e `resonanceNodeFeBuffer`). Um nó de entrada guarda o que recebe até os conjuntos terem espaço. Um nó de saída guarda o que tira da rede e repassa tão rápido quanto seu limite permite.

Os controles no topo da tela definem sua prioridade, de -100 a 100, e seu limite: o máximo de AP e, separadamente, de FE que ele move a cada tique. Prioridades maiores são preenchidas primeiro. Clique em qualquer número para redefini-lo.

***

## <Color id="gold">Melhorias</Color>

Sozinho um nó move até 100.000 AP e 100.000 FE por tique (`satelliteTransferLimit`). Uma melhoria de conduíte eleva isso, e seus buffers crescem junto:

| Melhoria | Move por tique | Buffer de FE | Buffer de AP |
|---|---|---|---|
| Nenhuma | 100.000 | 1.000.000 | 200.000 |
| <ItemLink id="eddy_upgrade"/> | 500.000 | 5.000.000 | 1.000.000 |
| <ItemLink id="surge_upgrade"/> | 2.500.000 | 25.000.000 | 5.000.000 |
| <ItemLink id="riptide_upgrade"/> | 10.000.000 | 100.000.000 | 20.000.000 |
| <ItemLink id="maelstrom_upgrade"/> | sem limite | 1.000.000.000 | 1.000.000.000 |

Clique no nó com o botão direito segurando uma melhoria para instalá-la; uma melhoria instalada volta para você quando é trocada. Agache-se e clique com o botão direito de mão vazia para tirá-la. A tela mostra a melhoria instalada sob o botão de modo. `resonanceNodeUpgradeLimits` define os limites por tique.

Cada <ItemLink id="uplink_array"/> armazena 5.000.000 FE, então uma rede movendo mais que isso por tique precisa de mais de um conjunto.

Ligue **Carregar** para manter o chunk do nó carregado, para que ele funcione enquanto ninguém estiver por perto.

Um <ItemLink id="configuration_card"/> copia a rede, o modo, a prioridade, o limite, o carregamento de chunk e a melhoria de um nó para outro.

***

## <Color id="gold">Receita</Color>

<RecipeFor id="resonance_node"/>