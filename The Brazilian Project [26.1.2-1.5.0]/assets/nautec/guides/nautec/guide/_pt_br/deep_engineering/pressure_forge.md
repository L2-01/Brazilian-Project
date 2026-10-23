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
  Prensa materiais sob água profunda usando um feixe de laser e Ácido de Gravação.
</Column>

A Forja de Pressão Abissal faz Cristais de Prismarinho Impecáveis, Lingotes de Ouro Atlântico e Revestimentos de Aço Profundo. Ela só funciona bem abaixo do solo e sob uma coluna de água, então construa-a no fundo do mar ou inunde uma escavação profunda.

***

## <Color id="gold">Requisitos</Color>

Todos estes precisam ser verdade ao mesmo tempo. Se qualquer um deixar de ser, a prensa atual recomeça do zero.

* Profundidade: a Forja precisa estar em Y 0 ou menor (`pressureForgeDepth`). Cada receita também tem seu próprio Y máximo, listado abaixo.
* Água: os 8 blocos diretamente acima da Forja precisam ser todos fontes de água (`pressureForgeWaterColumn`). Profundidade sozinha não basta; uma escavação seca não conta. Um Sintetizador de Pressão substitui isso, veja abaixo.
* Energia: um feixe de pelo menos 40 AP por tique (`pressureForgePowerUsage`). A Forja aceita feixes em seus quatro lados e no topo.
* Pureza: o feixe precisa atingir a pureza da receita.
* Ácido de Gravação: pelo menos 250 mB no tanque. Cada prensa concluída usa 250 mB (`pressureForgeAcidUsage`). O tanque comporta 4.000 mB (`pressureForgeCapacity`).

Todos esses valores estão em `config/nautec-common.toml`.

***

## <Color id="gold">Receitas</Color>

| Entrada | Saída | Pureza | Y máx. | Tempo |
|---|---|---|---|---|
| Fragmento Ressonante | Cristal de Prismarinho Impecável | 2.0 | -20 | 10 segundos |
| Bloco de Ouro | 2 Lingotes de Ouro Atlântico | 2.0 | -20 | 15 segundos |
| Lingote de Aço Aquarine | Revestimento de Aço Profundo | 2.5 | -40 | 15 segundos |

As receitas também aparecem no JEI. Veja [Materiais Profundos](materials.md) para onde os produtos são usados.

***

## <Color id="gold">Usando-a</Color>

Clique direito com a mão vazia para abrir a Forja. Sua tela comporta a entrada, a saída, o tanque de ácido e o espaço do sintetizador, com uma seta de progresso entre entrada e saída. Abaixo, uma lista de checagem mostra cada requisito em verde ou vermelho com seu valor atual: profundidade, água acima, potência do feixe, pureza do feixe contra a receita e Ácido de Gravação. Passe o mouse sobre uma linha para o que precisa. Clique na seta para ver as receitas da Forja no JEI.

Você ainda pode clicar direito com um item prensável para colocá-lo, e com um <ItemLink id="etching_acid_bucket"/> para encher o tanque.

Funis e tubos podem colocar itens e Ácido de Gravação e retirar itens prontos, por qualquer face por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) define cada face separadamente para itens e fluidos. Como o topo precisa ficar sob água, alimente-a pelos lados. A Forja prensa um item por vez e só conclui uma prensa quando há espaço no espaço de saída.

Olhe-a através de um <ItemLink id="prism_monocle"/> para checá-la. Ele mostra "Sob pressão" com o nível de ácido e a pureza do feixe quando está montada corretamente, ou a profundidade e a água que ainda faltam quando não está.

## <Color id="gold">Sintetizadores de Pressão</Color>

Um sintetizador instalado na Forja substitui a água profunda, então você pode construir a Forja onde quiser esteticamente. Clique direito na Forja com um, ou coloque-o no espaço de sintetizador da tela, para instalá-lo. Retire-o daquele espaço, ou agache e clique direito com a mão vazia, para removê-lo. Instalar um diferente troca os dois e devolve o antigo, e quebrar a Forja derruba o que estiver instalado. Um <ItemLink id="prism_monocle"/> mostra qual está instalado.

<Row>
  <ItemImage id="pressure_synthesizer"/>
  <ItemImage id="atlantean_pressure_synthesizer"/>
</Row>

* <ItemLink id="pressure_synthesizer"/>: substitui a coluna de água acima da Forja. A Forja ainda precisa estar em Y 0 ou menor, e o Y máximo de cada receita ainda vale. Feito no [Misturador](nautec:laser_chemistry/mixer.md) com 1 Cristal de Prismarinho Impecável e 8.000 mB de Água Salgada.
* <ItemLink id="atlantean_pressure_synthesizer"/>: a Forja funciona em qualquer lugar, a qualquer altura, sem água acima, e as receitas ignoram seu Y máximo. Feito no Misturador com 1 Sintetizador de Pressão, 1 Coração do Mar, 1 Estrela do Nether e 4 Pérolas de Ender com 8.000 mB de Água Salgada.

Você precisa de uma Forja funcionando sob água de verdade primeiro, já que o Cristal de Prismarinho Impecável sai de uma.

<Color id="gold">Dica</Color>: feixes de laser atravessam água. Uma <ItemLink id="bacterial_fuel_cell"/> em pureza máxima (2.5) cobre as três receitas, assim como um <ItemLink id="prismarine_crystal"/> (3.0), roteado por relés ou uma [Junção de Laser](nautec:laser_chemistry/laser_manipulation.md) para virar esquinas.

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

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
