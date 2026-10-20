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

O Explorador Marinho roda tudo de uma célula de 1.000.000 de energia: impulso, o ar da tripulação e todo módulo.

***

## <Color id="gold">Custos de Operação</Color>

O casco só gasta energia enquanto alguém está a bordo. Um casco vazio, estacionado ou à deriva, mantém sua carga.

| Enquanto tripulado | Energia por tique |
|---|---|
| Parado | 1 |
| Em movimento | 6 a mais |
| Mantendo a tripulação respirando | 2 a mais |
| Voando, com um [Módulo de Voo](flight_module.md) | 4 a mais |

Um casco tripulado em viagem usa 9 por tique, então uma célula cheia dá cerca de uma hora e meia de viagem. Módulos consomem da mesma célula e custam muito mais por uso, então um mergulho ocupado a esvazia bem antes (veja [Módulos](submarine_modules.md)).

Tudo isso é configurável. Pilotos no modo criativo não usam energia.

***

## <Color id="gold">Ar</Color>

Enquanto a célula tiver qualquer carga, o casco fica selado e todos a bordo mantêm a barra de ar cheia, não importa a profundidade.

Quando a célula zera, a vedação vai junto. O painel mostra CHG, os propulsores param, e seu ar começa a drenar como num nado normal. Suba à superfície ou chegue a uma [Base de Acoplamento do Explorador Marinho](submarine_dock.md) antes disso, ou use um [Traje de Mergulho](nautec:getting_started/diving_gear.md) como reserva.

O casco em si não pode se afogar.

***

## <Color id="gold">Carregando</Color>

| Fonte | Taxa | De vazio a cheio |
|---|---|---|
| [Base de Acoplamento do Explorador Marinho](submarine_dock.md) | 40 por tique | cerca de 21 minutos |
| <ItemLink id="charger"/> (casco como item) | o que o feixe entrega, até 128 por tique | cerca de 6 minutos e meio a 128 AP, mais com um feixe mais fraco |
| [Módulo Solar](solar_module.md) | 2.000 a cada 5 segundos à luz do dia (cerca de 20 por tique) | cerca de 42 minutos |

A base é a forma prática de recarregar um casco: estacione-o, vá embora, volte. Um Carregador precisa do casco recolhido primeiro, e a velocidade depende do feixe que o alimenta: um feixe de 40 AP empata com a base, e qualquer coisa mais forte a vence. Um Módulo Solar continua funcionando com ou sem alguém a bordo, então um casco estacionado em águas abertas durante o dia se recarrega sozinho.