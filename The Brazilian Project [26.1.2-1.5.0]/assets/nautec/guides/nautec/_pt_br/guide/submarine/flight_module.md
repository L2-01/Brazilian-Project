---
navigation:
  title: Módulo de Voo
  icon: nautec:flight_module
  position: 15
  parent: submarine/submarine-index.md
item_ids:
  - nautec:flight_module
---

# <Color id="light_purple">Módulo de Voo</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="flight_module" scale="2"/>
  Levanta o Explorador Marinho da água e o deixa voar.
</Column>

Com um Módulo de Voo instalado, o casco não cai mais quando sai da água. Ele se sustenta no ar e voa da mesma forma que nada, só que mais rápido.

***

## <Color id="gold">Voando</Color>

É passivo e funciona de qualquer slot. Saia da água pilotando, ou pressione Espaço em terra para decolar, e o casco continua.

* Ele dirige exatamente como debaixo d'água: o nariz segue sua visão e inclina para cima ou para baixo, Espaço sobe e C desce.
* No ar ele se move cerca de uma vez e meia mais rápido que debaixo d'água, e sua velocidade máxima é uma vez e meia maior.
* Pouse descendo até o chão ou de volta à água.

Se ninguém estiver pilotando, um casco voando desce suavemente ao chão em vez de despencar, então sair no meio do ar não o destrói. O casco nunca toma dano de queda.

***

## <Color id="gold">Energia</Color>

Sustentar o casco custa 4 de energia por tique além dos seus custos normais de operação, sempre que estiver no ar com alguém a bordo. Se a célula secar no ar o casco cai como qualquer outro, então fique de olho no painel em voos longos.

O bônus de velocidade e o custo são configuráveis (`submarineFlightSpeedMultiplier`, `submarineFlightPowerUsage`). Um módulo basta, já que um segundo não adiciona nada.

***

### <Color id="aqua">Receita do Módulo de Voo</Color>

<Recipe id="nautec:flight_module"/>