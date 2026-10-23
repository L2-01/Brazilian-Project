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
  A Chave-Inglesa configura e gira blocos do NauTec, e define quais faces de uma máquina funis e tubos podem usar.
</Column>

***

<Row>
  <ItemImage id="aquarine_steel_wrench"/>
  ### <Color id="aqua">Chave-Inglesa de Aço Aquarine</Color>
</Row>

A chave tem quatro modos. Agache e clique direito no ar para alternar entre eles; a dica e a mensagem acima da barra de itens mostram o atual.

* Girar: clique direito em qualquer bloco com direção, como o <ItemLink id="aquatic_catalyst"/>, um relé ou uma máquina, para girá-lo à próxima direção. Continue clicando para dar a volta completa.
* Lados de Itens e Lados de Fluidos: clique direito numa face de uma máquina para mudar o que funis e tubos podem fazer por ela, e agache + clique direito para voltar. No modo Lados de Itens, qualquer bloco de um Biorreator ou Biorreator Industrial formado define aquele lado do reator inteiro. Veja Configuração de Lados abaixo.
* Vincular: mira dois blocos de laser um para o outro em dois cliques. Clique direito no bloco que envia o feixe, como um <ItemLink id="prismarine_laser_relay"/>, uma <ItemLink id="laser_junction"/> ou um <ItemLink id="aquatic_catalyst"/>, para salvá-lo como origem. Depois clique direito no bloco que o feixe deve alcançar, como outro relé ou uma máquina. A chave gira a origem para disparar na direção do segundo bloco e gira o segundo bloco para aceitar o feixe da origem; numa junção ela abre a face de saída ou entrada correspondente. Os dois blocos precisam estar em linha reta e dentro do alcance do feixe, e a mensagem acima da barra diz se algo está no caminho. Após um vínculo a origem salva é limpa, pronta para o próximo. Clicar direito no ar, ou num bloco que não envia nem recebe feixes, limpa a origem salva, e a dica mostra onde ela está enquanto houver uma salva. Nesse modo a chave funciona em máquinas sem abrir suas telas. Um relé recebe o feixe por trás e o emite pela frente, então vincular um relé adiante contornando um canto o afasta do feixe que ele recebia; a mensagem te avisa, e uma <ItemLink id="laser_junction"/> dobra feixes nas esquinas.

Estes funcionam em todo modo:

* Uma Estação de Aprimoramento Corporal, um Biorreator, um Biorreator Industrial ou um Dreno do Mar Profundo não formados constroem seu multibloco quando você clica no bloco controlador sem agachar.
* Um <ItemLink id="gateway"/> forma seu anel quando você clica nele, e agachar + clique direito num anel formado o empacota inteiro num item. Veja [Portal](nautec:deep_engineering/gateway.md).
* Agachar + clique direito num Cristal de Prismarinho que você mesmo cultivou recolhe o cristal inteiro. Cristais selvagens não podem ser movidos. Veja [Cultivo de Cristais](nautec:deep_engineering/crystal_cultivation.md).
* Clicar direito num Explorador Marinho abre sua tela de módulos. Veja [Explorador Marinho](nautec:submarine/submarine.md).
* Uma face de <ItemLink id="laser_junction"/> vira entrada com clique direito e saída com agachar + clique direito. Clicar de novo do mesmo jeito desliga a face.
* Um bloco de borda superior de um [Biorreator](nautec:aquatic_biology/bio_reactor.md) formado, um bloco do teto de um [Biorreator Industrial](nautec:aquatic_biology/industrial_bio_reactor.md) formado, ou a face externa de um bloco da parede do meio de um [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) formado abre uma porta de laser ali, para um feixe alimentar a máquina. No dreno a porta é exatamente a face que você clica, então clique no lado, não em cima nem embaixo. Uma porta de reator fecha de novo com outro clique. Nos reatores isso não funciona no modo Lados de Itens, já que esse modo define os lados do reator.

<Recipe id="nautec:aquarine_wrench"/>

***

## <Color id="gold">Configuração de Lados</Color>

Toda máquina do NauTec que guarda itens ou fluidos deixa você escolher, face a face, o que a automação pode fazer ali. Itens e fluidos são configurados separadamente. Cada face tem um de quatro modos:

* Inserir e Extrair (verde): funis e tubos podem inserir nos espaços de entrada e extrair dos de saída. Toda face começa assim.
* Inserir (azul): funis e tubos podem inserir, nada sai.
* Extrair (laranja): funis e tubos podem extrair, nada entra.
* Desligado (cinza): funis e tubos não alcançam essa face.

Uma máquina só recebe entradas em seus espaços de entrada e só entrega saídas de seus espaços de saída, qualquer que seja o modo da face, então um tubo não pode puxar seus ingredientes de volta.

Mude uma face com a chave no modo Lados de Itens ou Lados de Fluidos, ou abra a máquina e clique na pequena aba na borda direita da tela. A aba abre uma cruz de seis faces: frente, trás, esquerda, direita, cima e baixo, nomeadas conforme você olha para a frente da máquina. Clique esquerdo numa face para o próximo modo e direito para o anterior. Máquinas que guardam itens e fluidos têm botões Itens e Fluidos acima das faces. Máquinas sem direção, ou viradas reto para cima ou para baixo, tratam o norte como frente.

O Biorreator e o Biorreator Industrial têm uma única configuração de itens por lado para a estrutura inteira: as faces na tela do reator representam os seis lados externos do multibloco, com o lado norte como frente. Outros multiblocos como o Dreno do Mar Profundo e a Usina de Fusão mantêm regras próprias, descritas em suas páginas.

***

<Row>
  <ItemImage id="configuration_card"/>
  ### <Color id="aqua">Cartão de Configuração</Color>
</Row>

Copia configurações de um bloco para outro. Agache e clique direito numa máquina para copiar suas configurações para o cartão, depois clique direito noutro bloco para colá-las. Agache e clique direito no ar para limpar o cartão. A dica mostra de onde vieram as configurações e o que elas cobrem. Clicar direito com o cartão sempre cola, mesmo em blocos que de outra forma abririam a tela.

* A configuração de lados cola em qualquer máquina com configuração de lados, então um único cartão pode configurar uma fileira inteira de máquinas diferentes do mesmo jeito.
* As configurações próprias de um bloco só colam no mesmo tipo de bloco:
  * o filtro e o modo de lista branca de um <ItemLink id="confined_spawner"/>
  * a rede, o modo de entrada ou saída, a prioridade, o limite e o carregamento de chunk de um <ItemLink id="resonance_node"/>
  * a rede e o carregamento de chunk de um <ItemLink id="uplink_array"/>
  * as faces de entrada e saída de uma <ItemLink id="laser_junction"/>
  * as faces de uma Derivação de Conduíte
  * a configuração de distribuição automática de uma <ItemLink id="laser_purification_smelter"/>
* Melhorias e filtros também são copiados, para o mesmo tipo de bloco: a melhoria e o filtro de uma Derivação de Conduíte, as melhorias de um <ItemLink id="energy_converter"/>, as melhorias de um Biorreator e a melhoria de conduíte de uma Fundição de Purificação a Laser. Colar os tira do seu inventário e devolve o que o alvo tinha naqueles espaços. Se faltar algum, nada é colado e o cartão diz do que você precisa.

Colar uma rede de ressonância confere se você tem permissão para usá-la, igual a escolhê-la na tela.

<Recipe id="nautec:configuration_card"/>
