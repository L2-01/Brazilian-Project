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

A Câmara de Ressonância transforma <ItemLink id="prismarine_crystal_shard"/> em Fragmentos Ressonantes, e desperta uma Semente de Cristal Dormente numa Semente de Cristal de Prismarinho para o [Cultivo de Cristais](crystal_cultivation.md). Ela precisa de um feixe de pureza 3.0 ou maior. Aceita feixes pelas quatro laterais e pelo topo.

***

## <Color id="gold">Carga e Limite</Color>

Enquanto o feixe que chega carrega pelo menos 20 AP por tique (`resonancePowerUsage`), a Câmara soma a potência total do feixe à sua carga a cada tique. Abaixo disso, a carga se esvai.

O limite é quanta carga a Câmara consegue segurar com segurança. É 2.000 x (1 + pureza), então um feixe de pureza 3.0 dá um limite de 8.000. A base de 2.000 é `resonanceBaseCeiling` em `config/nautec-common.toml`.

| Carga | O que acontece |
|---|---|
| Abaixo de 90% do limite | Continua carregando |
| 90% a 110% (crítico) | Fabrica um item se puder, depois a carga zera |
| Acima de 110% | Ventila |

Com pureza 3.0, o crítico vai de 7.200 a 8.800 de carga. Um feixe de 40 AP chega lá em 180 tiques (9 segundos).

***

## <Color id="gold">Fabricação</Color>

Coloque os Fragmentos de Cristal de Prismarinho antes da carga chegar ao crítico. Cada vez que entra no crítico, a Câmara usa um fragmento, põe um Fragmento Ressonante na saída e recomeça a carregar do zero, então um stack inteiro se processa sozinho.

Clique com o botão direito segurando um fragmento para carregá-lo. Ela só aceita itens com que consegue fabricar, à mão ou por automação. Clique com o botão direito de mão vazia para tirar a saída, ou a entrada quando a saída está vazia. Funis e canos podem inserir fragmentos e puxar Fragmentos Ressonantes, por exemplo com um funil por baixo. Toda face permite ambos por padrão; a [Configuração de Lados](nautec:getting_started/utilities.md) muda isso.

Olhe para ela com um <ItemLink id="prism_monocle"/> para ver a carga como porcentagem do limite, o limite em si e a pureza do feixe. A carga fica dourada enquanto está crítica.

***

## <Color id="gold">Ventilação</Color>

Se a carga passar de 110% do limite, a Câmara ventila. Tudo que estiver vivo num raio de 4 blocos toma 8 de dano, e a Câmara fica rachada por 10 segundos, sem carga e sem fabricar. Ela não quebra.

Ela ventila quando atinge o crítico e não consegue fabricar, o que acontece quando:

* o slot de entrada está vazio
* a pureza do feixe está abaixo de 3.0
* o slot de saída está cheio

Mantenha a saída esvaziada, ou ponha um funil embaixo dela, e desligue o feixe quando acabarem os fragmentos. A força do feixe é segura: a carga subindo de baixo de 90% para em 100% do limite no tique em que entra na janela crítica, por mais forte que o feixe seja.

Dano, raio e recarga da ventilação são `resonanceVentDamage`, `resonanceVentRadius` e `resonanceVentCooldown` em `config/nautec-common.toml`.

***

## <Color id="gold">Conseguindo Pureza 3.0</Color>

Um <ItemLink id="prismarine_crystal"/> atingido pela lateral emite 3.0. Aponte-o direto para a Câmara, ou leve o feixe até lá por Relés de Laser de Prismarinho e Junções de Laser, que mantêm a pureza inalterada. Uma [Lente de Focalização](beam_optics.md) só eleva a pureza até 2.0, então não ajuda aqui.

***

### <Color id="aqua">Receita da Câmara de Ressonância</Color>

<Recipe id="nautec:resonance_chamber"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Câmara de Ressonância já soma a potência total do feixe à sua carga a cada tique, então um feixe mais forte a carrega mais rápido em proporção direta: o dobro de feixe, o dobro de velocidade. Ela não usa a regra da raiz quadrada que as outras máquinas seguem.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.