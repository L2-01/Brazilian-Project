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

  Um bloco que substitui as duas máquinas de fabricação do Actually Additions. Ele executa receitas de fortalecimento sem Suportes de Exibição e receitas do Reconstrutor Atômico sem laser; sem itens soltos no chão e sem espera pelo próximo disparo.
</Column>

<Recipe id="nep:module_status/atomic_empowering_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:atomic_empowering_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e insira nele padrões de <ItemLink id="nep:empowering_pattern"/> ou <ItemLink id="nep:atomic_reconstruction_pattern"/>; a Matriz aceita ambos.
* Forneça **FE** à Matriz em qualquer face.
* Faltando FE, uma fabricação consome a energia da própria rede ME, até o último décimo que a rede guarda em reserva. A configuração `Charge From ME Network` desativa isso.
* A Matriz também é uma máquina ME: ela se junta à rede pela própria conexão de grade, consome uma pequena energia fixa e devolve os itens prontos ao Provedor sozinha. Ela não precisa de **Cartão de Importação**.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **O custo vem da receita.** Uma fabricação de fortalecimento custa o que os quatro suportes pagariam juntos; uma fabricação de reconstrução custa o que o laser cobraria por aquele item. A configuração `Energy Cost (%)` escala ambos.
* **O tempo é definido por tipo de fabricação.** Fortalecimento e reconstrução têm cada um sua duração configurada, e a duração da própria receita nunca é usada. Receitas de fortalecimento que levariam até 500 ticks no multibloco real levam os Empowering Craft Ticks aqui.
* **Padrões em lote são enfileirados.** Um padrão escalado para quatro fabricações são quatro trabalhos, executados um após o outro, cada um cobrado integralmente.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor nomeia o que está sendo feito, quantos trabalhos estão na fila e quanto da energia da fabricação já foi pago.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. **Guia** é sempre o último à direita.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio quando nada está preparado até 15 cheio.
* Os espaços de entrada só aceitam o que a Matriz realmente precisa, então uma funil pode completá-la sem entupi-la.
* Cada espaço do buffer comporta até 64 de qualquer item, não importa o quanto esse item normalmente empilhe, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de fortalecimento ou de reconstrução atômica também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* A energia vem de fora como sempre, então a Matriz ainda precisa da sua FE e de uma rede energizada para uma fabricação manual andar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa, além da sua FE.
* **Canais de rede livres insuficientes.** A Matriz ocupa <nep:ConfigValue name="atomicEmpoweringMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* **Sem energia.** O buffer de FE está vazio. A fabricação retoma sozinha quando a energia volta.
* **Buffer de saída cheio.** Uma fabricação pronta sem destino segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode ser enfileirada por vez; um segundo padrão que faz o mesmo item de outra forma é recusado até o primeiro terminar.
