---
navigation:
  title: Encantador Abissal
  icon: nautec:abyssal_enchanter
  position: 16
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:abyssal_enchanter
---

# <Color id="light_purple">Encantador Abissal</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="abyssal_enchanter" scale="2"/>
  Encanta livros e itens com o encantamento exato que você escolher, pago com um reagente, experiência líquida e um feixe de laser.
</Column>

## <Color id="gold">Colocando-o</Color>

O Encantador é um único item que ocupa um espaço 3x3 de dois blocos de altura, centrado no bloco onde você o coloca. Todos os blocos daquele espaço precisam estar vazios primeiro, então ele também pode ser construído embaixo d'água. Quebrar qualquer parte dele derruba o Encantador inteiro como um único item, junto com o que estiver dentro.

Enquanto funciona, o anel de pedra quebrada ao redor dele se ergue e gira, o núcleo em seu pilar se acende e uma coluna de luz surge sobre o pedestal.

***

## <Color id="gold">Encantando</Color>

1. Coloque um livro, ou qualquer item que possa receber o encantamento, no slot superior.
2. Coloque o reagente no slot abaixo dele. O reagente decide o encantamento: quartzo para Afiação, redstone para Eficiência, obsidiana para Inquebrável e assim por diante. O JEI lista todos em **Encantamento a Laser**.
3. Escolha o nível com as setas da tela. Ele começa no nível mais alto.
4. Encha o tanque com experiência líquida, depois mire um feixe em qualquer face externa de qualquer bloco do Encantador.

Cada nível precisa de um conjunto de reagente, então Afiação V gasta cinco vezes o quartzo de Afiação I. Ao terminar, o livro ou item vai para o slot de saída. Um item que já tenha o encantamento em um nível menor é elevado ao novo nível.

Se mais de um encantamento usar o mesmo reagente, o botão **»** alterna entre eles.

***

## <Color id="gold">Superencantando</Color>

O Encantador pode ir até cinco níveis além do máximo normal de um encantamento, então Afiação pode chegar a X. Aumente o nível além do máximo com as setas e o nível aparece em dourado.

Cada nível além do máximo custa quatro vezes o AP total e a experiência líquida do nível anterior: Afiação VI custa 4x, Afiação VII 16x e Afiação X 1.024x. O feixe exigido continua subindo em sua curva normal, e o reagente fica na quantidade do máximo normal.

Apenas itens podem ser superencantados. Com um livro no slot superior o nível para no máximo normal, então coloque a espada, picareta ou peça de armadura em si no Encantador.

***

## <Color id="gold">Experiência Líquida</Color>

O tanque aceita qualquer experiência líquida (a tag de fluido `c:experience`), incluindo Algas de Experiência e os fluidos de experiência de outros mods, e nada mais. Ele comporta cerca de 2,1 milhões de baldes, e canos podem drená-lo de volta se você colocar demais. 20 mB contam como um ponto de experiência.

***

## <Color id="gold">Potência do Feixe</Color>

Um encantamento tem dois custos em AP:

* O **feixe** de que ele precisa para sequer começar.
* O **total** que ele precisa receber antes de terminar. Um feixe mais forte que o mínimo termina mais cedo.

Ambos sobem bastante com o nível e com a raridade do encantamento. Afiação I precisa de um feixe de 10 AP, Afiação V de um feixe de 250 AP e 250.000 AP no total, e Espinhos III de um feixe de 720 AP. Encantamentos de tesouro como Remendo custam o dobro. A tela e o JEI mostram os valores exatos.

***

## <Color id="gold">Pureza</Color>

Com pureza de feixe de **3.0** ou mais, você sempre obtém exatamente o encantamento e o nível escolhidos. Abaixo disso o resultado pode mudar, com mais frequência quanto menor a pureza:

* O nível pode variar, geralmente um para baixo e às vezes um para cima.
* Pode se tornar um encantamento diferente que caiba no mesmo item.
* Pode dar o encantamento escolhido mais um extra aleatório no nível I.

Abaixo de **0.5** de pureza há também uma chance de uma maldição ser adicionada por cima. O livro ou item nunca é destruído, e a tela mostra quão estável está o feixe atual.

***

## <Color id="gold">Fabricação</Color>

<Recipe id="nautec:abyssal_enchanter"/>

As configurações de potência, experiência, pureza, maldição e superencantamento estão em `config/nautec-common.toml`. Criadores de modpacks podem adicionar seus próprios reagentes com receitas `nautec:laser_enchanting`.

Para manter um encantamento fora do Encantador, liste seu id em `abyssalEnchanterBlacklist` nessa configuração (`modid:*` bloqueia um mod inteiro), ou adicione-o à tag de encantamentos `nautec:abyssal_enchanter_blacklist`. Um encantamento bloqueado não pode ser feito, nunca sai de um resultado de baixa pureza e fica oculto do JEI. O Ligado à Alma do Ars Elemental é bloqueado por padrão.
