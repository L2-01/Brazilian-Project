---
item_ids: [logisticsnetworks:computer]
navigation:
  title: Computador
  icon: logisticsnetworks:computer
  position: 5
---

# Computador

O Computador é um bloco posicionável que lhe dá uma interface de terminal para observar e gerenciar suas redes de logística. Coloque um na sua base, clique com o botão direito nele e você ganha um painel completo: listar todas as redes, ver a vazão ao vivo de cada canal ativo, pular direto para a configuração de qualquer nó e alternar a visibilidade dos nós em massa.

![Gerenciador de Rede — estado ocioso sem rede montada](images/network-manager-idle.png)

## Abrindo o Computador

Clique com o botão direito em um bloco de Computador colocado para abrir a tela do **Gerenciador de Rede**. Se você tiver uma [Chave-Inglesa](../wrench/index.md) em qualquer lugar do seu inventário, o Computador **carrega automaticamente** uma cópia dela no espaço da baia de unidade no canto superior direito. A chave é emprestada, não consumida — feche a tela e a chave fica no Computador até você retirá-la manualmente.

O espaço da baia de unidade só é interativo na página do Diretório de Redes. Se você trocar para a visão do Monitor de E/S ou da Tabela de Nós, não conseguirá mexer no espaço da chave até voltar.

## Os Três Subsistemas

Depois de escolher uma rede no diretório, você pode pular para qualquer um dos dois subsistemas. Cobertos em seus próprios capítulos:

- [Diretório de Redes](network-directory.md) — a lista de redes à esquerda; busca, fixação, montagem de uma rede.
- [Monitor de E/S](io-monitor.md) — vazão agregada por canal com gráficos ao vivo (120 pontos de dados por canal).
- [Tabela de Nós](node-table.md) — todo nó da rede montada, agrupado por rótulo, com ações por linha.

Até uma rede ser montada, o painel direito só mostra **Sem Rede Montada**. Escolha uma no diretório e os botões de subsistema destravam.

## Redes Favoritas

Toda entrada de rede no diretório tem um pequeno ícone de **estrela** no lado direito. Clique nele para fixar aquela rede no topo da lista. Redes fixadas (favoritas) ordenam primeiro; as não fixadas vêm depois. O estado da estrela é gravado no próprio bloco do Computador — persiste entre sessões e é por Computador (dois Computadores podem ter favoritos diferentes).

As redes **não têm dono**. Todo Computador num servidor pode ver toda rede daquele servidor, independentemente de quem a colocou.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:computer" />
