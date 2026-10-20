---
navigation:
  title: Ponte Quântica
  icon: singularity
item_ids:
  - ae2:quantum_link
  - ae2:quantum_ring
  - ae2:quantum_entangled_singularity
---

![Uma Ponte de Rede Quântica formada](../../large/qnb.png)

_Pontes de Rede Quântica_ podem conectar duas redes a distâncias infinitas e até entre dimensões.
Elas podem transportar 32 canais no total (independentemente de como os cabos estão conectados em cada face).

## Anel Quântico

Oito desses blocos colocados ao redor de uma <ItemLink id="quantum_link"/> criam uma
_Ponte de Rede Quântica_. Apenas os 4 blocos <ItemLink id="quantum_ring"/> adjacentes à
<ItemLink id="quantum_link" /> aceitarão conexões de rede;
os 4 blocos das esquinas não podem se conectar a cabos.

<RecipeFor id="quantum_ring" />

## Câmara de Ligação Quântica

Um desses blocos cercado por <ItemLink id="quantum_ring"/>
cria uma _Ponte de Rede Quântica_. Este bloco não se conecta a nenhum cabo e só se registra
como parte da rede quando a ponte completa é feita.

O inventário deste bloco só comporta uma única <ItemLink id="quantum_entangled_singularity"/> e é
acessível por automação.

<RecipeFor id="quantum_link" />

## Singularidade Quanticamente Entrelaçada

Necessária para criar uma conexão entre duas _Pontes de Rede Quântica_; elas são sempre produzidas em
pares correspondentes. Para criar uma conexão, coloque 1 do par de <ItemLink
id="quantum_entangled_singularity"/> dentro da <ItemLink id="quantum_link" /> da
ponte de cada lado.

Elas são fabricadas causando uma reação entre <ItemLink id="minecraft:ender_pearl"/> ou <ItemLink id="ender_dust"/>  
e uma <ItemLink id="singularity"/>. Qualquer força explosiva deve ser suficiente para desencadear a reação.

**_Praticamente qualquer explosão - até de creepers - funciona._**

Sempre produzidas em pares, mas só exigem uma única <ItemLink id="singularity"/>.

Pode ser uma boa ideia rotulá-las com nomes ao criá-las usando a bigorna do vanilla.

### Nota para Servidores Anti-Griefing

O AE também inclui um bloco chamado <ItemLink
id="tiny_tnt"/>; é uma TNT pequena fabricável
cujo dano a blocos pode ser desativado, mas que ainda pode machucar um pouco, e
pode ser usada como alternativa à TNT vanilla / outras explosões mesmo quando
o dano a blocos está desativado.
