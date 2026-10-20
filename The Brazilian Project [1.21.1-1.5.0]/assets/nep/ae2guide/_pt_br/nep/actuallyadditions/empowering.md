---
navigation:
  title: Fortalecimento
  icon: actuallyadditions:empowerer
  parent: nep/actuallyadditions/index.md
  position: 32
item_ids:
  - nep:empowering_pattern
---
# <Color id="gold">Fortalecimento</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Fortalecimento</Color>

  <ItemImage id="nep:empowering_pattern" scale="2"/>

  Um provedor de padrões contra um Fortalecedor prepara todos os itens de uma vez: o item base vai para o Fortalecedor, e um item extra para cada um dos quatro Suportes de Exibição a três blocos de distância.
</Column>

<Recipe id="nep:module_status/empowering"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="actuallyadditions:empowerer" x="0" y="1" z="0"/>
  <Block id="ae2:pattern_provider" x="0" y="0" z="0"/>
  <Block id="actuallyadditions:display_stand" x="3" y="1" z="0"/>
  <Block id="actuallyadditions:display_stand" x="-3" y="1" z="0"/>
  <Block id="actuallyadditions:display_stand" x="0" y="1" z="3"/>
  <Block id="actuallyadditions:display_stand" x="0" y="1" z="-3"/>
</GameScene>

* Construa o Fortalecedor exatamente como o Actually Additions pede: quatro Suportes de Exibição, a três blocos em cada eixo horizontal, todos na mesma altura.
* Coloque um Provedor de Padrões contra qualquer face do **Fortalecedor** e largue padrões <ItemLink id="nep:empowering_pattern"/> nele.
* Mantenha os quatro suportes energizados. Eles ainda são a única fonte de energia que a fabricação tem, e o próprio Fortalecedor não armazena nenhuma.
* Adicione um <ItemLink id="nep:import_card"/> ao Provedor se quiser que o item fabricado volte direto ao sistema quando a fabricação terminar; caso contrário, o item concluído ficará no Fortalecedor.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Abra um Terminal de Codificação de Padrões, escolha uma receita de fortalecimento no JEI e pressione **+**. Os cinco ingredientes caem na grade e o padrão codifica como um Padrão de Fortalecimento.
* Qual suporte recebe qual modificador não importa. A Matriz e o Fortalecedor descobrem isso a partir da receita.
* Um padrão é uma fabricação. Todo espaço que o Fortalecedor usa comporta um único item, então um padrão ampliado para duas ou mais fabricações é recusado em vez de preparado pela metade.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Um suporte está faltando ou ocupado.** Os quatro precisam estar no lugar e vazios antes de uma fabricação ser preparada. Qualquer coisa deixada num suporte à mão bloqueia o envio.
* **Os suportes estão descarregados.** Cada suporte paga sua parte a cada tique, e um suporte que seca pausa a fabricação com os itens ainda dentro. O Actually Additions nunca devolve esses itens por conta própria, então mantenha os suportes num fornecimento que aguente.
* **O resultado nunca volta.** O Actually Additions só deixa a automação tirar um item de um Fortalecedor quando aquele item não é ele mesmo a base de outra receita de fortalecimento. Nenhuma receita oficial faz isso, mas um datapack poderia, e tal resultado precisa ser retirado à mão.
* **O padrão é recusado de cara.** Codifique-o de novo a partir do JEI. Um padrão de processamento que nunca correspondeu a uma receita de fortalecimento fica marcado como inutilizável até o próximo `/reload`.
