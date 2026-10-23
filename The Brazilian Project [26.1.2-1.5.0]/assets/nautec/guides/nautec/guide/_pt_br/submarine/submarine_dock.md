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
  Uma plataforma de recarga para um casco estacionado.
</Column>

A Base de Acoplamento do Explorador Marinho recarrega um Explorador Marinho estacionado sobre ela, segura um casco vazio no lugar e mantém a tripulação respirando.

***

## <Color id="gold">Montando</Color>

A base é uma plataforma baixa que pode ser colocada debaixo d'água. Energize-a com um feixe de laser de pelo menos 20 AP por qualquer lado (veja [Energia de Laser](nautec:getting_started/laser_power.md)). O feixe só precisa estar presente: a base não o consome, então o casco recarrega na mesma taxa por mais forte que o feixe seja.

Estacione o casco sobre a plataforma. Ele conta como acoplado quando sobrepõe a área 3 por 3 diretamente acima da plataforma, até 3 blocos de altura. A base prende com um estalo quando segura e solta quando o casco sai ou o feixe cai abaixo de 20 AP. Olhar para a plataforma através de um <ItemLink id="prism_monocle"/> mostra se há um Explorador Marinho acoplado.

***

## <Color id="gold">O Que Ela Faz</Color>

* Recarrega o casco a 40 de energia por tick num feixe de 20 AP, cerca de 21 minutos de vazio a cheio, sem recolher o casco. Um feixe mais forte recarrega mais rápido (veja abaixo). A taxa é configurável.
* Segura um casco vazio parado, então o que você deixar na plataforma ainda está lá quando voltar. Um piloto sempre vence as travas e pode sair dirigindo direto.
* Mantém todos a bordo respirando com a energia da base, mesmo com a célula do casco vazia.

***

### <Color id="aqua">Receita da Base de Acoplamento do Explorador Marinho</Color>

<Recipe id="nautec:submarine_dock"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Base de Acoplamento exige 20 AP. Um feixe mais forte recarrega um submarino acoplado mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 20).

| Feixe | Velocidade |
|---|---|
| 20 AP | ×1 (normal) |
| 80 AP | ×2 |
| 180 AP | ×3 |
| 320 AP | ×4 |

Ela recarrega 40 de energia por tick num feixe de 20 AP, 80 por tick em 80 AP, e assim por diante.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
