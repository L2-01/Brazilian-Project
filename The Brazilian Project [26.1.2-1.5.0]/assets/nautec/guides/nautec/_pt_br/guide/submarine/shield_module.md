---
navigation:
  title: Módulo de Escudo
  icon: nautec:shield_module
  position: 12
  parent: submarine/submarine-index.md
item_ids:
  - nautec:shield_module
---

# <Color id="light_purple">Módulo de Escudo</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="shield_module" scale="2"/>
  Energia em vez de casco.
</Column>

O Módulo de Escudo gasta energia armazenada para absorver dano ao casco, e pode ser disparado para explodir tudo ao redor do casco para longe.

***

## <Color id="gold">Escudo Passivo</Color>

Enquanto o módulo estiver instalado, em qualquer slot, golpes no casco são pagos pela célula primeiro: 10.000 de energia para cada coração que o escudo absorve. A armadura do casco reduz o golpe antes do escudo recebê-lo, então a energia só cobre o que passa. Se a célula não puder cobrir tudo, o resto vai para o casco.

Uma célula cheia absorve até 100 corações, mas a mesma célula também roda os propulsores e mantém a tripulação respirando. Fique de olho na linha PWR numa luta, porque uma longa pode drenar a célula e cortar seu ar.

O escudo cobre golpes que a armadura reduz. Dano que ignora armadura, como magia, fogo ou o estrondo sônico do Defensor, vai direto para o casco.

***

## <Color id="gold">Descarga</Color>

| | Padrão |
|---|---|
| Energia por descarga | 25.000 |
| Raio | 5 blocos ao redor do casco |
| Dano | 10 (5 corações) |
| Atordoamento | 3 segundos |
| Recarga | 5 segundos |

Dispare o módulo e um anel irrompe do casco. Tudo que estiver vivo num raio de 5 blocos, exceto a própria tripulação do casco, toma 10 de dano, é empurrado para longe do casco e fica Atordoado por 3 segundos. Uma criatura atordoada não pode se mover nem atacar, e esquece o que estava perseguindo.

A descarga também atinge jogadores, mascotes e criaturas passivas além das hostis, então garanta que só o que você quer ferir esteja perto do casco.

Todos os números são configuráveis.

***

### <Color id="aqua">Receita do Módulo de Escudo</Color>

<Recipe id="nautec:shield_module"/>