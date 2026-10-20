---
navigation:
  title: Construtor de Cascas
  icon: neosync:shell_constructor
  parent: index.md
  position: 3
item_ids:
  - neosync:shell_constructor
  - neosync:zero_point_shell_constructor
---

# <Color id="light_purple">Construtor de Cascas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="shell_constructor" scale="2"/>
  Cultiva um corpo novo a partir de uma amostra sua.
</Column>

***
## <Color id="gold">Receita</Color>

<RecipeFor id="shell_constructor"/>

O construtor tem dois blocos de altura. Coloque-o com um bloco livre acima.

***
## <Color id="gold">Coletando uma Amostra</Color>

Clique com o botão direito no construtor com a mão vazia. Ele coleta uma amostra genética e começa a construir uma casca que pertence a você.

<Color id="red">A amostra custa 20 de vida, ou 40 no modo Intenso.</Color> Isso é uma barra de vida inteira, então sem preparação ela mata você. Formas de contornar:

* Coma uma Maçã Dourada ou uma Maçã Dourada Encantada antes, pela absorção.
* Segure um Totem da Imortalidade em qualquer mão.
* Peça ao servidor para ativar `warnPlayerInsteadOfKilling`, que recusa a amostra quando você não tem vida suficiente, em vez de matar você.

Se você morrer, a casca ainda começa a ser construída. Só uma casca pode crescer num construtor por vez, e ela fica lá até você sincronizar para ela.

***
## <Color id="gold">Energizando</Color>

Uma casca precisa de 256000 FE por padrão (`shellConstructorCapacity`), e `shellConstructionSpeed` escala a velocidade de enchimento. Qualquer fonte de Forge Energy funciona: uma <ItemLink id="treadmill"/> encostada no construtor, um cabo de FE, ou um gerador de outro mod.

Um comparador encostado no construtor emite o progresso da construção. O Jade mostra o dono e uma porcentagem.

No modo criativo com `enableInstantShellConstruction` ativado, a casca termina instantaneamente.

***
## <Color id="gold">Cores</Color>

Agache e clique com o botão direito no construtor com um corante para repintar seu acabamento. As cascas construídas dentro assumem aquela cor no seletor de cascas, o que ajuda a distinguir corpos.

***
## <Color id="gold">Construtor de Cascas de Ponto Zero</Color>

<Row>
  <ItemImage id="zero_point_shell_constructor"/>
  ### <Color id="aqua">Construtor de Cascas de Ponto Zero</Color>
</Row>

Melhore um construtor com uma Estrela do Nether. Ele não precisa de energia e termina cascas instantaneamente. A amostra ainda custa vida.

<RecipeFor id="zero_point_shell_constructor"/>
