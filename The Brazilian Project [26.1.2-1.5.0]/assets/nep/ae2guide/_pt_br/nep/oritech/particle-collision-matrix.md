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

  Um bloco que substitui o Acelerador de Partículas inteiro. Ele executa receitas de colisão sem anel, sem motores e sem partículas em voo, pagando em FE o que os motores teriam gasto.

  É feita colidindo um [Controlador de Colisão de Partículas](/nep/oritech/particle-collision-controller.md) com um <ItemLink id="nep:particle_collision_core"/>.
</Column>

<Recipe id="nep:module_status/particle_collision_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:particle_collision_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e largue padrões <ItemLink id="nep:particle_collision_pattern"/> nele. Os mesmos padrões também rodam num [Controlador de Colisão de Partículas](/nep/oritech/particle-collision-controller.md).
* Forneça **FE** à Matriz por qualquer face.
* Faltando FE, uma fabricação recorre à própria energia da rede ME, até o último décimo que a rede mantém de reserva. A configuração `Charge From ME Network` desliga isso.
* A Matriz também é uma máquina ME: ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela não precisa de **Cartão de Importação**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **O custo vem da velocidade da receita.** Uma fabricação custa o que os motores do Oritech teriam gasto empurrando uma partícula até a velocidade de colisão daquela receita, então ela cresce com o quadrado da velocidade: uma receita de velocidade 15000 custa centenas de vezes mais que uma de velocidade 500. A configuração `Energy Cost (%)` o escala.
* **O tempo tem um piso, não um teto.** Uma fabricação leva no mínimo `Tiques de Fabricação`. Uma que custa mais do que o buffer comporta ainda termina, pagando um buffer inteiro por tique até cobrir, então as receitas mais caras rodam por mais tempo.
* **O resultado inteiro sai.** Um padrão pede o resultado completo da receita, e a Matriz produz exatamente isso para cada colisão.
* **Padrões em lote são enfileirados.** Um padrão escalado para quatro fabricações são quatro trabalhos, executados um após o outro, cada um cobrado por inteiro. Câmaras de Processamento Auxiliares executam várias de uma vez (veja Complementos).

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Complementos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os blocos de complemento do próprio Oritech funcionam na Matriz como funcionam em qualquer máquina Oritech: coloque um contra o topo ou qualquer um dos quatro lados e ele acende assim que a Matriz o aceita. A face de baixo nunca aceita um complemento, então um cabo sempre tem onde conectar. Extensores alcançam além da face do mesmo jeito que fazem numa máquina Oritech, e quebrar um complemento retira seu bônus na hora.

* **Velocidade** encurta a fabricação. O tempo vira `Tiques de Fabricação` vezes o multiplicador do complemento, então um Complemento de Velocidade em 0,75 transforma uma fabricação de 40 tiques em 30. Complementos de velocidade do Oritech também carregam uma penalidade de eficiência, então a fabricação normalmente custa mais FE, pago em menos tiques.
* **Eficiência** escala o FE que uma fabricação custa pelo multiplicador do complemento. Não muda o tempo.
* **Capacitor** e o **Complemento Extensor de Banco de Energia** aumentam o tamanho do buffer e a velocidade com que ele carrega, sobre os valores configurados.
* **Receptor** aceita FE através do próprio bloco e o deposita no mesmo buffer. A Matriz ainda aceita FE em todas as faces sem um complemento.
* **Câmara de Processamento Auxiliar** adiciona câmaras. Uma fabricação inicia uma colisão extra por câmara, para quantas estiverem na fila, tiverem seus ingredientes no buffer de entrada e couberem no buffer de saída. Todas terminam juntas, no tempo e pelo FE de uma única colisão.
* **Coração da Máquina** e **Matriz de Sinergia** trazem os atributos que carregam: velocidade, eficiência, câmaras e buffer.
* Os complementos escalonados de **Velocidade**, **Velocidade Eficiente**, **Eficiência**, **Capacitor**, **Receptor** e **Processamento** do Oritech Things funcionam do mesmo jeito, nas suas próprias categorias.
* Complementos sem nada a fazer numa colisão ficam apagados e não mudam nada: Rendimento, Toque Suave, Caçador, Pedreira, Filtro de Plantações, Fluido, Caldeira a Vapor, Redstone, Proxy de Inventário, Rajada e o Cross Dimensional do Oritech Things.
* **Núcleo de Máquina** vai no espaço único na ponta esquerda da faixa de complementos. Ele funciona como funciona sob uma máquina Oritech: um núcleo melhor permite conectar mais extensores de complemento, e tirá-lo desvincula os extras imediatamente. Qualquer Núcleo de Máquina do Oritech serve, do Primitivo ao Ultimate; Chapa Complexa não. Com o espaço vazio a Matriz permite o que o Oritech permite por padrão.

Entre o mostrador e os espaços de entrada fica a faixa de complementos. Cada complemento conectado aparece como seu bloco, numa ordem fixa, e passar o mouse sobre um nomeia o que ele contribui: velocidade, custo de energia, câmaras, buffer e taxa de carga. Além do que cabe, um marcador `+N` lista o resto. Quando há espaço, a faixa também carrega os totais: o ganho de velocidade, a fração de FE que uma fabricação custa, e as câmaras extras. Passe o mouse sobre um trecho vazio da faixa para os números completos e quantos extensores o núcleo permite.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador nomeia o que está sendo feito, quantos trabalhos estão na fila, quanto da energia da fabricação já foi paga e a velocidade de colisão que a receita pede.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. **Guia** é sempre o mais à direita deles.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio para nada preparado até o 15 completo.
* Os espaços de entrada só aceitam o que a Matriz realmente está precisando, então um funil pode completá-la sem entupi-la.
* Cada espaço de buffer comporta até 64 de qualquer item, seja qual for a pilha normal daquele item.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de colisão também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: os dois ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* Os itens concluídos esperam no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* A energia vem de fora como sempre, então a Matriz ainda precisa do seu FE e de uma rede energizada para uma fabricação iniciada à mão andar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa, além do seu FE.
* **Sem canais livres suficientes na rede.** A Matriz ocupa <nep:ConfigValue name="particleCollisionMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* **Sem energia.** O buffer de FE está vazio. A fabricação retoma sozinha quando a energia volta.
* **Buffer de saída cheio.** Uma fabricação concluída sem lugar para ir segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode estar na fila por vez; um segundo padrão fazendo o mesmo item de outra forma é recusado até a primeira terminar.
