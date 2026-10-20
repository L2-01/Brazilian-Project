---
navigation:
  title: Base de Acoplamento do Explorador Marinho
  icon: nautec:submarine_dock
  position: 4
  parent: submarine/submarine-index.md
item_ids:
  - nautec:submarine_dock
---

# <Color id="light_purple">Base de Acoplamento do Explorador Marinho</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="submarine_dock" scale="2"/>
  Uma plataforma de carga para um casco estacionado.
</Column>

A Base de Acoplamento do Explorador Marinho carrega um Explorador Marinho estacionado sobre ela, segura um casco vazio no lugar e mantém a tripulação respirando.

***

## <Color id="gold">Montando-a</Color>

A base é uma plataforma baixa que pode ser colocada debaixo d'água. Energize-a com um feixe de laser de pelo menos 20 AP por qualquer lado (veja [Energia de Laser](nautec:getting_started/laser_power.md)). O feixe só precisa estar presente: a base não o consome, então o casco carrega na mesma taxa não importa quão forte o feixe seja.

Estacione o casco sobre a plataforma. Ele conta como acoplado quando sobrepõe a área 3 por 3 diretamente acima da plataforma, até 3 blocos de altura. A base trava com um estalo quando pega e larga quando o casco sai ou o feixe cai abaixo de 20 AP. Olhar para a plataforma com um <ItemLink id="prism_monocle"/> mostra se um Explorador Marinho está acoplado.

***

## <Color id="gold">O que Ela Faz</Color>

* Carrega o casco a 40 de energia por tique num feixe de 20 AP, cerca de 21 minutos de vazio a cheio, sem recolher o casco. Um feixe mais forte carrega mais rápido (veja abaixo). A taxa é configurável.
* Segura um casco vazio parado, então o que você deixa na plataforma ainda está lá quando volta. Um piloto sempre vence as travas e pode sair direto pilotando.
* Mantém todos a bordo respirando com a energia da base, mesmo com a célula do casco vazia.

***

### <Color id="aqua">Receita da Base de Acoplamento do Explorador Marinho</Color>

<Recipe id="nautec:submarine_dock"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Base de Acoplamento precisa de 20 AP. Um feixe mais forte carrega um submarino acoplado mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 20).

| Feixe | Velocidade |
|---|---|
| 20 AP | ×1 (normal) |
| 80 AP | ×2 |
| 180 AP | ×3 |
| 320 AP | ×4 |

Ela carrega 40 de energia por tique num feixe de 20 AP, 80 por tique a 80 AP, e assim por diante.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.