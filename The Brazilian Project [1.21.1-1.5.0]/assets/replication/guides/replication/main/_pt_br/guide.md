---
navigation:
  title: Replicação
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

# Replicação

**Replication** é um mod de tecnologia que permite replicar recursos de tipos semelhantes. Você pode transformar terra em pedra,
mas não pode transformar terra em diamantes.

## Conceitos Importantes

**Tubos de matéria** permitem conectar máquinas do Replication e automatizam alguns processos:

* Transferem **Energia**: funcionam como qualquer tubo de energia
* Transferem **Matéria**: transferem matéria do **Desintegrador** para **Tanques de Matéria** e dos **Tanques de Matéria
  ** para **outras máquinas** que a precisam

A **Câmara de Identificação** escaneia itens para conhecer seus valores de matéria e os armazena em chips. Esses **Chips**
podem ser guardados no **Armazenamento de Chips** e ficam disponíveis para a rede. Se você colocar um Armazenamento de Chips em cima da
Câmara de Identificação, os padrões serão enviados diretamente ao Armazenamento de Chips, sem precisar ter um chip
dentro da Câmara de Identificação.

Os **Replicadores** podem ser usados em "Modo Infinito", em que continuam replicando um recurso até ele encher ou acabar
a matéria. Você pode configurar esse modo na GUI.

## Como funciona

Para transformar itens, você precisa decompô-los em seus valores primordiais usando um **Desintegrador**. Com essa máquina,
você transforma qualquer item com valores de matéria em matéria. Depois de escanear alguns itens e armazenar seus valores
em chips, você pode usar o **Terminal de Replicação** para solicitar itens. Com um pedido criado, os **Replicadores** usam
a Matéria armazenada nos tanques para replicar o item do zero e o enviam de volta ao terminal.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="setup.snbt" />
  <IsometricCamera  yaw="30" pitch="30" />
</GameScene>

## Aceleração

* Carcaça do Replicador: você pode adicionar a carcaça a um Replicador agachando + clicando com o botão direito no Replicador, e ela
  fornece uma aceleração passiva de 20%, mas com 10% a mais de consumo de energia.
* Motor do Replicador: você pode adicionar o motor a um Replicador agachando + clicando com o botão direito no Replicador. Você poderá
  configurar um multiplicador de velocidade para o Replicador, em que 100% é a velocidade padrão e 20% é o mais rápido que ele
  consegue. Quanto mais rápido, maior a chance de falha. Quando uma impressão falha, o replicador precisa rodar de novo, mas
  não consome mais matéria para isso. Para fabricá-lo, você precisa fabricar o diagrama dele e usá-lo no
  Armazenamento de Chips, e aí poderá replicá-lo.

## MatterOpédia

A MatterOpédia é uma lista pesquisável que permite buscar quais itens têm um Valor de Matéria específico. Você pode
acessá-la pelo botão à esquerda da Barra de Pesquisa na tela do Terminal de Replicação, e também clicando
nos mostradores de matéria à direita do terminal.

Na barra de pesquisa da MatterOpédia você pode usar:

* Qualquer nome de matéria: mostra todos os itens que têm aquela matéria
* `earth>10` mostra todos os itens que têm mais de 10 de terra
* `nether=20` mostra todos os itens que têm exatamente 20 de nether
* `quantum<6` mostra todos os itens que têm menos de 6 de quântica
* `!earth` mostra todos os itens que não têm terra
* `*metallic` mostra todos os itens que só têm metálica
