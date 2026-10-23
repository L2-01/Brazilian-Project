---
navigation:
  title: Armazenamento de Cascas
  icon: neosync:shell_storage
  parent: index.md
  position: 4
item_ids:
  - neosync:shell_storage
  - neosync:manual_shell_storage
  - neosync:zero_point_shell_storage
---

# <Color id="light_purple">Armazenamento de Cascas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="shell_storage" scale="2"/>
  Mantém um corpo seguro enquanto sua mente está em outro lugar.
</Column>

***
## <Color id="gold">Receita</Color>

<RecipeFor id="shell_storage"/>

Como o construtor, o armazenamento tem dois blocos de altura.

***
## <Color id="gold">Energia e Portas</Color>

O armazenamento precisa de energia para manter sua casca viva. Ele aceita um sinal de redstone (a menos que `shellStorageAcceptsRedstone` esteja desligado) ou Forge Energy. Seu buffer comporta 320 FE e drena 16 FE por tique por padrão.

Quando tem energia, as portas abrem. Entre num armazenamento aberto para abrir o seletor de cascas, ou entre num vazio para deixar seu corpo atual lá.

Um armazenamento que perde energia mantém sua casca por `shellStorageMaxUnpoweredLifespan` tiques (20 por padrão); depois disso a casca dentro morre.

***
## <Color id="gold">Truques Úteis</Color>

* Agache e clique direito com um corante para colorir o acabamento e a casca dentro. As cores aparecem no seletor de cascas e podem dirigir o `syncPriority`.
* Funis apontados para um armazenamento podem equipar ou desequipar armadura e ferramentas na casca guardada.
* Um comparador lê o progresso de construção ou a lotação do inventário. Clique direito no armazenamento com o item de chave (um graveto por padrão, definido por `wrench` na config) para alternar entre os dois.
* Minerar um armazenamento ou construtor com qualquer picareta dropa o bloco. Não precisa de toque suave.

***
## <Color id="gold">Armazenamento de Cascas Manual</Color>

<Row>
  <ItemImage id="manual_shell_storage"/>
  ### <Color id="aqua">Armazenamento de Cascas Manual</Color>
</Row>

Um armazenamento cuja casca nunca é escolhida para você quando você morre. Use para corpos feitos para uma função, como um corpo de mineração carregado de ferramentas ou um corpo estacionado num posto avançado distante. Entre para sincronizar manualmente como em qualquer outro armazenamento.

<RecipeFor id="manual_shell_storage"/>

***
## <Color id="gold">Armazenamento de Cascas de Ponto Zero</Color>

<Row>
  <ItemImage id="zero_point_shell_storage"/>
  ### <Color id="aqua">Armazenamento de Cascas de Ponto Zero</Color>
</Row>

Aprimore um armazenamento com uma estrela do Nether. Ele não precisa de redstone nem FE, as portas abrem sozinhas conforme você se aproxima, e a casca dentro nunca decai.

<RecipeFor id="zero_point_shell_storage"/>
