---
navigation:
  title: Módulo Solar
  icon: nautec:solar_module
  position: 7
  parent: submarine/submarine-index.md
item_ids:
  - nautec:solar_module
---

# <Color id="light_purple">Módulo Solar</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="solar_module" scale="2"/>
  Recarga passiva pela luz do dia.
</Column>

O Módulo Solar adiciona 2.000 de energia (0,2% da célula, cerca de 20 por tick) ao casco a cada 5 segundos enquanto o sol está no alto e o casco consegue ver o céu.

***

## <Color id="gold">Como Ele Recarrega</Color>

Ele é passivo e funciona em qualquer espaço. Ele vê o céu através da água, então o casco pode ficar submerso, mas qualquer bloco sólido entre o casco e o céu o interrompe. Só funciona durante o dia, e não em dimensões sem ciclo de dia, como o Nether e o End.

Ele continua recarregando sem ninguém a bordo. Um casco estacionado em água aberta enche de vazio em cerca de 42 minutos de luz do sol. Uma [Base de Acoplamento do Explorador Marinho](submarine_dock.md) é duas vezes mais rápida.

Um módulo basta, já que um segundo não adiciona nada. A taxa é configurável (`submarineSolarPercentPer5s`).

***

### <Color id="aqua">Receita do Módulo Solar</Color>

<Recipe id="nautec:solar_module"/>
