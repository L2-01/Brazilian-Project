---
navigation:
    title: Cogumelo Sombrio
    icon: gloom_shroom
    position: 12
    parent: resources/index.md
---

# Cogumelo Sombrio

## Sobre

<ItemImage id="gloom_shroom" scale="2" />

As sinistras Profundezas Sombrias parecem incompatíveis com toda a vida que você conhece. Ainda assim, se você se aventurar nessas
cavernas sombrias, encontrará os estranhamente belos <Color id="blue">Cogumelos Sombrios</Color> crescendo e se alimentando da energia
de almas do Sculk.

## Geração Natural

Cogumelos Sombrios geram esparsamente no bioma Profundezas Sombrias em cima de Sculk. Só cerca de 1 a 2 surgem por chunk. Você
saberá quando os vir. Eles são bioluminescentes, mas não emitem luz para os arredores.

## Cultivo

Você pode quebrar Cogumelos Sombrios instantaneamente com a mão. Não são necessárias ferramentas nem encantamentos especiais.

### Ambiente adequado

Cogumelos Sombrios só podem ser plantados em cima de Sculk. Além disso, não podem ser expostos à luz do céu, ou quebrarão.

### Propagação

<GameScene zoom={2} interactive={true}>
<ImportStructure src="../assets/gloom_shroom_farm.nbt" />
<Block id="gloom_shroom" y="1" />
</GameScene>

Esses cogumelos famintos por vida nunca crescerão nem se espalharão naturalmente, e pó de osso é ineficaz. Para produzir mais, primeiro reúna
um Catalisador de Sculk e um pouco de Sculk, e então plante seus cogumelos iniciais perto do Catalisador. Quando o Catalisador de Sculk ativa
e uma carga de sculk passa por um Cogumelo Sombrio, há 33% de chance de ele espalhar 1 novo cogumelo numa *área de 3x3x3*
ao seu redor. O espaço deve ser um bloco substituível como ar ou água corrente.

## Produtos

### Soro de Eco

<ItemImage id="sculk_chemical" scale="2" />

Dissolver Cogumelos Sombrios em [Ácido Sulfúrico](acids.md#sulfuric-acid) usando o [Misturador](../machines/processing/mixer.md)
produz Soro de Eco.

### Essência Sombria Concentrada

<ItemImage id="gloom_weapon_chemical" scale="2" />

Pegar uma grande quantidade de Soro de Eco e reduzi-la com [Amônia](elements_compound.md#ammonia) produzirá Essência Sombria
Concentrada. Esta substância não é muito útil industrialmente, mas é útil para criar armamento debilitante.

Para quem prefere uma abordagem mais voltada ao combate, matar o Sentinela com um golpe final das
[Cápsulas Ácidas](../weapons/hanabi.md#acid) da *Hanabi* **OU** enquanto ele estiver sob o efeito de status
[Corrosão](../fundamentals/mob_effects.md#corroding) garante o item largado de 1 Essência Sombria Concentrada.