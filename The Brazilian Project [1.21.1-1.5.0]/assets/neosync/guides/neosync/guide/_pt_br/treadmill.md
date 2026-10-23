---
navigation:
  title: Esteira
  icon: neosync:treadmill
  parent: index.md
  position: 5
item_ids:
  - neosync:treadmill
---

# <Color id="light_purple">Esteira</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="treadmill" scale="2"/>
  Indústria movida a pecuária.
</Column>

***
## <Color id="gold">Receita</Color>

<RecipeFor id="treadmill"/>

***
## <Color id="gold">Posicionando</Color>

A esteira tem dois blocos de comprimento e é colocada como uma cama: estende-se para longe de você, e o bloco distante é a frente. Encoste qualquer metade num <ItemLink id="shell_constructor"/> ou <ItemLink id="shell_storage"/>, ou em qualquer bloco que aceite Forge Energy.

***
## <Color id="gold">Corredores</Color>

Atraia um animal para o bloco da frente. Ele trava na esteira, corre no lugar e gera energia a cada tique. A energia vai para todo receptor de FE encostado em qualquer metade da esteira.

Um animal deixa de contar como corredor enquanto é filhote, está na guia, foi mandado sentar, está levando dano ou está na água. Jogadores também podem correr, mas um jogador agachado não.

***
## <Color id="gold">Energia por Entidade</Color>

Valores padrão do `energyMap`. Donos de servidor podem adicionar qualquer entidade à lista.

| Entidade | FE/tique |
| --- | --- |
| Galinha | 2 |
| Porco | 16 |
| Jogador | 20 |
| Lobo | 22 |
| Aldeão | 25 |
| Creeper | 80 |
| Enderman | 160 |

Com o JEI instalado, a categoria Fontes de Energia de Esteira lista os valores ao vivo do servidor atual.
