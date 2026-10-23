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

O casco tem vida e armadura próprias, e enquanto você está a bordo é ele quem é atacado, não você.

***

## <Color id="gold">Resistência do Casco</Color>

| | Padrão |
|---|---|
| Pontos de casco | 80 (40 corações) |
| Armadura | 20, o mesmo que diamante completa |
| Resistência de armadura | 8, o mesmo que diamante completa |

Os três são configuráveis. O [Módulo de Blindagem](armor_module.md) eleva a resistência e impede repulsão, e o [Módulo de Escudo](shield_module.md) gasta energia para absorver golpes.

Ao embarcar, toda criatura a até 32 blocos que estava caçando você passa a caçar o casco, e enquanto você pilota, qualquer coisa que tente mirar em você mira no casco em vez disso. O [Módulo de Furtividade](stealth_module.md) é o jeito de despistá-las.

O casco não toma dano de afogamento, congelamento, sufocamento em blocos, aglomeração ou queda, e ninguém a bordo pode danificá-lo. Poções e cura não têm efeito sobre ele.

***

## <Color id="gold">Autorreparo</Color>

O casco restaura 1% de seus pontos a cada 10 segundos, havendo ou não alguém a bordo, então um casco arranhado deixado quieto por um tempo volta ao cheio. O intervalo e a quantia são configuráveis, e um pacote pode desligar o autorreparo.

A linha HULL do painel mostra como você está (veja [Pilotagem](submarine_controls.md)).

***

## <Color id="gold">Rompimento</Color>

Quando o casco fica sem pontos, ele joga a tripulação para fora ilesa e cai como item com todos os seus módulos e carga. Esse item está rompido: usá-lo dá "O casco está rompido. Repare em uma bigorna antes de lançar", e sua dica diz o mesmo.

<Color id="gold">Dica</Color>: a tripulação é despejada onde o casco quebrou, muitas vezes no fundo d'água. Mantenha um [Traje de Mergulho](nautec:getting_started/diving_gear.md) vestido se estiver forçando um casco danificado.

***

## <Color id="gold">Reparando numa Bigorna</Color>

<ItemImage id="deep_steel_plating" scale="1"/>

Ponha o casco no espaço esquerdo de uma bigorna e <ItemLink id="deep_steel_plating"/> no direito. Cada revestimento restaura 20% do casco e custa 2 níveis, e a bigorna usa só quantos o reparo precisar, então cinco levam um casco rompido de volta ao cheio.

Isso funciona em qualquer item de casco danificado, não só num rompido. O Revestimento de Aço Profundo é prensado na [Forja de Pressão Abissal](nautec:deep_engineering/pressure_forge.md). O item de reparo e a quantia por item são configuráveis, e um pacote pode ter trocado o item de reparo para diamantes.
