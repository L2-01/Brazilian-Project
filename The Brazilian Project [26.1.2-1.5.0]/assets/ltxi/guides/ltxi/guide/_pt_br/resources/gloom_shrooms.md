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

As misteriosas Profundezas sombrias parecem incompatíveis com toda a vida que você conhece. Ainda assim, se você se
aventurar nessas cavernas lúgubres, encontrará os estranhamente belos <Color id="blue">Cogumelos Sombrios</Color>
crescendo e se alimentando da energia das almas no Sculk.

## Geração Natural

Cogumelos Sombrios geram esparsamente no bioma Profundezas sombrias, em cima de Sculk. Apenas 1 a 2 surgem por chunk.
Você saberá quando os vir. Eles são bioluminescentes, mas não emitem luz ao redor.

## Cultivo

Você pode quebrar Cogumelos Sombrios instantaneamente com a mão. Não são necessárias ferramentas ou encantamentos
especiais.

### Ambiente adequado

Cogumelos sombrios só podem ser plantados em cima de Sculk. Além disso, não podem ser expostos à luz do céu, senão
quebram.

### Propagação

<GameScene zoom={2} interactive={true}>
<ImportStructure src="../assets/gloom_shroom_farm.nbt" />
<Block id="gloom_shroom" y="1" />
</GameScene>

Esses cogumelos famintos por vida nunca crescem nem se espalham naturalmente, e farinha de osso é ineficaz. Para
produzir mais, primeiro consiga um Catalisador de Sculk e um pouco de Sculk, depois plante seus cogumelos iniciais
perto do Catalisador. Quando o Catalisador de Sculk ativar e uma carga de sculk passar por um Cogumelo Sombrio, há 33%
de chance de ele espalhar 1 cogumelo novo numa *área de 3x3x3* ao redor. O espaço precisa ser um bloco substituível
como ar ou água corrente.

## Produtos

### Soro de Eco

<ItemImage id="sculk_chemical" scale="2" />

Dissolver Cogumelos Sombrios em [Ácido Sulfúrico](acids.md#sulfuric-acid) usando o
[Misturador](../machines/processing/mixer.md) produz Soro de Eco.

### Soro Sombrio de Grau Bélico

<ItemImage id="gloom_weapon_chemical" scale="2" />

Tomar uma grande quantidade de Soro de Eco e reduzi-la com [Amônia](elements_compound.md#ammonia) produz Soro Sombrio
de Grau Bélico. Esta substância não é muito útil industrialmente, mas serve para criar armamento de debilitação.

Para quem prefere uma abordagem mais voltada ao combate, matar a Sentinela com o golpe final de uma
[Munição de Ácido](../weapons/hanabi.md#acid) da *Hanabi* **OU** enquanto ela estiver sob o efeito de status
[Corrosão](../fundamentals/mob_effects.md#corroding) garante o drop de 1 Soro Sombrio de Grau Bélico.
