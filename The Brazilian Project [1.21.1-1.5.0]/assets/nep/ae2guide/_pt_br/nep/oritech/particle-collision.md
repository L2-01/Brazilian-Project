---
navigation:
  title: Colisão de Partículas
  icon: oritech:accelerator_controller
  parent: nep/oritech/index.md
  position: 10
item_ids:
  - nep:particle_collision_pattern
---
# <Color id="gold">Colisão de Partículas</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Colisão de Partículas</Color>

  <ItemImage id="nep:particle_collision_pattern" scale="2"/>

  Codifica as receitas de colisão do Acelerador de Partículas como padrões, com os dois itens colidindo como ingredientes.
</Column>

<Recipe id="nep:module_status/particle_collision"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Abra um Terminal de Codificação de Padrões, escolha uma receita de colisão no JEI e pressione **+**.
* Dois itens entram, um item sai. O padrão sempre promete um único resultado, porque o acelerador adiciona um item à sua saída por colisão, diga o que disser a receita.
* O padrão empurra seus ingredientes para inventários adjacentes como um padrão de processamento comum.
* Uma colisão precisa de uma partícula acelerada antes que a outra seja solta, algo que um Provedor de Padrões não consegue cronometrar. Execute esses padrões através de um [Controlador de Colisão de Partículas](/nep/oritech/particle-collision-controller.md), ou pule o anel com uma [Matriz de Colisão de Partículas](/nep/oritech/particle-collision-matrix.md), que produz a contagem completa da receita.

<ItemImage id="minecraft:air" scale="0.5"/>
