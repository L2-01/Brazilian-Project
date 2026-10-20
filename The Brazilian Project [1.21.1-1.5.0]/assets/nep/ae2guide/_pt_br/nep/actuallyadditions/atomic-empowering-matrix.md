---
navigation:
  title: Matriz de Fortalecimento Atômico
  icon: nep:atomic_empowering_matrix
  parent: nep/actuallyadditions/index.md
  position: 33
item_ids:
  - nep:atomic_empowering_matrix
categories:
  - Matrices
---
# <Color id="gold">Matriz de Fortalecimento Atômico</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Fortalecimento Atômico</Color>

  <ItemImage id="nep:atomic_empowering_matrix" scale="2"/>

  Um bloco que substitui as duas máquinas de fabricação do Actually Additions. Ele executa receitas de fortalecimento sem Suportes de Exibição, e receitas do Reconstrutor Atômico sem laser; sem itens largados no chão e sem esperar pelo próximo disparo.
</Column>

<Recipe id="nep:module_status/atomic_empowering_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:atomic_empowering_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e largue padrões <ItemLink id="nep:empowering_pattern"/> ou <ItemLink id="nep:atomic_reconstruction_pattern"/> nele; a Matriz aceita os dois.
* Forneça **FE** à Matriz por qualquer face.
* Faltando FE, uma fabricação consome a própria energia da rede ME, até o último décimo que a rede mantém em reserva. A configuração `Charge From ME Network` desativa isso.
* A Matriz também é uma máquina ME: ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela **não precisa de Cartão de Importação**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **O custo vem da receita.** Uma fabricação de fortalecimento custa o que os quatro suportes teriam pago juntos; uma fabricação de reconstrução custa o que o laser teria cobrado por aquele item. A configuração `Energy Cost (%)` escala ambos.
* **O tempo é definido por tipo de fabricação.** Fortalecimento e reconstrução têm cada um sua própria duração configurada, e a duração da própria receita nunca é usada. Receitas de fortalecimento que levam até 500 tiques no multibloco real levam os Tiques de Fabricação de Fortalecimento aqui.
* **Padrões em lote entram na fila.** Um padrão ampliado para quatro fabricações são quatro trabalhos, executados um após o outro, cada um cobrado por inteiro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador nomeia o que está sendo fabricado, quantos trabalhos estão na fila e quanto da energia da fabricação já foi paga.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. **Guia** é sempre o mais à direita deles.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio para nada preparado até o 15 completo.
* Os espaços de entrada só aceitam o que a Matriz realmente precisa, então um funil consegue completá-la sem entupi-la.
* Cada espaço do buffer comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que pede uma pilha de ferramentas ou poções ainda cabe.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de fortalecimento ou reconstrução atômica também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* A energia vem de fora como sempre, então a Matriz ainda precisa do seu FE e de uma rede energizada para uma fabricação iniciada à mão andar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa, além do seu FE.
* **Canais de rede insuficientes.** A Matriz ocupa <nep:ConfigValue name="atomicEmpoweringMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* **Sem energia.** O buffer de FE está vazio. A fabricação retoma sozinha quando a energia volta.
* **Buffer de saída cheio.** Uma fabricação concluída sem para onde ir segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode estar na fila por vez; um segundo padrão fazendo o mesmo item de outra forma é recusado até a primeira terminar.
