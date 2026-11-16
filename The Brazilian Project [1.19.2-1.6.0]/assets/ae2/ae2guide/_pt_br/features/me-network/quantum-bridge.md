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

As _Pontes de Rede Quântica_ podem conectar duas redes a distâncias infinitas e até entre dimensões.
Elas transportam 32 canais no total (independente de como os cabos se conectam a cada face).

## Anel Quântico

Oito desses blocos colocados ao redor de uma <ItemLink id="quantum_link"/> criam uma
_Ponte de Rede Quântica_. Apenas os 4 blocos de <ItemLink id="quantum_ring"/> adjacentes à
<ItemLink id="quantum_link" /> aceitam conexões de rede;
os 4 blocos das quinas não podem se conectar a cabos.

<RecipeFor id="quantum_ring" />

## Câmara de Ligação Quântica

Um desses blocos cercado por <ItemLink id="quantum_ring"/>
cria uma _Ponte de Rede Quântica_. Este bloco não se conecta a cabos e só é registrado
como parte da rede quando a ponte completa é montada.

O inventário deste bloco só comporta uma única <ItemLink id="quantum_entangled_singularity"/> e é
acessível por automação.

<RecipeFor id="quantum_link" />

## Singularidade Quanticamente Entrelaçada

Necessária para criar uma conexão entre duas _Pontes de Rede Quântica_; sempre são produzidas em
pares correspondentes. Para criar uma conexão, coloque 1 do par de <ItemLink
id="quantum_entangled_singularity"/> na <ItemLink id="quantum_link" /> da
ponte em cada lado.

Elas são fabricadas causando uma reação entre uma <ItemLink id="minecraft:ender_pearl"/> ou <ItemLink id="ender_dust"/>  
e uma <ItemLink id="singularity"/>. Qualquer força explosiva deve bastar para iniciar a reação.

**_Quase qualquer explosão — até de creepers — funciona._**

Sempre produzidas em pares, mas exigem apenas uma única <ItemLink id="singularity"/>.

Pode ser uma boa ideia nomeá-las ao criá-las usando a bigorna do vanilla.

### Nota para Servidores Anti-Griefing

O AE também inclui um bloco chamado <ItemLink
id="tiny_tnt"/>, uma pequena TNT fabricável
que pode ter o dano a blocos desabilitado, mas ainda machuca um pouco e
pode ser usada como alternativa à TNT do vanilla / outras explosões mesmo quando
o dano a blocos está desabilitado.
