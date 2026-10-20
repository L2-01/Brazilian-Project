---
navigation:
  title: Bases Subaquáticas
  icon: nautec:pressure_hatch
  position: 18
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:pressure_hatch
  - nautec:oxygen_diffuser
---

# <Color id="light_purple">Bases Subaquáticas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="pressure_hatch" scale="2"/>
  Blocos para uma base seca e permanente no fundo do mar.
</Column>

Limpe o espaço primeiro com uma [Âncora de Bolhas](bubble_anchor.md), murde-o, e configure a âncora para deixar ar quando terminar. Estes blocos mantêm o cômodo seco depois disso.

***

## <Color id="gold">Escotilha de Pressão</Color>

Uma porta de aço com uma vigia, de dois blocos de altura. Abra e feche à mão ou com redstone.

* O mar nunca passa por ela, aberta ou fechada, então você pode nadar para dentro por uma escotilha aberta e o cômodo atrás dela fica seco.
* Toda vez que fecha, ela bombeia para fora a água dos dois lados, desde que essa água seja uma bolsa pequena: a água que você arrastou para dentro, uma porta alagada, um vazamento. Até 64 blocos de água conectada são limpos de uma vez.
* Água que faz parte do mar, ou um cômodo alagado maior que 64 blocos, é deixada em paz — fechar uma escotilha nunca drena o oceano lá fora.

Colocar uma escotilha na água limpa os dois blocos que ela ocupa, então dá para encaixar uma direto numa porta alagada.

<RecipeFor id="pressure_hatch"/>

***

## <Color id="gold">Difusor de Oxigênio</Color>

<ItemImage id="oxygen_diffuser" scale="2"/>

Dá a todos os jogadores num raio de 12 blocos Respiração Aquática e mantém o ar cheio, para que você possa trabalhar na água aberta ao redor da sua base sem capacete.

* Precisa de um feixe de laser de pelo menos 10 AP em qualquer face. A pureza não importa, então o feixe mais fraco do início já o alimenta.
* Ele renova o efeito a cada segundo enquanto o feixe durar. Saia do alcance e o efeito expira alguns segundos depois.
* Pode ficar submerso. Bolhas saem do topo enquanto funciona.
* Se o feixe cair por um instante, ele continua por dois segundos antes de parar.

O alcance e a energia estão em `config/nautec-common.toml`.

<RecipeFor id="oxygen_diffuser"/>