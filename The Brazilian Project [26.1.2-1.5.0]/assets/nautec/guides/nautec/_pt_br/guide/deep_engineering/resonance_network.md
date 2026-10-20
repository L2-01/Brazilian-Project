---
navigation:
  title: Rede de Ressonância
  icon: nautec:resonance_node
  position: 9
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:prismatic_emitter
  - nautec:tuning_fork
  - nautec:resonance_charm
---

# <Color id="light_purple">Rede de Ressonância</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="uplink_array" scale="2"/>
    <ItemImage id="resonance_node" scale="2"/>
  </Row>
  Uma rede nomeada que carrega energia de laser (AP) e Forge Energy (FE) entre suas bases sem cabos.
</Column>

Uma Rede de Ressonância liga <ItemLink id="uplink_array"/>, [Nós de Ressonância](resonance_node.md) e Amuletos de Ressonância, por mais distantes que estejam e em qualquer dimensão. Um Conjunto de Transmissão com um satélite lançado é o núcleo da rede: nós de entrada e cabos o alimentam, e ele envia AP e FE aos nós de saída e amuletos. Veja [Satélite Prismático](prism_satellite.md) para o núcleo e [Nó de Ressonância](resonance_node.md) para colocar e tirar energia.

***

## <Color id="gold">Montando</Color>

1. Coloque um <ItemLink id="resonance_node"/> ou um <ItemLink id="uplink_array"/> e clique nele com o botão direito de mão vazia.
2. Digite um nome na caixa e pressione **Criar**. A rede é sua, e o bloco entra nela.
3. Abra o próximo nó ou conjunto, onde quer que esteja, e use as setas para escolher a mesma rede.

Nós e conjuntos só funcionam enquanto seu chunk está carregado. Ligue **Carregar** na tela de um bloco e ele mantém o próprio chunk carregado, então um elo longo continua rodando enquanto você está fora, a menos que o servidor tenha desativado isso (`resonanceChunkLoading`).

***

## <Color id="gold">Quem Pode Usá-la</Color>

Só o dono e os jogadores em quem ele confia podem vincular um bloco a uma rede ou abrir um bloco que já esteja nela. Qualquer outra pessoa recebe uma mensagem com o nome da rede e de seu dono.

O dono gerencia o acesso a partir de qualquer nó ou conjunto na rede:

* **Confiar**: digite o nome de um jogador online e pressione Confiar. Ele agora pode vincular blocos à rede. Remova-o pelo x vermelho ao lado do nome.
* **Equipe**: com o FTB Teams instalado, ligar isso deixa todo mundo na equipe do dono usar a rede sem precisar confiar em cada um.
* **Excluir**: remove a rede e desvincula todo bloco dela. Clique duas vezes.

Cada jogador pode ter até 16 redes.

***

<Row>
  <ItemImage id="prismatic_emitter"/>
  ### <Color id="aqua">Emissor Prismático</Color>
</Row>

Energiza máquinas próximas sem cabos. Alimente-o com FE de um cabo, ou de um Nó de Ressonância de saída colocado contra ele, depois vincule as máquinas que ele deve energizar. Ele dispara um laço de cristal para cada uma e divide até 10.000 FE/t entre elas, sem nada perdido no caminho.

1. Segure um <ItemLink id="tuning_fork"/> e clique com o botão direito no emissor para afinar o diapasão nele.
2. Clique com o botão direito em cada máquina para vinculá-la. Clique com o botão direito numa máquina vinculada de novo para desvinculá-la.

Um diapasão afinado vincula outro emissor da mesma forma, então a energia pode saltar de emissor em emissor para alcançar máquinas mais distantes. Uma cadeia não pode voltar a um emissor de onde começou. Para afinar o diapasão num emissor diferente, agache-se e clique com o botão direito no ar antes. Quebrar uma máquina ou emissor vinculado remove seu laço.

Um emissor alcança máquinas a até 64 blocos (`emitterRange`) e pode alimentar 16 delas. Só o jogador que o colocou pode afinar um diapasão nele. Agache-se e clique no emissor com o botão direito segurando o diapasão para desvincular tudo, ou agache-se e clique com o botão direito no ar para limpar o diapasão.

***

<Row>
  <ItemImage id="resonance_charm"/>
  ### <Color id="aqua">Amuleto de Ressonância</Color>
</Row>

Carrega os itens que você carrega a partir de uma rede, onde quer que esteja.

Clique com o botão direito num Nó de Ressonância ou Conjunto de Transmissão segurando o amuleto para vinculá-lo àquela rede; você precisa de acesso à rede. Depois equipe-o num slot de amuleto. A cada meio segundo ele puxa FE dos [Conjuntos de Transmissão](prism_satellite.md) da rede, em qualquer dimensão, e carrega os itens de FE no seu inventário, armadura e slots de curio, junto com itens do NauTec que rodam com energia de laser, como o <ItemLink id="atlantean_rifle"/> e a <ItemLink id="prismatic_battery"/>. Ele move até 2.000 FE/t, e 10% são perdidos no caminho, como num nó de saída.

Seu cristal também faz o trabalho de um <ItemLink id="prism_monocle"/>: enquanto estiver equipado você vê leituras de energia e pureza em blocos de laser e a visão subaquática mais nítida sem usar um monóculo.

Se o dono parar de confiar em você, o amuleto para de funcionar até você ser confiado de novo. Clique com o botão direito no ar segurando-o para abrir sua tela. A tela mostra a rede a que está vinculado, seu dono, quantos conjuntos e nós de saída a rede tem, e quantos FE os conjuntos guardam. Ela também define a prioridade do amuleto: um amuleto com prioridade maior carrega antes de nós de saída e amuletos com prioridade menor. Agache-se e clique com o botão direito no ar segurando-o para desvinculá-lo.

### <Color id="aqua">Aprimoramento de Ressonância</Color>

Para liberar o slot de amuleto, instale o amuleto como aprimoramento no lugar. Carregue-o numa [Estação de Aprimoramento Corporal](nautec:laser_augmentation/augmentation_station.md) como qualquer outra peça e instale-o no seu slot de Cabeça. O aprimoramento mantém a rede e a prioridade do amuleto e carrega seus itens exatamente como o amuleto equipado faz, incluindo as leituras do monóculo. É mantido quando você morre.

Para afiná-lo numa rede diferente, agache-se e clique com o botão direito de mão vazia num Nó de Ressonância ou Conjunto de Transmissão. Para ver sua rede ou mudar sua prioridade, abra a Tela de Aprimoramento Corporal (B por padrão) e clique na linha da Cabeça. Se você também usar um amuleto vinculado, o amuleto é usado e o aprimoramento espera.