---
navigation:
  title: Forja de Pressão Abissal
  icon: nautec:pressure_forge
  position: 3
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:pressure_forge
  - nautec:pressure_synthesizer
  - nautec:atlantean_pressure_synthesizer
---

# <Color id="light_purple">Forja de Pressão Abissal</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="pressure_forge" scale="2"/>
  Prensa materiais sob águas profundas usando um feixe de laser e Ácido de Gravação.
</Column>

A Forja de Pressão Abissal faz Cristais de Prismarinho Impecáveis, Lingotes de Ouro Atlântico e Revestimento de Aço Profundo. Ela só funciona bem abaixo do solo e sob uma coluna de água, então construa-a no leito marinho ou inunde um poço profundo.

***

## <Color id="gold">Requisitos</Color>

Todos estes têm que ser verdade ao mesmo tempo. Se qualquer um deixar de ser, a prensa atual recomeça do zero.

* Profundidade: a Forja tem que estar a Y 0 ou menor (`pressureForgeDepth`). Cada receita também tem seu próprio Y máximo, listado abaixo.
* Água: os 8 blocos diretamente acima da Forja devem ser todos blocos-fonte de água (`pressureForgeWaterColumn`). Profundidade sozinha não basta; um poço seco não conta. Um Sintetizador de Pressão substitui isso, veja abaixo.
* Energia: um feixe de pelo menos 40 AP por tique (`pressureForgePowerUsage`). A Forja aceita feixes pelas quatro laterais e pelo topo.
* Pureza: o feixe tem que atingir a pureza da receita.
* Ácido de Gravação: pelo menos 250 mB no tanque. Cada prensa concluída usa 250 mB (`pressureForgeAcidUsage`). O tanque comporta 4.000 mB (`pressureForgeCapacity`).

Todos esses valores estão em `config/nautec-common.toml`.

***

## <Color id="gold">Receitas</Color>

| Entrada | Saída | Pureza | Y máx. | Tempo |
|---|---|---|---|---|
| Fragmento Ressonante | Cristal de Prismarinho Impecável | 2.0 | -20 | 10 segundos |
| Bloco de Ouro | 2 Lingotes de Ouro Atlântico | 2.0 | -20 | 15 segundos |
| Lingote de Aço Aquarine | Revestimento de Aço Profundo | 2.5 | -40 | 15 segundos |

As receitas também aparecem no JEI. Veja [Materiais Profundos](materials.md) para que servem as saídas.

***

## <Color id="gold">Usando-a</Color>

Clique com o botão direito de mão vazia para abrir a Forja. Sua tela tem a entrada, a saída, o tanque de ácido e o slot do sintetizador, com uma seta de progresso entre entrada e saída. Abaixo, uma checklist mostra cada requisito em verde ou vermelho com seu valor atual: profundidade, água acima, potência do feixe, pureza do feixe contra a receita e Ácido de Gravação. Passe o mouse numa linha para ver o que ela precisa. Clique na seta para ver as receitas da Forja no JEI.

Você ainda pode clicar com o botão direito segurando um item forjável para colocá-lo, e com um <ItemLink id="etching_acid_bucket"/> para encher o tanque.

Funis e canos podem colocar itens e Ácido de Gravação e tirar itens prontos, por qualquer face por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) define cada face separadamente para itens e fluidos. Como o topo tem que ficar sob água, alimente-a pelas laterais. A Forja prensa um item por vez e só conclui uma prensa quando há espaço no slot de saída.

Olhe para ela com um <ItemLink id="prism_monocle"/> para conferi-la. Ele mostra "Sob pressão" com o nível de ácido e a pureza do feixe quando ela está montada corretamente, ou a profundidade e a água que ainda faltam quando não está.

## <Color id="gold">Sintetizadores de Pressão</Color>

Um sintetizador instalado na Forja substitui a água profunda, então você pode construir a Forja num lugar com a aparência que quiser. Clique na Forja com o botão direito segurando um, ou coloque-o no slot de sintetizador da tela, para instalá-lo. Tire-o daquele slot, ou agache-se e clique com o botão direito de mão vazia, para removê-lo. Instalar um diferente os troca e devolve o antigo, e quebrar a Forja deixa cair o que estiver instalado. Um <ItemLink id="prism_monocle"/> mostra qual está instalado.

<Row>
  <ItemImage id="pressure_synthesizer"/>
  <ItemImage id="atlantean_pressure_synthesizer"/>
</Row>

* <ItemLink id="pressure_synthesizer"/>: substitui a coluna de água acima da Forja. A Forja ainda tem que estar a Y 0 ou menor, e o Y máximo de cada receita ainda se aplica. Feito no [Misturador](nautec:laser_chemistry/mixer.md) com 1 Cristal de Prismarinho Impecável e 8.000 mB de Água Salgada.
* <ItemLink id="atlantean_pressure_synthesizer"/>: a Forja roda em qualquer lugar, a qualquer altura, sem água acima, e as receitas ignoram seu Y máximo. Feito no Misturador com 1 Sintetizador de Pressão, 1 Coração do Mar, 1 Estrela do Nether e 4 Pérolas de Ender com 8.000 mB de Água Salgada.

Você precisa de uma Forja funcionando sob água de verdade primeiro, já que o Cristal de Prismarinho Impecável sai de uma.

<Color id="gold">Dica</Color>: feixes de laser atravessam água. Uma <ItemLink id="bacterial_fuel_cell"/> na pureza máxima (2.5) cobre as três receitas, assim como um <ItemLink id="prismarine_crystal"/> (3.0), roteado por relés ou uma [Junção de Laser](nautec:laser_chemistry/laser_manipulation.md) para virar esquinas.

***

### <Color id="aqua">Receita da Forja de Pressão Abissal</Color>

<Recipe id="nautec:pressure_forge"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Forja de Pressão precisa de 40 AP. Um feixe mais forte forja mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 40).

| Feixe | Velocidade |
|---|---|
| 40 AP | ×1 (normal) |
| 160 AP | ×2 |
| 360 AP | ×3 |
| 640 AP | ×4 |

Os tempos na tabela de receitas são num feixe de 40 AP. O Ácido de Gravação que cada receita usa não muda.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.