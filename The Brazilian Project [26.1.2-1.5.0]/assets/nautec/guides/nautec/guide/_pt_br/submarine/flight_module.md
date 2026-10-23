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
  Ergue o Explorador Marinho para fora da água e o deixa voar.
</Column>

Com um Módulo de Voo instalado, o casco não cai mais quando sai da água. Ele se sustenta no ar e voa da mesma forma que nada, só que mais rápido.

***

## <Color id="gold">Voando</Color>

Ele é passivo e funciona em qualquer espaço. Saia da água dirigindo, ou aperte Espaço em terra para decolar, e o casco continua indo.

* Ele se conduz exatamente como debaixo d'água: a proa segue sua visão e inclina para cima ou para baixo, Espaço sobe e C mergulha.
* No ar ele se move cerca de metade mais rápido do que debaixo d'água, e sua velocidade máxima é metade maior.
* Pouse mergulhando sobre o chão ou de volta na água.

Se ninguém estiver pilotando, um casco em voo desce suavemente até o chão em vez de despencar, então desembarcar no meio do ar não o destrói. O casco nunca toma dano de queda.

***

## <Color id="gold">Energia</Color>

Sustentar o casco custa 4 de energia por tick além dos custos normais de operação, sempre que ele está no ar com alguém a bordo. Se a célula secar no ar, o casco cai como qualquer outro, então fique de olho no painel em voos longos.

O bônus de velocidade e a manutenção são configuráveis (`submarineFlightSpeedMultiplier`, `submarineFlightPowerUsage`). Um módulo basta, já que um segundo não adiciona nada.

***

### <Color id="aqua">Receita do Módulo de Voo</Color>

<Recipe id="nautec:flight_module"/>
