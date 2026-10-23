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

Limpe o espaço primeiro com uma [Âncora de Bolhas](bubble_anchor.md), feche-o com paredes e configure a âncora para deixar ar quando terminar. Estes blocos mantêm a sala seca depois.

***

## <Color id="gold">Escotilha de Pressão</Color>

Uma porta de aço com vigia, de dois blocos de altura. Abra e feche-a à mão ou com redstone.

* O mar nunca passa por ela, aberta ou fechada, então você pode nadar por uma escotilha aberta e a sala atrás permanece seca.
* Cada vez que ela fecha, bombeia para fora a água dos dois lados, desde que essa água seja uma poça pequena: a água que você arrastou para dentro, uma entrada inundada, um vazamento. Até 64 blocos de água conectada são limpos de uma vez.
* Água que faz parte do mar, ou uma sala inundada maior que 64 blocos, é deixada intacta, então fechar uma escotilha nunca drena o oceano lá fora.

Posicionar uma escotilha na água limpa os dois blocos que ela ocupa, então você pode encaixar uma direto numa entrada inundada.

<RecipeFor id="pressure_hatch"/>

***

## <Color id="gold">Difusor de Oxigênio</Color>

<ItemImage id="oxygen_diffuser" scale="2"/>

Dá a todo jogador num raio de 12 blocos Respiração Aquática e mantém seu ar cheio, para você trabalhar na água aberta ao redor da base sem capacete.

* Ele precisa de um feixe de laser de pelo menos 10 AP em qualquer face. Pureza não importa, então o feixe mais fraco do início já o opera.
* Ele renova o efeito a cada segundo enquanto o feixe durar. Saia do alcance e o efeito acaba alguns segundos depois.
* Ele pode ficar embaixo d'água. Bolhas saem de cima dele enquanto funciona.
* Se o feixe cair por um instante, ele continua por dois segundos antes de parar.

O alcance e a potência estão em `config/nautec-common.toml`.

<RecipeFor id="oxygen_diffuser"/>
