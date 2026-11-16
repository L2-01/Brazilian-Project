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

Uma Rede de Ressonância liga <ItemLink id="uplink_array"/>s, [Nós de Ressonância](resonance_node.md) e Amuletos de Ressonância, por mais distantes que estejam e em qualquer dimensão. Um Conjunto de Transmissão com um satélite lançado é o núcleo da rede: nós de entrada e cabos o alimentam, e ele envia AP e FE aos nós de saída e amuletos. Veja [Satélite Prismático](prism_satellite.md) para o núcleo e [Nó de Ressonância](resonance_node.md) para colocar e tirar energia.

***

## <Color id="gold">Montando</Color>

1. Coloque um <ItemLink id="resonance_node"/> ou um <ItemLink id="uplink_array"/> e clique direito nele com a mão vazia.
2. Digite um nome na caixa e aperte **Criar**. A rede é sua, e o bloco entra nela.
3. Abra o próximo nó ou conjunto, onde quer que esteja, e use as setas para escolher a mesma rede.

Nós e conjuntos só funcionam enquanto seu chunk está carregado. Ligue **Carregar** na tela de um bloco e ele mantém o próprio chunk carregado, então um elo longo continua rodando enquanto você está fora, a menos que o servidor tenha desligado isso (`resonanceChunkLoading`).

***

## <Color id="gold">Quem Pode Usá-la</Color>

Só o dono e os jogadores em quem ele confia podem ligar um bloco a uma rede ou abrir um bloco que já está nela. Qualquer outro recebe uma mensagem indicando a rede e seu dono.

O dono gerencia o acesso de qualquer nó ou conjunto da rede:

* **Confiar**: digite o nome de um jogador online e aperte Confiar. Ele agora pode ligar blocos à rede. Remova-o com o x vermelho ao lado do nome.
* **Equipe**: com o FTB Teams instalado, ligar isso permite que todos na equipe do dono usem a rede sem confiar em cada um.
* **Excluir**: remove a rede e desvincula todos os blocos nela. Clique duas vezes.

Cada jogador pode ter até 16 redes.

***

<Row>
  <ItemImage id="prismatic_emitter"/>
  ### <Color id="aqua">Emissor Prismático</Color>
</Row>

Energiza máquinas próximas sem cabos. Alimente-o com FE de um cabo, ou de um Nó de Ressonância de saída encostado nele, depois vincule as máquinas que ele deve energizar. Ele dispara um vínculo de cristal a cada uma e divide até 10.000 FE/t entre elas, sem perda no caminho.

1. Segure um <ItemLink id="tuning_fork"/> e clique direito no emissor para sintonizar o diapasão a ele.
2. Clique direito em cada máquina para vinculá-la. Clique direito numa máquina vinculada de novo para desvinculá-la.

Um diapasão sintonizado vincula outro emissor do mesmo jeito, então a energia pode saltar de emissor em emissor para alcançar máquinas mais distantes. Uma cadeia não pode voltar a um emissor de onde começou. Para sintonizar o diapasão a um emissor diferente, agache e clique direito no ar antes. Quebrar uma máquina ou emissor vinculado remove seu vínculo.

Um emissor alcança máquinas a até 64 blocos (`emitterRange`) e pode alimentar 16 delas. Só o jogador que o colocou pode sintonizar um diapasão a ele. Agache e clique direito no emissor com o diapasão para desvincular tudo, ou agache e clique direito no ar para limpar o diapasão.

***

<Row>
  <ItemImage id="resonance_charm"/>
  ### <Color id="aqua">Amuleto de Ressonância</Color>
</Row>

Carrega os itens que você carrega a partir de uma rede, onde quer que esteja.

Clique direito num Nó de Ressonância ou Conjunto de Transmissão com o amuleto para vinculá-lo àquela rede; você precisa de acesso à rede. Depois use-o num espaço de amuleto. A cada meio segundo ele puxa FE dos [Conjuntos de Transmissão](prism_satellite.md) da rede, em qualquer dimensão, e carrega os itens de FE no seu inventário, armadura e espaços de curio, junto de itens do NauTec que funcionam com energia de laser, como o <ItemLink id="atlantean_rifle"/> e a <ItemLink id="prismatic_battery"/>. Ele move até 2.000 FE/t, e 10% se perde no caminho, como num nó de saída.

Seu cristal também faz o trabalho de um <ItemLink id="prism_monocle"/>: enquanto está equipado você vê leituras de potência e pureza em blocos de laser e a visão subaquática mais clara sem usar um monóculo.

Se o dono parar de confiar em você, o amuleto para de funcionar até você ser confiado de novo. Clique direito no ar com ele para abrir sua tela. A tela mostra a rede a que está vinculado, seu dono, quantos uplinks e nós de saída a rede tem e quanto FE os uplinks guardam. Ela também define a prioridade do amuleto: um amuleto com prioridade maior carrega antes de nós de saída e amuletos de prioridade menor. Agache e clique direito no ar com ele para desvinculá-lo.

### <Color id="aqua">Aprimoramento de Ressonância</Color>

Para liberar o espaço de amuleto, instale o amuleto como aprimoramento. Carregue-o numa [Estação de Aprimoramento Corporal](nautec:laser_augmentation/augmentation_station.md) como qualquer outra peça e instale-o no seu espaço de Cabeça. O aprimoramento mantém a rede e a prioridade do amuleto e carrega seus itens exatamente como o amuleto usado, incluindo as leituras de monóculo. Ele é mantido quando você morre.

Para sintonizá-lo a uma rede diferente, agache e clique direito num Nó de Ressonância ou Conjunto de Transmissão com a mão vazia. Para ver sua rede ou mudar sua prioridade, abra a Tela de Aprimoramento (B por padrão) e clique na fileira da Cabeça. Se você também usa um amuleto vinculado, o amuleto é usado e o aprimoramento espera.
