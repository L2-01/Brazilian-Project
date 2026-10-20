---
navigation:
  title: Casco e Reparo
  icon: nautec:submarine
  position: 3
  parent: submarine/submarine-index.md
---

# <Color id="light_purple">Casco e Reparo</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="submarine" scale="2"/>
  Dano, rompimento e reparo.
</Column>

O casco tem sua própria vida e armadura, e enquanto você está a bordo é ele que é atacado, não você.

***

## <Color id="gold">Resistência do Casco</Color>

| | Padrão |
|---|---|
| Pontos de casco | 80 (40 corações) |
| Armadura | 20, igual a diamante completo |
| Resistência da armadura | 8, igual a diamante completo |

Os três são configuráveis. O [Módulo de Blindagem](armor_module.md) eleva a resistência e para a repulsão, e o [Módulo de Escudo](shield_module.md) gasta energia para absorver golpes.

Quando você embarca, qualquer criatura num raio de 32 blocos que estava te caçando passa para o casco, e enquanto você pilota, qualquer coisa que tente te atacar ataca o casco em vez disso. O [Módulo de Furtividade](stealth_module.md) é a forma de despistá-las.

O casco não toma dano de afogamento, congelamento, sufocamento em blocos, aglomeração ou queda, e ninguém a bordo consegue danificá-lo. Poções e cura não têm efeito sobre ele.

***

## <Color id="gold">Autorreparo</Color>

O casco restaura 1% dos seus pontos a cada 10 segundos, haja ou não alguém a bordo, então um casco arranhado deixado sozinho por um tempo volta ao máximo. O intervalo e a quantidade são configuráveis, e um pacote pode desligar o autorreparo.

A linha HULL do painel mostra onde você está (veja [Pilotagem](submarine_controls.md)).

***

## <Color id="gold">Rompimento</Color>

Quando o casco fica sem pontos, ele joga a tripulação para fora ilesa e cai como item com todos os seus módulos e carga. Esse item está rompido: usá-lo dá "O casco está rompido. Repare em uma bigorna antes de lançar", e sua dica diz o mesmo.

<Color id="gold">Dica</Color>: a tripulação é jogada onde o casco quebrou, muitas vezes fundo debaixo d'água. Mantenha um [Traje de Mergulho](nautec:getting_started/diving_gear.md) vestido se estiver forçando um casco danificado.

***

## <Color id="gold">Reparando numa Bigorna</Color>

<ItemImage id="deep_steel_plating" scale="1"/>

Coloque o casco no slot esquerdo de uma bigorna e <ItemLink id="deep_steel_plating"/> no direito. Cada revestimento restaura 20% do casco e custa 2 níveis, e a bigorna usa só quantos o reparo precisar, então cinco levam um casco rompido de volta ao máximo.

Isso funciona em qualquer item de casco danificado, não só num rompido. O Revestimento de Aço Profundo é prensado na [Forja de Pressão Abissal](nautec:deep_engineering/pressure_forge.md). O item de reparo e a quantidade por item são configuráveis, e um pacote pode ter trocado o item de reparo para diamantes.