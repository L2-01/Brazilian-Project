---
navigation:
  title: Câmara de Ressonância
  icon: nautec:resonance_chamber
  position: 1
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:resonance_chamber
---

# <Color id="light_purple">Câmara de Ressonância</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="resonance_chamber" scale="2"/>
  Acumula um feixe de laser como carga e fabrica quando a carga atinge um nível crítico.
</Column>

A Câmara de Ressonância transforma <ItemLink id="prismarine_crystal_shard"/>s em Fragmentos Ressonantes, e desperta uma Semente de Cristal Dormente numa Semente de Cristal de Prismarinho para o [Cultivo de Cristais](crystal_cultivation.md). Ela precisa de um feixe de pureza 3.0 ou maior. Aceita feixes em seus quatro lados e no topo.

***

## <Color id="gold">Carga e Teto</Color>

Enquanto o feixe recebido carrega pelo menos 20 AP por tique (`resonancePowerUsage`), a Câmara adiciona toda a potência do feixe à sua carga a cada tique. Abaixo disso, a carga drena.

O teto é quanta carga a Câmara pode guardar com segurança. É 2.000 x (1 + pureza), então um feixe de pureza 3.0 dá um teto de 8.000. A base de 2.000 é `resonanceBaseCeiling` em `config/nautec-common.toml`.

| Carga | O que acontece |
|---|---|
| Abaixo de 90% do teto | Continua carregando |
| 90% a 110% (crítico) | Fabrica um item se puder, depois zera a carga |
| Acima de 110% | Desabafa |

A pureza 3.0, o crítico vai de 7.200 a 8.800 de carga. Um feixe de 40 AP chega lá em 180 tiques (9 segundos).

***

## <Color id="gold">Fabricando</Color>

Ponha os Fragmentos de Cristal de Prismarinho antes da carga atingir o crítico. Cada vez que entra em crítico, a Câmara consome um fragmento, põe um Fragmento Ressonante em sua saída e recomeça a carga do zero, então uma pilha cheia processa sozinha.

Clique direito com um fragmento para carregá-lo. Ela só aceita itens com que possa fabricar, à mão ou por automação. Clique direito com a mão vazia para retirar a saída, ou a entrada quando a saída está vazia. Funis e tubos podem inserir fragmentos e puxar Fragmentos Ressonantes, por exemplo com um funil embaixo. Toda face permite ambos por padrão; a [Configuração de Lados](nautec:getting_started/utilities.md) muda isso.

Olhe-a através de um <ItemLink id="prism_monocle"/> para ver a carga como porcentagem do teto, o próprio teto e a pureza do feixe. A carga fica dourada enquanto está crítica.

***

## <Color id="gold">Desabafo</Color>

Se a carga passar de 110% do teto, a Câmara desabafa. Toda criatura viva a até 4 blocos recebe 8 de dano, e a Câmara fica danificada por 10 segundos, sem carga e sem fabricação. Ela não quebra.

Ela desabafa quando atinge o crítico e não consegue fabricar, o que acontece quando:

* o espaço de entrada está vazio
* a pureza do feixe está abaixo de 3.0
* o espaço de saída está cheio

Mantenha a saída esvaziada, ou ponha um funil embaixo, e desligue o feixe quando acabarem os fragmentos. A força do feixe é segura: a carga subindo de abaixo de 90% para em 100% do teto no tique em que entra na janela crítica, por mais forte que o feixe seja.

O dano, o raio e o tempo de recarga do desabafo são `resonanceVentDamage`, `resonanceVentRadius` e `resonanceVentCooldown` em `config/nautec-common.toml`.

***

## <Color id="gold">Obtendo Pureza 3.0</Color>

Um <ItemLink id="prismarine_crystal"/> atingido de lado emite 3.0. Aponte-o direto para a Câmara, ou leve o feixe até lá por Relés de Laser de Prismarinho e Junções de Laser, que mantêm a pureza inalterada. Uma [Lente de Focalização](beam_optics.md) só eleva a pureza até 2.0, então não ajuda aqui.

***

### <Color id="aqua">Receita da Câmara de Ressonância</Color>

<Recipe id="nautec:resonance_chamber"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Câmara de Ressonância já adiciona toda a potência do feixe à sua carga a cada tique, então um feixe mais forte a carrega mais rápido em proporção direta: o dobro do feixe, o dobro da velocidade. Ela não usa a regra da raiz quadrada que as outras máquinas seguem.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
