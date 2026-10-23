---
navigation:
  title: Conduítes de Corrente
  icon: nautec:current_conduit
  position: 12
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:current_conduit
  - nautec:aquarine_copper_ingot
  - nautec:aquarine_copper_compound
  - nautec:clay_gasket
  - nautec:eddy_upgrade
  - nautec:surge_upgrade
  - nautec:riptide_upgrade
  - nautec:maelstrom_upgrade
  - nautec:filter
  - nautec:intricate_filter
---

# <Color id="aqua">Conduítes de Corrente</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="current_conduit" scale="2"/>
  Um tubo para itens, fluidos e FE. O conduíte comum não faz nada sozinho; são as Derivações de Conduíte que movem.
</Column>

Uma linha de <ItemLink id="current_conduit"/> une toda Derivação de Conduíte que ela alcança numa única rede. As derivações movem recursos diretamente entre si, então nada viaja dentro do tubo e o conduíte entre derivações nunca precisa de chunk carregado. Se parte da linha está num chunk descarregado, a rede simplesmente para naquele ponto até o chunk carregar de novo.

Conduítes funcionam debaixo d'água e podem ser alagados.

***

## <Color id="gold">Fazendo uma Derivação de Conduíte</Color>

1. Estenda o conduíte ao lado dos blocos que quer conectar.
2. Agache e use uma <ItemLink id="aquarine_steel_wrench"/> no conduíte que toca esses blocos. Ele vira uma Derivação de Conduíte.
3. Uma derivação alcança todos os blocos que toca de uma vez, até cinco máquinas mais a linha de conduíte.

Agache e use a chave numa derivação para revertê-la a conduíte comum. Você recebe a melhoria e o filtro de volta. Quebrar uma derivação derruba o conduíte e o que estiver dentro.

Usar a chave sem agachar liga ou desliga um lado. Num conduíte isso o impede de se unir ao bloco ao lado, que é como duas linhas podem correr lado a lado sem se fundir. Numa derivação isso desliga aquela face.

***

## <Color id="gold">Faces</Color>

Clique direito numa derivação com a mão vazia para abri-la. Escolha uma face à esquerda, depois defina cada recurso na página de Configuração:

* **Inserir:** a rede põe este recurso no bloco.
* **Extrair:** a rede tira este recurso do bloco. Geradores e funis também podem empurrar para uma face de Extrair.
* **Extrair e Inserir:** tira e põe, mas nunca devolve algo ao bloco de onde veio.
* **Desligado:** esta face ignora o recurso.

Derivações novas começam com toda face em Inserir, então defina as faces de origem como Extrair.

O conector em cada bloco que uma derivação toca mostra como aquela face está definida: laranja quando só insere, azul quando só extrai, roxo quando faz ambos e cobre comum quando não faz nenhum. Só contam recursos que o bloco pode comportar, então o conector de um baú ignora a configuração de energia.

A **Prioridade** vai de -99 a 99. Destinos de prioridade maior enchem primeiro. A **Distribuição** decide o que acontece entre destinos de mesma prioridade: Rodízio alterna, Mais Próximo Primeiro enche o mais perto, Aleatório escolhe um início diferente a cada movimento. A **Redstone** pode fazer uma face funcionar só enquanto a derivação estiver energizada, ou só enquanto não estiver.

Um <ItemLink id="configuration_card"/> copia todas as faces de uma derivação para outra, junto de sua melhoria e filtro. Colar tira a melhoria e o filtro do seu inventário e devolve os que a derivação de destino tinha.

***

## <Color id="gold">Velocidade</Color>

Cada face se move por conta própria. Ponha uma melhoria na derivação para elevar a velocidade de todas as suas faces:

| Melhoria | Itens | Fluidos | FE |
| --- | --- | --- | --- |
| Nenhuma | 8 a cada 20 tiques | 1.000 mB/t | 5.000/t |
| <ItemLink id="eddy_upgrade"/> | 16 a cada 10 tiques | 5.000 mB/t | 25.000/t |
| <ItemLink id="surge_upgrade"/> | 32 a cada 5 tiques | 30.000 mB/t | 150.000/t |
| <ItemLink id="riptide_upgrade"/> | 64 a cada 2 tiques | 200.000 mB/t | 1.000.000/t |
| <ItemLink id="maelstrom_upgrade"/> | 256 a cada tique | 1.000.000 mB/t | 5.000.000/t |

***

## <Color id="gold">Filtros</Color>

Ponha um <ItemLink id="filter"/> na derivação para abrir filtros em todas as faces: 9 espaços de itens e 9 de fluidos na página de Filtro. Um <ItemLink id="intricate_filter"/> abre todos os 27 espaços de itens.

* Clique num espaço com um item, balde ou tanque, ou arraste um do JEI. Clique direito limpa.
* Shift+clique num espaço de item para fazê-lo corresponder exatamente aos componentes, como um livro encantado ou uma placa cheia. Um canto dourado marca esses espaços.
* Uma Placa de Petri com colônia começa correspondendo à sua linhagem, em qualquer tamanho de colônia. Shift+clique nela para aceitar qualquer placa. Uma placa vazia definida para corresponder exatamente só aceita placas vazias.
* **Lista Branca** deixa passar só o que estiver listado por aquela face, **Lista Negra** bloqueia. Uma face sem filtro definido deixa tudo passar.

Os filtros valem nos dois sentidos: limitam o que uma face de Extrair envia e o que uma face de Inserir aceita.

***

## <Color id="gold">Materiais</Color>

Dispare um feixe de laser de pureza 2.1 ou maior através de <ItemLink id="aquarine_copper_compound"/> derrubado para transformar cada um em 4 <ItemLink id="aquarine_copper_ingot"/>. O composto é fabricado de cobre, cristais de prismarinho e alga seca, ou feito em massa no <ItemLink id="mixer"/> a partir de 3 lingotes de cobre, 1 <ItemLink id="kelp_slurry"/> e 500 mB de água salgada, o que dá 6.

<RecipeFor id="aquarine_copper_compound"/>
<RecipeFor id="clay_gasket"/>
<RecipeFor id="current_conduit"/>
<RecipeFor id="eddy_upgrade"/>
<RecipeFor id="filter"/>
