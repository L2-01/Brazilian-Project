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
  Carga passiva pela luz do dia.
</Column>

O Módulo Solar adiciona 2.000 de energia (0.2% da célula, cerca de 20 por tique) ao casco a cada 5 segundos enquanto o sol estiver alto e o casco puder ver o céu.

***

## <Color id="gold">Como Ele Carrega</Color>

É passivo e funciona de qualquer slot. Ele vê o céu através da água, então o casco pode ficar submerso, mas qualquer bloco sólido entre o casco e o céu o impede. Só funciona durante o dia, e não em dimensões sem ciclo de dia como o Nether e o End.

Ele continua carregando sem ninguém a bordo. Um casco estacionado em águas abertas enche de vazio em cerca de 42 minutos de sol. Uma [Base de Acoplamento do Explorador Marinho](submarine_dock.md) é duas vezes mais rápida.

Um módulo basta, já que um segundo não adiciona nada. A taxa é configurável (`submarineSolarPercentPer5s`).

***

### <Color id="aqua">Receita do Módulo Solar</Color>

<Recipe id="nautec:solar_module"/>