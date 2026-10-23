---
navigation:
  title: Energia e Ar
  icon: nautec:prismatic_battery
  position: 2
  parent: submarine/submarine-index.md
---

# <Color id="light_purple">Energia e Ar</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="prismatic_battery" scale="2"/>
  Pelo que a célula paga.
</Column>

O Explorador Marinho move tudo com uma única célula de 1.000.000 de energia: propulsão, o ar da tripulação e cada módulo.

***

## <Color id="gold">Custos de Operação</Color>

O casco só consome energia enquanto alguém está a bordo. Um casco vazio, estacionado ou à deriva, mantém sua carga.

| Enquanto a bordo | Energia por tick |
|---|---|
| Parado | 1 |
| Em movimento | mais 6 |
| Mantendo a tripulação respirando | mais 2 |
| Voando, com um [Módulo de Voo](flight_module.md) | mais 4 |

Um casco tripulado em viagem usa 9 por tick, então uma célula cheia dá cerca de uma hora e meia de viagem. Os módulos consomem da mesma célula e custam muito mais por uso, então um mergulho movimentado a esvazia bem antes (veja [Módulos](submarine_modules.md)).

Todos esses valores são configuráveis. Pilotos no modo criativo não usam energia.

***

## <Color id="gold">Ar</Color>

Enquanto a célula tem qualquer carga, o casco fica selado e todos a bordo mantêm a barra de ar cheia, por mais fundo que você vá.

Quando a célula zera, a vedação vai junto. O painel exibe CHG, os propulsores param e seu ar começa a drenar como num nado normal. Suba à superfície ou chegue a uma [Base de Acoplamento do Explorador Marinho](submarine_dock.md) antes que isso aconteça, ou vista um [Traje de Mergulho](nautec:getting_started/diving_gear.md) como reserva.

O casco em si não pode se afogar.

***

## <Color id="gold">Recarga</Color>

| Fonte | Taxa | De vazio a cheio |
|---|---|---|
| [Base de Acoplamento do Explorador Marinho](submarine_dock.md) | 40 por tick | cerca de 21 minutos |
| <ItemLink id="charger"/> (casco como item) | o que o feixe entrega, até 128 por tick | cerca de seis minutos e meio a 128 AP, mais com um feixe mais fraco |
| [Módulo Solar](solar_module.md) | 2.000 a cada 5 segundos sob luz do dia (cerca de 20 por tick) | cerca de 42 minutos |

A base é o jeito prático de reabastecer um casco: estacione-o, deixe-o, volte. Um Carregador exige o casco recolhido primeiro, e a velocidade de carga depende do feixe que o alimenta: um feixe de 40 AP empata com a base, e qualquer coisa mais forte a vence. Um Módulo Solar continua funcionando havendo ou não alguém a bordo, então um casco estacionado em água aberta durante o dia se reabastece sozinho.
