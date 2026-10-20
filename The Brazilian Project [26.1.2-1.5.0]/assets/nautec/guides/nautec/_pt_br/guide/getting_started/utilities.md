---
navigation:
  title: Ferramentas e Utilidades
  icon: nautec:aquarine_steel_wrench
  position: 7
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:aquarine_steel_wrench
  - nautec:configuration_card
---

# <Color id="light_purple">Ferramentas e Utilidades</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquarine_steel_wrench" scale="2"/>
  A Chave configura e gira blocos do NauTec, e define quais faces de uma máquina funis e canos podem usar.
</Column>

***

<Row>
  <ItemImage id="aquarine_steel_wrench"/>
  ### <Color id="aqua">Chave-Inglesa de Aço Aquarine</Color>
</Row>

A chave tem três modos. Agache e clique com o botão direito no ar para alternar entre eles; o tooltip e a mensagem acima da hotbar mostram o atual.

* Girar: clique com o botão direito em qualquer bloco com orientação, como o <ItemLink id="aquatic_catalyst"/>, um relé ou uma máquina, para girá-lo para a próxima direção. Continue clicando para dar a volta completa.
* Lados de Itens e Lados de Fluidos: clique com o botão direito numa face de uma máquina para mudar o que funis e canos podem fazer por ela, e agache + clique com o botão direito para voltar. No modo Lados de Itens, qualquer bloco de um Biorreator ou Biorreator Industrial formado define aquele lado do reator inteiro. Veja Configuração de Lados abaixo.

Estas funcionam em todo modo:

* Uma Estação de Aprimoramento Corporal, Biorreator, Biorreator Industrial ou Dreno do Mar Profundo não formado forma seu multibloco quando você clica no bloco controlador sem agachar.
* Um <ItemLink id="gateway"/> forma seu anel quando você clica nele, e um agachar + botão direito num anel formado compacta o anel inteiro num item só. Veja [Portal](nautec:deep_engineering/gateway.md).
* Agachar + botão direito num Cristal de Prismarinho que você mesmo cultivou recolhe o cristal inteiro. Cristais selvagens não podem ser movidos. Veja [Cultivo de Cristais](nautec:deep_engineering/crystal_cultivation.md).
* Clicar com o botão direito num Explorador Marinho abre sua tela de módulos. Veja [Explorador Marinho](nautec:submarine/submarine.md).
* Uma face de <ItemLink id="laser_junction"/> vira uma entrada com um botão direito e uma saída com agachar + botão direito. Clicar de novo da mesma forma a desliga.
* Um bloco da borda superior de um [Biorreator](nautec:aquatic_biology/bio_reactor.md) formado, um bloco de teto de um [Biorreator Industrial](nautec:aquatic_biology/industrial_bio_reactor.md) formado, ou a face lateral externa de um bloco de parede do meio de um [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) formado abre uma porta de laser ali, para que um feixe possa alimentar a máquina. No dreno a porta é a face exata que você clica, então clique na lateral, não no topo ou na base. Uma porta de reator se fecha de novo com outro clique. Nos reatores isso não funciona no modo Lados de Itens, já que esse modo define os lados do reator.

<Recipe id="nautec:aquarine_wrench"/>

***

## <Color id="gold">Configuração de Lados</Color>

Toda máquina do NauTec que guarda itens ou fluidos deixa você escolher, face a face, o que a automação pode fazer ali. Itens e fluidos são configurados separadamente. Cada face tem um de quatro modos:

* Inserir e Extrair (verde): funis e canos podem inserir nos slots de entrada e extrair dos slots de saída. Toda face começa assim.
* Inserir (azul): funis e canos podem inserir, nada sai.
* Extrair (laranja): funis e canos podem extrair, nada entra.
* Desligado (cinza): funis e canos não alcançam essa face de jeito nenhum.

Uma máquina só recebe entradas nos seus slots de entrada e entrega saídas pelos seus slots de saída, qualquer que seja o modo da face, então um cano não pode puxar seus ingredientes de volta.

Mude uma face com a chave no modo Lados de Itens ou Lados de Fluidos, ou abra a máquina e clique na pequena aba na borda direita da tela dela. A aba abre uma cruz de seis faces: frente, trás, esquerda, direita, topo e base, nomeadas conforme você olha para a frente da máquina. Botão esquerdo numa face avança para o próximo modo e botão direito volta para o anterior. Máquinas que guardam itens e fluidos têm botões Itens e Fluidos acima das faces. Máquinas sem orientação, ou viradas direto para cima ou para baixo, tratam o norte como sua frente.

O Biorreator e o Biorreator Industrial têm uma configuração de itens por lado para a estrutura inteira: as faces na tela do reator representam os seis lados externos do multibloco, com seu lado norte como frente. Outros multiblocos como o Dreno do Mar Profundo e a Usina de Fusão mantêm suas próprias regras, descritas nas suas páginas.

***

<Row>
  <ItemImage id="configuration_card"/>
  ### <Color id="aqua">Cartão de Configuração</Color>
</Row>

Copia configurações de um bloco para outro. Agache e clique com o botão direito numa máquina para copiar suas configurações para o cartão, depois clique com o botão direito noutro bloco para colá-las. Agache e clique com o botão direito no ar para limpar o cartão. O tooltip mostra de onde as configurações vieram e o que elas cobrem. Clicar com o botão direito segurando o cartão sempre cola, mesmo em blocos que normalmente abririam sua tela.

* A configuração de lados cola em qualquer máquina com configuração de lados, então um cartão pode configurar uma fileira inteira de máquinas diferentes do mesmo jeito.
* As configurações próprias de um bloco só colam no mesmo tipo de bloco:
  * o filtro e o modo de lista-branca de um <ItemLink id="confined_spawner"/>
  * a rede, o modo entrada ou saída, a prioridade, o limite e o carregamento de chunk de um <ItemLink id="resonance_node"/>
  * a rede e o carregamento de chunk de um <ItemLink id="uplink_array"/>
  * as faces de entrada e saída de uma <ItemLink id="laser_junction"/>
  * as faces de uma Derivação de Conduíte
  * a configuração de distribuição automática de uma <ItemLink id="laser_purification_smelter"/>
* Melhorias e filtros também copiam, para o mesmo tipo de bloco: a melhoria e o filtro de uma Derivação de Conduíte, as melhorias de um <ItemLink id="energy_converter"/>, as melhorias de um Biorreator e a melhoria de conduíte de uma Fundição de Purificação a Laser. Colar os tira do seu inventário e devolve o que o alvo tinha naqueles slots. Se faltar algum, nada é colado e o cartão diz o que você precisa.

Colar uma rede de ressonância verifica se você tem permissão para usá-la, como escolhê-la na tela.

<Recipe id="nautec:configuration_card"/>