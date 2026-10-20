---
item_ids: [logisticsnetworks:logistics_node]
navigation:
  title: Nós
  icon: logisticsnetworks:logistics_node
  position: 1
---

# Nós

Os nós são a peça central de toda rede de logística. Você coloca um num bloco (baú, tanque, máquina, cabo, qualquer coisa com armazenamento) e o nó cuida de mover recursos de e para aquele bloco.

## O Básico

- **Todo nó tem 9 canais.** Cada canal é uma regra de transferência — direção, tipo de recurso, tamanho do lote, filtros e assim por diante. Um único nó pode rodar até 9 transferências ao mesmo tempo.
- **Nós são entidades, não blocos.** Eles não ocupam um espaço de bloco. Ficam na face do bloco em que foram colocados, como um porta-retrato ou um quadro. Você ainda pode colocar, quebrar e interagir com o bloco por baixo.
- **Nós ficam presos ao bloco, não à rede.** Colocar um nó não faz nada sozinho — ele só começa a transferir quando você o atribui a uma rede e configura pelo menos um canal.

## Configurando um Nó

Use a **Interação Secundária (padrão: Botão Direito)** num nó colocado com uma Chave-Inglesa para abrir sua tela de configuração. A tela é dividida em três partes, e cada parte tem seu próprio capítulo nesta seção:

1. [Cabeçalho](header.md) — alternância de visibilidade, rótulo do nó e o seletor de canal (escolhe qual dos 9 canais você está editando).
2. [Configurações de Canal](channel-settings.md) — as configurações do canal atualmente selecionado: estado, modo, tipo, lado, redstone, distribuição, prioridade, lote e atraso.
3. [Filtros e Melhorias](filters-upgrades.md) — slots de filtro do canal atual, slots de melhoria do nó inteiro e o botão Ajustes para opções avançadas.

Leia os capítulos em ordem se este for seu primeiro nó.

## Receita de Criação

<RecipeFor id="logisticsnetworks:logistics_node" />
