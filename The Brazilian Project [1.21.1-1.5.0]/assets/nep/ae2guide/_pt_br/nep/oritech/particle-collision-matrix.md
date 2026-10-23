---
navigation:
  title: Matriz de Colisão de Partículas
  icon: nep:particle_collision_matrix
  parent: nep/oritech/index.md
  position: 30
item_ids:
  - nep:particle_collision_matrix
  - nep:particle_collision_core
categories:
  - Matrices
---
# <Color id="aqua">Matriz de Colisão de Partículas</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Matriz de Colisão de Partículas</Color>

  <ItemImage id="nep:particle_collision_matrix" scale="2"/>

  Um bloco que substitui o Acelerador de Partículas inteiro. Ela executa receitas de colisão sem anel, sem motores e sem partículas em voo, pagando em FE o que os motores teriam gasto.

  Ela é feita colidindo um [Controlador de Colisão de Partículas](/nep/oritech/particle-collision-controller.md) com um <ItemLink id="nep:particle_collision_core"/>.
</Column>

<Recipe id="nep:module_status/particle_collision_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:particle_collision_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e insira nele padrões de <ItemLink id="nep:particle_collision_pattern"/>. Os mesmos padrões também rodam num [Controlador de Colisão de Partículas](/nep/oritech/particle-collision-controller.md).
* Forneça **FE** à Matriz em qualquer face.
* Faltando FE, uma fabricação drena a energia da própria rede ME, até o último décimo que a rede guarda em reserva. A configuração `Charge From ME Network` desativa isso.
* A Matriz também é uma máquina ME: ela se junta à rede pela própria conexão de grade, consome uma pequena energia fixa e devolve os itens prontos ao Provedor sozinha. Ela não precisa de **Cartão de Importação**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **O custo vem da velocidade da receita.** Uma fabricação custa o que os motores do Oritech teriam gasto empurrando uma partícula até a velocidade de colisão daquela receita, então cresce com o quadrado da velocidade: uma receita de velocidade 15000 custa centenas de vezes mais que uma de 500. A configuração `Energy Cost (%)` escala isso.
* **O tempo tem piso, não teto.** Uma fabricação leva no mínimo `Craft Ticks`. Uma que custa mais do que o buffer comporta ainda termina, pagando um buffer por tick até ser coberta, então as receitas mais caras rodam mais tempo.
* **O resultado inteiro sai.** Um padrão sempre pede um do resultado, mas a Matriz faz o que a receita nomeia, e qualquer coisa além do que o trabalho queria vai para a rede.
* **Padrões em lote são enfileirados.** Um padrão escalado para quatro fabricações são quatro trabalhos, executados um após o outro, cada um cobrado integralmente. Câmaras de Processamento Auxiliar rodam várias por vez (veja Addons).

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Addons</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os blocos de addon do próprio Oritech funcionam na Matriz como em qualquer máquina do Oritech: coloque um contra o topo ou qualquer um dos quatro lados e ele acende quando a Matriz o aceita. A face de baixo nunca aceita um addon, então um cabo sempre tem onde conectar. Extensores alcançam além da face do mesmo jeito que numa máquina do Oritech, e quebrar um addon tira seu bônus de volta.

* **Velocidade** encurta a fabricação. O tempo vira `Craft Ticks` vezes o multiplicador do addon, então um Addon de Velocidade no padrão 0,5 do Oritech transforma uma fabricação de 40 ticks em 20. Addons de velocidade do Oritech também carregam uma penalidade de eficiência, então a fabricação geralmente custa mais FE, paga em menos ticks.
* **Eficiência** escala o FE que uma fabricação custa pelo multiplicador do addon. Ela não muda o tempo.
* **Capacitor** e o **Extensor de Addon de Banco de Energia** aumentam o tamanho do buffer e quão rápido ele carrega, por cima dos valores configurados.
* **Aceitador** recebe FE pelo próprio bloco e o põe no mesmo buffer. A Matriz ainda aceita FE em toda face sem um addon.
* **Câmara de Processamento Auxiliar** adiciona câmaras. Uma fabricação inicia uma colisão extra por câmara, para quantas estiverem enfileiradas, tiverem seus ingredientes no buffer de entrada e couberem no buffer de saída. Todas terminam juntas, no tempo e pelo FE de uma única colisão.
* **Coração da Máquina** e **Matriz de Sinergia** trazem os atributos que carregam: velocidade, eficiência, câmaras e buffer.
* Os addons de tier do Oritech Things — **Velocidade**, **Velocidade Eficiente**, **Eficiência**, **Capacitor**, **Aceitador** e **Processamento** — funcionam do mesmo jeito, nos seus próprios tiers.
* Addons sem nada a fazer numa colisão ficam apagados e não mudam nada: Rendimento, Toque Suave, Caçador, Pedreira, Filtro de Plantação, Fluido, Caldeira a Vapor, Redstone, Procurador de Inventário, Explosão e o Dimensional Cruzado do Oritech Things.
* **Núcleo de Máquina** vai no espaço único na ponta esquerda da faixa de addons. Ele funciona como embaixo de uma máquina do Oritech: um núcleo melhor permite mais extensores de addon, e tirá-lo desvincula os extras na hora. Qualquer Núcleo de Máquina do Oritech serve, do Primitivo ao Último; Blindagem Complexa não serve. Com o espaço vazio a Matriz permite o que o Oritech permite por padrão.

Entre o visor e os espaços de entrada fica a faixa de addons. Cada addon acoplado aparece como seu bloco, numa ordem fixa, e passar o mouse num nomeia o que ele contribui: velocidade, custo de energia, câmaras, buffer e taxa de carga. Além do que cabe, um marcador `+N` lista o resto. Quando há espaço a faixa também carrega os totais: o ganho de velocidade, a fração de FE que uma fabricação custa, e as câmaras extras. Passe o mouse num trecho vazio da faixa para ver os números completos e quantos extensores o núcleo permite.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor nomeia o que está sendo feito, quantos trabalhos estão na fila, quanto da energia da fabricação já foi pago, e a velocidade de colisão que a receita pede.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. **Guia** é sempre o último à direita.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio quando nada está preparado até 15 cheio.
* Os espaços de entrada só aceitam o que a Matriz realmente precisa, então uma funil pode completá-la sem entupi-la.
* Cada espaço de buffer comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de colisão também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: os dois ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* Os itens prontos esperam no buffer de saída para você pegar. Nada vai à rede, e nenhum trabalho de fabricação é criado.
* A energia vem de fora como sempre, então a Matriz ainda precisa da sua FE e de uma rede energizada para uma fabricação manual andar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa, além da sua FE.
* **Canais de rede livres insuficientes.** A Matriz ocupa <nep:ConfigValue name="particleCollisionMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* **Sem energia.** O buffer de FE está vazio. A fabricação retoma sozinha quando a energia volta.
* **Buffer de saída cheio.** Uma fabricação pronta sem destino segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode ser enfileirada por vez; um segundo padrão que faz o mesmo item de outra forma é recusado até o primeiro terminar.
