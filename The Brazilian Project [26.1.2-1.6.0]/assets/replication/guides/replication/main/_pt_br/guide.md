---
navigation:
  title: Replication
  icon: replication:replicator
item_ids:
  - replication:replicator
  - replication:matter_network_pipe
  - replication:identification_chamber
  - replication:disintegrator
  - replication:matter_tank
  - replication:replication_terminal
  - replication:chip_storage
  - replication:replicator_enclosure
  - replication:replicator_motor
---

# Replication

**Replication** é um mod de tecnologia que permite replicar recursos de tipos semelhantes. Você pode transformar terra em pedra,
mas não pode transformar terra em diamantes.

## Conceitos Importantes

**Tubos de Rede de Matéria** permitem conectar máquinas do Replication e automatizarão alguns processos:

* Transferir **Energia**: funcionam como qualquer tubo de energia
* Transferir **Matéria**: transferem matéria do **Desintegrador** para os **Tanques de Matéria** e dos **Tanques de Matéria**
  para **outras máquinas** que precisam dela

A **Câmara de Identificação** escaneia itens para conhecer seus valores de matéria e os armazena em chips. Esses **Chips**
podem ser guardados no **Armazenamento de Chips** e ficarão disponíveis para a rede. Se você colocar um Armazenamento de Chips em cima da
Câmara de Identificação, os padrões serão enviados diretamente para o Armazenamento de Chips sem precisar de um chip
dentro da Câmara de Identificação.

Os **Replicadores** podem ser usados em "Modo Infinito", em que continuarão replicando um recurso até encher ou acabar
a matéria; você pode configurar esse modo na GUI.

## Como funciona

Para transformar itens, você precisará quebrá-los em seus valores primais usando um **Desintegrador**. Com essa máquina,
você transformará qualquer item com valores de matéria em matéria. Depois de escanear alguns itens e armazenar seus valores
em chips, você pode usar o **Terminal de Replicação** para solicitar itens. Com uma solicitação criada, os **Replicadores** usarão
a Matéria armazenada nos tanques para replicar o item do zero e enviá-lo de volta ao terminal.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="setup.snbt" />
  <IsometricCamera  yaw="30" pitch="30" />
</GameScene>

## Aceleração

* Carcaça do Replicador: você pode adicionar a carcaça a um Replicador agachando-se + clicando com o botão direito no Replicador, e ela
  fornecerá uma aceleração passiva de 20%, mas com 10% de consumo extra de energia.
* Motor do Replicador: você pode adicionar o motor a um Replicador agachando-se + clicando com o botão direito no Replicador. Você
  poderá configurar um multiplicador de velocidade para o Replicador, em que 100% é a velocidade padrão e 20% é o mais rápido que ele
  consegue. Quanto mais rápido, maior a chance de falha. Quando uma impressão falha, o replicador precisa rodar de novo, mas
  não consome mais matéria para isso. Para fabricá-lo, você precisará fabricar o diagrama dele e usá-lo no
  Armazenamento de Chips; então poderá replicá-lo.

## MatterOpedia

A MatterOpedia é uma lista pesquisável que permite procurar quais itens têm um Valor de Matéria específico. Você pode
acessá-la pelo botão à esquerda da Barra de Busca na tela do Terminal de Replicação, e também clicando
nos mostradores de matéria à direita do terminal.

Na barra de busca da MatterOpedia você pode usar:

* Qualquer nome de matéria: mostra todos os itens que têm aquela matéria
* `earth>10` mostra todos os itens que têm mais de 10 de earth
* `nether=20` mostra todos os itens que têm exatamente 20 de nether
* `quantum<6` mostra todos os itens que têm menos de 6 de quantum
* `!earth` mostra todos os itens que não têm earth
* `*metallic` mostra todos os itens que só têm metallic
