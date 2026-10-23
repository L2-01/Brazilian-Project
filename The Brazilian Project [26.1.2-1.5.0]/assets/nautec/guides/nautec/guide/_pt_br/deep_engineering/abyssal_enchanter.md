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
  Encanta livros e itens com exatamente o encantamento que você escolhe, pago com um reagente, experiência líquida e um feixe de laser.
</Column>

## <Color id="gold">Posicionando-o</Color>

O Encantador é um item que preenche um espaço de 3x3 com dois blocos de altura, centrado no bloco onde você o coloca. Todo bloco daquele espaço precisa estar vazio antes, então ele pode ser construído até debaixo d'água. Quebrar qualquer parte dele derruba o Encantador inteiro como um único item, junto com o que estiver dentro.

Enquanto trabalha, o anel de pedra quebrada ao redor dele se ergue e gira, o núcleo em seu pilar acende e uma coluna de luz sobe sobre o pedestal.

***

## <Color id="gold">Encantando</Color>

1. Ponha um livro, ou qualquer item que aceite o encantamento, no espaço de cima.
2. Ponha o reagente no espaço abaixo. O reagente decide o encantamento: quartzo para Afiação, redstone para Eficiência, obsidiana para Inquebrável e assim por diante. O JEI lista todos em **Encantamento a Laser**.
3. Escolha o nível com as setas na tela. Ele começa no nível mais alto.
4. Encha o tanque de experiência líquida, depois mire um feixe em qualquer face externa de qualquer bloco do Encantador.

Cada nível precisa de um conjunto de reagente, então Afiação V leva cinco vezes o quartzo de Afiação I. Quando termina, o livro ou item vai para o espaço de saída. Um item que já tem o encantamento em nível menor é elevado ao novo nível.

Se mais de um encantamento usa o mesmo reagente, o botão **»** alterna entre eles.

***

## <Color id="gold">Sobreencantando</Color>

O Encantador pode ir até cinco níveis além do máximo normal de um encantamento, então Afiação pode chegar a X. Suba o nível além do máximo com as setas e o nível aparece em dourado.

Cada nível além do máximo custa quatro vezes o total de AP e experiência líquida do nível anterior: Afiação VI custa 4x, Afiação VII 16x e Afiação X 1.024x. O feixe necessário continua subindo em sua curva usual, e o reagente fica na quantia do máximo normal.

Só itens podem ser sobreencantados. Com um livro no espaço de cima o nível para no máximo normal, então ponha a própria espada, picareta ou peça de armadura no Encantador.

***

## <Color id="gold">Experiência Líquida</Color>

O tanque aceita qualquer experiência líquida (a tag de fluido `c:experience`), incluindo Algas de Experiência e os fluidos de experiência de outros mods, e nada mais. Ele comporta cerca de 2,1 milhões de baldes, e tubos podem retirá-la se você puser demais. 20 mB contam como um ponto de experiência.

***

## <Color id="gold">Potência do Feixe</Color>

Um encantamento tem dois custos em AP:

* O **feixe** que precisa antes mesmo de começar.
* O **total** que precisa absorver antes de terminar. Um feixe mais forte que o mínimo termina mais cedo.

Ambos sobem bastante com o nível e com a raridade do encantamento. Afiação I precisa de um feixe de 10 AP, Afiação V de um feixe de 250 AP e 250.000 AP no total, e Espinhos III de um feixe de 720 AP. Encantamentos de tesouro como Remendo custam o dobro. A tela e o JEI mostram os valores exatos.

***

## <Color id="gold">Pureza</Color>

Com pureza de feixe de **3.0** ou mais, você sempre recebe exatamente o encantamento e o nível que escolheu. Abaixo disso o resultado pode mudar, com mais frequência quanto menor a pureza:

* O nível pode desviar, geralmente um para baixo e às vezes um para cima.
* Pode virar um encantamento diferente que sirva no mesmo item.
* Pode dar o encantamento escolhido mais um extra aleatório em nível I.

Abaixo de pureza **0.5** há também uma chance de uma maldição ser adicionada por cima. O livro ou item nunca é destruído, e a tela mostra quão estável o feixe atual é.

***

## <Color id="gold">Fabricação</Color>

<Recipe id="nautec:abyssal_enchanter"/>

As configurações de energia, experiência, pureza, maldição e sobreencantamento estão em `config/nautec-common.toml`. Criadores de packs podem adicionar seus próprios reagentes com receitas `nautec:laser_enchanting`.

Para manter um encantamento fora do Encantador, liste seu id em `abyssalEnchanterBlacklist` nessa configuração (`modid:*` bloqueia um mod inteiro), ou adicione-o à tag de encantamentos `nautec:abyssal_enchanter_blacklist`. Um encantamento bloqueado não pode ser feito, nunca sai de um resultado de baixa pureza e fica oculto do JEI. Soulbound do Ars Elemental é bloqueado por padrão.
