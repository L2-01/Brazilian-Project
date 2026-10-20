---
item_ids: [logisticsnetworks:computer]
navigation:
  title: Computador
  icon: logisticsnetworks:computer
  position: 5
---

# Computador

O Computador é um bloco colocável que dá uma interface de terminal para observar e gerenciar suas redes de logística. Coloque um na sua base, use a **Interação Secundária (padrão: Botão Direito)** nele e você ganha um painel completo: liste todas as redes, veja a vazão ao vivo de cada canal ativo, pule direto para a config de qualquer nó e alterne a visibilidade dos nós em massa.

![Gerenciador de Rede — estado ocioso sem rede montada](images/network-manager-idle.png)

## Abrindo o Computador

Use a **Interação Secundária** num bloco de Computador colocado para abrir a tela do **Gerenciador de Rede**. Se você tiver uma [Chave-Inglesa](../wrench/index.md) em qualquer lugar do inventário, o Computador move temporariamente uma chave para o slot de baia de unidade interna no canto superior direito. A chave não pode ser retirada daquele slot. Fechar a tela devolve automaticamente a chave atualizada ao seu inventário.

O slot da baia de unidade só é interativo na página do Diretório de Redes. Se você mudar para a visão do Monitor de E/S ou da Tabela de Nós, não conseguirá tocar no slot da chave até voltar.

## Os Três Subsistemas

Depois de escolher uma rede no diretório, você pode pular para um dos dois subsistemas. Cobertos nos seus próprios capítulos:

- [Diretório de Redes](network-directory.md) — a lista de redes à esquerda; busca, fixação, montagem de uma rede.
- [Monitor de E/S](io-monitor.md) — vazão ao vivo de todos os nove canais, mais exatamente quais itens e fluidos estão se movendo.
- [Tabela de Nós](node-table.md) — cada nó da rede montada, agrupado por rótulo, com ações por linha.

Veja [Salvando e Carregando Redes](save-load.md) para fazer backup de configurações de nó ou carregá-las na chave do Computador.

Com o CC: Tweaked instalado, veja [ComputerCraft](../integrations/computercraft.md) para ler os mesmos dados a partir de scripts Lua e monitores.

Até uma rede ser montada, o painel direito só diz **Nenhuma Rede Montada**. Escolha uma no diretório e os botões de subsistema desbloqueiam.

## Redes Favoritas

Cada entrada de rede no diretório tem um pequeno ícone de **estrela** no lado direito. Use a **Interação Primária (padrão: Botão Esquerdo)** nela para fixar aquela rede no topo da lista. As redes fixadas (favoritas) ordenam primeiro; as não fixadas vêm depois. O estado da estrela fica guardado no próprio bloco do Computador — persiste entre sessões e é por Computador (dois Computadores podem ter favoritos diferentes).

Cada Computador lista as redes que o jogador atual pode acessar segundo a configuração **Acesso ao Nó** do servidor. Veja [Acesso à Rede](../index.md#network-access).

## Receita de Criação

<RecipeFor id="logisticsnetworks:computer" />
