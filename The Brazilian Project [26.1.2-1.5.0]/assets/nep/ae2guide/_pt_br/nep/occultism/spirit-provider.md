---
navigation:
  title: Provedor de Espíritos
  icon: nep:spirit_provider
  parent: nep/occultism/index.md
  position: 30
item_ids:
  - nep:spirit_provider
---
# <Color id="gold">Provedor de Espíritos</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Provedor de Espíritos</Color>

  <ItemImage id="nep:spirit_provider" scale="2"/>

  Uma tigela que entrega os ingredientes de um Provedor de Padrões aos seus próprios espíritos operários, e recolhe o que eles produzem antes que chegue ao chão.
</Column>

<Recipe id="nep:module_status/spirit_provider"/>

<Recipe id="nep:spirit_provider"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Coloque o Provedor onde a área de trabalho de um espírito triturador, cristalizador, fundidor ou comerciante o cubra, e ponha um Provedor de Padrões contra ele.
* Encha o Provedor de Padrões com **Padrões de Processamento** comuns para as receitas daquele espírito.
* O Provedor só serve a um espírito cuja área de trabalho o cubra, e só aceita um padrão quando um espírito por perto consegue trabalhar cada uma de suas entradas. Qualquer outra coisa é rejeitada para a rede enviar a outro lugar.
* Os produtos concluídos voltam para o Provedor de Padrões por conta própria, então ele não precisa de Cartão de Importação.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Provedor dispõe uma pilha por vez na sua tigela. Um espírito a pega como pegaria qualquer item jogado no chão, e a trabalha na própria velocidade e com a própria saída.
* O resultado é recolhido no momento em que o espírito termina, em vez de cair.
* Uma pilha que ninguém recolhe em 30 segundos é retirada e disposta de novo.
* Ele comporta até <nep:ConfigValue name="spiritProviderQueueLimit"/> fabricações de uma vez. Enquanto cheio, rejeita padrões, e a rede tenta de novo depois.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tenha em Mente</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Funis deixam uma pilha na tigela em paz. Um coletor de itens de outro mod ao alcance ainda pode agarrá-la antes do espírito, e essa fabricação então nunca termina.
* O Provedor reconhece um resultado pelo item que entrou, então duas fabricações da mesma entrada de uma vez dividem seus resultados.
