---
navigation:
  title: Matriz de Encantamento Arcano
  icon: nep:arcane_enchanting_matrix
  parent: nep/ars_nouveau/index.md
  position: 50
item_ids:
  - nep:arcane_enchanting_matrix
categories:
  - Matrices
---
# <Color id="light_purple">Matriz de Encantamento Arcano</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Matriz de Encantamento Arcano</Color>

  <ItemImage id="nep:arcane_enchanting_matrix" scale="2"/>

  Um bloco que substitui o Aparato de Encantamento com seu anel de Pedestais Arcanos e a Câmara de Impregnação com seus pedestais. Ela paga cada fabricação do próprio estoque de Fonte, então nenhuma jarra precisa ficar ao alcance de um pedestal.
</Column>

<Recipe id="nep:module_status/arcane_enchanting_matrix"/>

> <Color id="yellow">O bloco mostra o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo deriva enquanto a Matriz está ociosa, acelera e clareia quando uma fabricação roda, e irrompe quando a fabricação aterrissa. Uma Matriz parada escurece e trava no lugar, e sua moldura apaga.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:arcane_enchanting_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e insira padrões de <ItemLink id="nep:apparatus_pattern"/> ou <ItemLink id="nep:imbuement_pattern"/>, ou padrões de processamento comuns de qualquer um dos dois. Os mesmos padrões que dirigem as máquinas reais dirigem a Matriz.
* Encantamentos e Melhorias de Armadura também rodam aqui, um padrão por nível de encantamento, exatamente como no aparato real.
* A Matriz é uma máquina ME: ela se junta à rede pela própria conexão de grade, consome um pequeno custo fixo de energia e devolve itens prontos ao Provedor sozinha. Ela não precisa de **Cartão de Importação**.
* Ela ocupa <nep:ConfigValue name="arcaneEnchantingMatrixChannels"/> canais, então qualquer coisa acima de 8 precisa de um cabo denso até ela.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fonte</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz comporta até 100.000 de Fonte, mostrado no medidor à direita da sua tela. Uma fabricação paga o custo total de Fonte da receita no momento em que começa.

* **Relés de Fonte** podem ser vinculados direto à Matriz com uma Varinha do Domínio, como qualquer outra máquina de Fonte. Nada pode retirar Fonte de volta dela.
* **Jarras de Fonte** num raio de <nep:ConfigValue name="arcaneEnchantingMatrixSourceJarRange"/> blocos são drenadas sozinhas, medidas do jeito que o Aparato de Encantamento mede seu alcance.
* O **Ars Énergistique**, quando instalado, deixa a Matriz drenar a Fonte armazenada na sua rede ME quando as jarras próximas secam.
* A Matriz só drena o que suas fabricações enfileiradas ainda precisam. Ela nunca esvazia jarras próximas para um estoque que não vai usar, então uma jarra dividida com outras máquinas do Ars continua útil para elas.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Catalisadores Emprestados</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os itens de pedestal de uma receita de impregnação nunca são consumidos, então nunca pertencem a um padrão. Codifique só o reagente; um padrão que carrega os itens de pedestal é recusado.

* Quando um trabalho de impregnação chega, a Matriz toma emprestado da rede ME um conjunto dos itens de pedestal e os mostra na prateleira de **Catalisadores**.
* Esse único conjunto serve a todas as fabricações da receita. Ele fica na prateleira enquanto algum trabalho de fabricação ainda tiver fabricações daquela receita para enviar, e depois volta à rede inteiro.
* Com **Solicitar receitas automaticamente** ligado, um item de pedestal que a rede não tem é fabricado para você. Sem a rede, solte os itens de pedestal nos espaços de entrada à mão.
* A prateleira comporta dois conjuntos por vez. Uma terceira receita de impregnação espera até um deles ser devolvido.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Melhorias de Glifo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os dois espaços entre a grade de entrada e o medidor de Fonte aceitam glifos de feitiço.

* O <ItemLink id="ars_nouveau:glyph_accelerate"/> encurta cada fabricação. Uma fabricação do Aparato de Encantamento leva <nep:ConfigValue name="arcaneEnchantingMatrixApparatusCraftTicks"/> ticks e uma impregnação <nep:ConfigValue name="arcaneEnchantingMatrixImbuementCraftTicks"/>; uma pilha cheia de <nep:ConfigValue name="arcaneEnchantingMatrixMaxAccelerate"/> derruba ambas para <nep:ConfigValue name="arcaneEnchantingMatrixMinimumCraftTicks"/>.
* O <ItemLink id="ars_nouveau:glyph_dampen"/> reduz a Fonte que cada fabricação custa. Uma pilha cheia de <nep:ConfigValue name="arcaneEnchantingMatrixMaxDampen"/> tira <nep:ConfigValue name="arcaneEnchantingMatrixSourceDiscount"/>%.
* Menos glifos dão uma fração proporcional de cada efeito.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor nomeia o que está sendo feito, quantos trabalhos estão na fila, a Fonte armazenada e quanto uma fabricação leva com os glifos instalados.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. Esvaziar também devolve a prateleira de catalisadores enquanto nenhuma fabricação está rodando.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio quando nada está preparado até 15 cheio.
* Os espaços de entrada só aceitam o que a Matriz realmente precisa, então uma funil pode completá-la sem entupi-la.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita do Aparato de Encantamento ou de impregnação também pode ser iniciada a partir do seu próprio inventário. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro.
* O item pronto espera no buffer de saída para você pegar.
* Os itens de pedestal de impregnação ainda vêm da rede ou dos espaços de entrada, nunca do seu inventário.
* Encantamentos e Melhorias de Armadura são só por padrão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa.
* **Aguardando Fonte.** O estoque ainda não pode pagar a próxima fabricação. Ela começa sozinha quando chega Fonte suficiente.
* **Aguardando catalisadores.** Os itens de pedestal de uma receita de impregnação não estão na prateleira e não puderam ser emprestados.
* **Prateleira de catalisadores cheia.** Duas outras receitas de impregnação estão segurando seus conjuntos. O trabalho começa quando um deles é devolvido.
* **Buffer de saída cheio.** Uma fabricação pronta sem destino segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode ser enfileirada por vez.
