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

  Um bloco que substitui o Aparato de Encantamento com seu anel de Pedestais Arcanos e a Câmara de Impregnação com seus pedestais. Ela paga cada fabricação do seu próprio estoque de Fonte, então nenhuma jarra precisa ficar ao alcance de um pedestal.
</Column>

<Recipe id="nep:module_status/arcane_enchanting_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:arcane_enchanting_matrix" z="0"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face da Matriz e largue padrões <ItemLink id="nep:apparatus_pattern"/> ou <ItemLink id="nep:imbuement_pattern"/> nele, ou padrões de processamento comuns de qualquer um dos dois. Os mesmos padrões que dirigem as máquinas reais dirigem a Matriz.
* Encantamentos e Melhorias de Armadura rodam aqui também, um padrão por nível de encantamento, exatamente como no aparato real.
* A Matriz é uma máquina ME: ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela **não precisa de Cartão de Importação**.
* Ela ocupa <nep:ConfigValue name="arcaneEnchantingMatrixChannels"/> canais, então qualquer coisa acima de 8 precisa de um cabo denso até ela.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fonte</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A Matriz comporta até 100.000 de Fonte, mostrado no medidor à direita de sua tela. Uma fabricação paga o custo de Fonte total de sua receita no momento em que começa.

* **Relés de Fonte** podem ser vinculados direto à Matriz com uma Varinha do Domínio, como qualquer outra máquina de Fonte. Nada consegue tirar Fonte dela de volta.
* **Jarras de Fonte** a até <nep:ConfigValue name="arcaneEnchantingMatrixSourceJarRange"/> blocos são drenadas sozinhas, medido da forma como o Aparato de Encantamento mede seu alcance.
* **Ars Énergistique**, quando instalado, permite à Matriz tirar Fonte armazenada em sua rede ME quando as jarras próximas secarem.
* A Matriz só drena o que suas fabricações na fila ainda precisam. Ela nunca esvazia jarras próximas para um estoque que não tem uso, então uma jarra dividida com outras máquinas do Ars continua útil para elas.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Catalisadores Emprestados</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os itens de pedestal de uma receita de impregnação nunca são consumidos, então nunca pertencem a um padrão. Codifique só o reagente; um padrão que carregue os itens de pedestal é recusado.

* Quando um trabalho de impregnação chega, a Matriz toma emprestado um conjunto dos itens de pedestal da rede ME e os mostra na prateleira de **Catalisadores**.
* Aquele conjunto único atende toda fabricação da receita. Ele fica na prateleira enquanto algum trabalho de fabricação ainda tiver fabricações daquela receita para enviar, depois volta à rede inteiro.
* Com **Solicitar Receitas Automaticamente** ligado, um item de pedestal que a rede não tem é fabricado para você. Sem a rede, largue os itens de pedestal nos espaços de entrada à mão.
* A prateleira comporta dois conjuntos por vez. Uma terceira receita de impregnação espera até um deles ser devolvido.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Melhorias de Glifo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Os dois espaços entre a grade de entrada e o medidor de Fonte aceitam glifos de feitiço.

* <ItemLink id="ars_nouveau:glyph_accelerate"/> encurta toda fabricação. Uma fabricação de Aparato de Encantamento leva <nep:ConfigValue name="arcaneEnchantingMatrixApparatusCraftTicks"/> tiques e uma de impregnação <nep:ConfigValue name="arcaneEnchantingMatrixImbuementCraftTicks"/>; uma pilha cheia de <nep:ConfigValue name="arcaneEnchantingMatrixMaxAccelerate"/> derruba ambas para <nep:ConfigValue name="arcaneEnchantingMatrixMinimumCraftTicks"/>.
* <ItemLink id="ars_nouveau:glyph_dampen"/> reduz a Fonte que cada fabricação custa. Uma pilha cheia de <nep:ConfigValue name="arcaneEnchantingMatrixMaxDampen"/> tira <nep:ConfigValue name="arcaneEnchantingMatrixSourceDiscount"/>%.
* Menos glifos dão uma parcela proporcional de cada efeito.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador nomeia o que está sendo fabricado, quantos trabalhos estão na fila, a Fonte armazenada e quanto uma fabricação leva com os glifos instalados.
* Os três botões limpam os trabalhos pendentes, esvaziam os buffers no seu inventário e abrem esta página. Esvaziar também lhe entrega a prateleira de catalisadores enquanto nenhuma fabricação está rodando.
* Um Comparador ao lado da Matriz lê o buffer de saída, de vazio para nada preparado até o 15 completo.
* Os espaços de entrada só aceitam o que a Matriz realmente precisa, então um funil consegue completá-la sem entupi-la.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de Aparato de Encantamento ou de impregnação também pode ser iniciada a partir do seu próprio inventário. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro.
* O item concluído espera no buffer de saída para você pegar.
* Os itens de pedestal de impregnação ainda vêm da rede ou dos espaços de entrada, nunca do seu inventário.
* Encantamentos e Melhorias de Armadura são só por padrão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Sem energia na rede.** A Matriz precisa de uma rede ME energizada antes de começar qualquer coisa.
* **Esperando Fonte.** O estoque ainda não consegue pagar a próxima fabricação. Ela começa sozinha quando Fonte suficiente chegar.
* **Esperando catalisadores.** Os itens de pedestal de uma receita de impregnação não estão na prateleira e não puderam ser emprestados.
* **Prateleira de catalisadores cheia.** Duas outras receitas de impregnação estão segurando seus conjuntos. O trabalho começa quando um deles for devolvido.
* **Buffer de saída cheio.** Uma fabricação concluída sem para onde ir segura a máquina em progresso total até o buffer ser esvaziado.
* **Duas receitas para um item.** Só uma receita por item de resultado pode estar na fila por vez.
