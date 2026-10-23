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

O construtor tem dois blocos de altura. Posicione-o com um bloco livre acima.

***
## <Color id="gold">Coletando uma Amostra</Color>

Clique direito no construtor com a mão vazia. Ele coleta uma amostra genética e começa a construir uma casca que pertence a você.

<Color id="red">A amostra custa 20 de vida, ou 40 no hardcore.</Color> Isso é uma barra de vida inteira, então sem preparo isso te mata. Formas de contornar:

* Coma uma maçã dourada ou uma maçã dourada encantada para ter absorção antes.
* Segure um totem da imortalidade em qualquer mão.
* Peça ao servidor para ligar `warnPlayerInsteadOfKilling`, que recusa a amostra quando você não tem vida suficiente em vez de te matar.

Se você morrer a casca ainda começa a ser construída. Só uma casca pode crescer num construtor por vez, e ela fica lá até você sincronizar para dentro dela.

***
## <Color id="gold">Energizando-o</Color>

Uma casca precisa de 256000 FE por padrão (`shellConstructorCapacity`), e `shellConstructionSpeed` escala a velocidade com que isso se enche. Qualquer fonte de Forge Energy funciona: uma <ItemLink id="treadmill"/> encostada no construtor, um cabo de FE, ou um gerador de outro mod.

Um comparador encostado no construtor emite o progresso da construção. O Jade mostra o dono e uma porcentagem.

No criativo com `enableInstantShellConstruction` ligado a casca termina instantaneamente.

***
## <Color id="gold">Cores</Color>

Agache e clique direito no construtor com um corante para recolorir seu acabamento. Cascas construídas dentro assumem aquela cor no seletor de cascas, o que ajuda a diferenciar corpos.

***
## <Color id="gold">Construtor de Cascas de Ponto Zero</Color>

<Row>
  <ItemImage id="zero_point_shell_constructor"/>
  ### <Color id="aqua">Construtor de Cascas de Ponto Zero</Color>
</Row>

Aprimore um construtor com uma estrela do Nether. Ele não precisa de energia e termina cascas instantaneamente. A amostra ainda custa vida.

<RecipeFor id="zero_point_shell_constructor"/>
