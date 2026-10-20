---
navigation:
  title: Reconstrução Atômica
  icon: actuallyadditions:atomic_reconstructor
  parent: nep/actuallyadditions/index.md
  position: 31
item_ids:
  - nep:atomic_reconstruction_pattern
---
# <Color id="gold">Reconstrução Atômica</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Reconstrução Atômica</Color>

  <ItemImage id="nep:atomic_reconstruction_pattern" scale="2"/>

  Codifica as receitas de laser do Reconstrutor Atômico como padrões. Elas rodam na <ItemLink id="nep:atomic_empowering_matrix"/>, ou empurram seus ingredientes para fora como um padrão de processamento comum para alimentar o Reconstrutor de verdade.
</Column>

<Recipe id="nep:module_status/atomic_reconstruction"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Matriz ou a Máquina de Verdade</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O mesmo padrão dirige as duas máquinas:

* **Na Matriz.** Coloque o padrão num Provedor em qualquer face da Matriz. Ingredientes, energia e saídas são todos tratados dentro do bloco.
* **No Reconstrutor de verdade.** O Reconstrutor não tem buffer de itens. Sua entrada é o que estiver **jogado no chão** tocando o feixe, e sua saída é um item largado. Então o Provedor não consegue empurrar para dentro do bloco em si: aponte-o para um ejetor virado para o feixe e traga os itens largados de volta à rede com um Coletor de Alcance ou um funil alimentando uma Interface ME.

Uma face de Provedor encostada na Matriz sempre usa a Matriz. Qualquer outro inventário adjacente recebe os ingredientes brutos como qualquer envio de padrão de processamento, então dê a esses padrões um Provedor próprio se ele também tocar armazenamento.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Abra um Terminal de Codificação de Padrões, escolha uma receita de laser no JEI e pressione **+**.
* Um item entra, um item sai. Amplie o padrão e a Matriz executa essa quantidade de fabricações em sequência, cobrando a energia da receita em cada uma.
* Só um id de receita conhecido pelo Actually Additions codifica. Montar a mesma conversão à mão a partir de um padrão de processamento comum não codifica, porque uma receita do Create poderia reivindicar o mesmo formato de um-entra-um-sai.
