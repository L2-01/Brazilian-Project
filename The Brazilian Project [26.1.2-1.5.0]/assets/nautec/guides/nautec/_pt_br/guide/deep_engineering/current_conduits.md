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
  Um cano para itens, fluidos e FE. O conduíte comum não faz nada sozinho; as Derivações de Conduíte fazem o transporte.
</Column>

Uma linha de <ItemLink id="current_conduit"/> une toda Derivação de Conduíte que alcança numa única rede. As derivações movem recursos direto uma para a outra, então nada viaja dentro do cano e o conduíte entre derivações nunca precisa do seu chunk carregado. Se parte da linha estiver num chunk descarregado, a rede simplesmente para naquele ponto até o chunk carregar de novo.

Conduítes funcionam debaixo d'água e podem ficar alagados.

***

## <Color id="gold">Fazendo uma Derivação de Conduíte</Color>

1. Ponha conduíte ao lado dos blocos que você quer conectar.
2. Agache-se e use uma <ItemLink id="aquarine_steel_wrench"/> no conduíte encostando nesses blocos. Ele vira uma Derivação de Conduíte.
3. Uma derivação alcança todo bloco que ela toca de uma vez, até cinco máquinas mais a linha de conduíte.

Agache-se e use a chave numa derivação para virá-la de volta a conduíte comum. Você recebe a melhoria e o filtro de volta. Quebrar uma derivação deixa cair o conduíte e o que estiver dentro dele.

Usar a chave sem agachar liga ou desliga um lado. Num conduíte, isso o impede de se unir ao bloco ao lado, que é como duas linhas podem correr lado a lado sem se fundir. Numa derivação, desliga aquela face.

***

## <Color id="gold">Faces</Color>

Clique com o botão direito numa derivação de mão vazia para abri-la. Escolha uma face à esquerda, depois defina cada recurso na página de Configuração:

* **Inserir:** a rede põe este recurso no bloco.
* **Extrair:** a rede tira este recurso do bloco. Geradores e funis também podem empurrar para uma face de Extrair.
* **Extrair & Inserir:** tira e põe, mas nunca devolve algo para o bloco de onde veio.
* **Desligado:** esta face ignora o recurso.

Derivações novas começam com toda face em Inserir, então defina as faces de origem como Extrair.

O conector em cada bloco que uma derivação toca mostra como aquela face está definida: laranja quando só insere, azul quando só extrai, roxo quando faz os dois, e cobre simples quando não faz nenhum. Só contam recursos que o bloco consegue guardar, então o conector de um baú ignora a configuração de energia.

**Prioridade** vai de -99 a 99. Destinos de prioridade maior enchem primeiro. **Distribuição** decide o que acontece entre destinos de mesma prioridade: Rodízio alterna, Mais Próximo Primeiro enche o mais perto, Aleatório escolhe um início diferente a cada movimento. **Redstone** pode fazer uma face rodar só enquanto a derivação estiver energizada, ou só enquanto não estiver.

Um <ItemLink id="configuration_card"/> copia todas as faces de uma derivação para outra, junto com sua melhoria e filtro. Colar tira a melhoria e o filtro do seu inventário e devolve os que a derivação de destino tinha.

***

## <Color id="gold">Velocidade</Color>

Cada face se move por conta própria. Coloque uma melhoria na derivação para elevar a velocidade de todas as suas faces:

| Melhoria | Itens | Fluidos | FE |
| --- | --- | --- | --- |
| Nenhuma | 8 a cada 20 tiques | 1.000 mB/t | 5.000/t |
| <ItemLink id="eddy_upgrade"/> | 16 a cada 10 tiques | 5.000 mB/t | 25.000/t |
| <ItemLink id="surge_upgrade"/> | 32 a cada 5 tiques | 30.000 mB/t | 150.000/t |
| <ItemLink id="riptide_upgrade"/> | 64 a cada 2 tiques | 200.000 mB/t | 1.000.000/t |
| <ItemLink id="maelstrom_upgrade"/> | 256 por tique | 1.000.000 mB/t | 5.000.000/t |

***

## <Color id="gold">Filtros</Color>

Coloque um <ItemLink id="filter"/> na derivação para abrir filtros em todas as faces: 9 slots de item e 9 de fluido na página de Filtro. Um <ItemLink id="intricate_filter"/> abre todos os 27 slots de item.

* Clique num slot segurando um item, balde ou tanque, ou arraste um do JEI. Botão direito limpa.
* Shift + clique num slot de item para fazê-lo corresponder exatamente aos componentes, como um livro encantado ou uma placa cheia. Um canto dourado marca esses slots.
* Uma Placa de Petri contendo uma colônia começa correspondendo à sua linhagem, em qualquer tamanho de colônia. Shift + clique nela para aceitar qualquer placa. Uma placa vazia definida para corresponder exatamente só aceita placas vazias.
* **Lista de permissões** só deixa as coisas listadas passarem por aquela face, **Lista de bloqueio** as bloqueia. Uma face sem filtro definido deixa tudo passar.

Filtros valem nos dois sentidos: limitam o que uma face de Extrair envia e o que uma face de Inserir aceita.

***

## <Color id="gold">Materiais</Color>

Dispare um feixe de laser de pureza 2.1 ou maior através de <ItemLink id="aquarine_copper_compound"/> jogado para transformar cada um em 4 <ItemLink id="aquarine_copper_ingot"/>. O composto é fabricado com cobre, cristais de prismarinho e algas secas, ou feito em massa no <ItemLink id="mixer"/> com 3 lingotes de cobre, 1 <ItemLink id="kelp_slurry"/> e 500 mB de água salgada, o que dá 6.

<RecipeFor id="aquarine_copper_compound"/>
<RecipeFor id="clay_gasket"/>
<RecipeFor id="current_conduit"/>
<RecipeFor id="eddy_upgrade"/>
<RecipeFor id="filter"/>