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

  Uma tigela que entrega os ingredientes de um Provedor de Padrões aos seus próprios espíritos trabalhadores, e apanha o que eles fazem antes de chegar ao chão.
</Column>

<Recipe id="nep:module_status/spirit_provider"/>

<Recipe id="nep:spirit_provider"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Coloque o Provedor onde a área de trabalho de um espírito triturador, cristalizador, fundidor ou comerciante o cubra, e ponha um Provedor de Padrões contra ele.
* Encha o Provedor de Padrões com **Padrões de Processamento** comuns para as receitas daquele espírito.
* O Provedor só atende um espírito cuja área de trabalho o cubra, e só aceita um padrão quando um espírito por perto consegue trabalhar cada uma das suas entradas. Qualquer outra coisa é recusada para a rede mandar a outro lugar.
* Os produtos prontos voltam ao Provedor de Padrões sozinhos, então ele não precisa de Cartão de Importação.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Provedor deposita uma pilha por vez na sua tigela. Um espírito a apanha como apanharia qualquer item jogado no chão, e a trabalha na sua própria velocidade e com a sua própria saída.
* O resultado é recolhido no momento em que o espírito termina, em vez de dropado.
* Uma pilha que ninguém coleta em 30 segundos é recolhida e depositada de novo.
* Ele segura até <nep:ConfigValue name="spiritProviderQueueLimit"/> fabricações por vez. Enquanto cheio recusa padrões, e a rede tenta de novo depois.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tenha em Mente</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Funis não mexem numa pilha na tigela. Um coletor de itens de outro mod ao alcance ainda pode agarrá-la antes do espírito, e aquela fabricação então nunca termina.
* O Provedor reconhece um resultado pelo item que entrou, então duas fabricações da mesma entrada ao mesmo tempo dividem seus resultados.
