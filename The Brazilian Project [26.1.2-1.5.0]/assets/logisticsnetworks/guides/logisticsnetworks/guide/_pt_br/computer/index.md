---
item_ids: [logisticsnetworks:computer]
navigation:
  title: Computador
  icon: logisticsnetworks:computer
  position: 5
---

# Computador

O Computador é um bloco posicionável que oferece uma interface de terminal para observar e gerenciar suas redes de logística. Coloque um na sua base, use **Interação Secundária (padrão: Clique Direito)** nele, e você tem um painel completo: liste todas as redes, veja a vazão ao vivo de cada canal ativo, pule direto para a configuração de qualquer nó e alterne a visibilidade dos nós em massa.

![Network Manager — idle state with no network mounted](images/network-manager-idle.png)

## Abrindo o Computador

Use **Interação Secundária** num bloco Computador posicionado para abrir a tela do **Gerenciador de Rede**. Se você tiver uma [Chave-Inglesa](../wrench/index.md) em qualquer lugar do inventário, o Computador move temporariamente uma chave para o compartimento interno de unidade no canto superior direito. A chave não pode ser retirada desse espaço. Fechar a tela devolve automaticamente a chave atualizada ao seu inventário.

O compartimento de unidade só é interativo na página do Diretório de Redes. Se você mudar para a visão do Monitor de E/S ou da Tabela de Nós, não poderá tocar no espaço da chave até voltar.

## Os três subsistemas

Depois de escolher uma rede no diretório, você pode entrar em qualquer um dos dois subsistemas. Cobertos em capítulos próprios:

- [Diretório de Redes](network-directory.md) — a lista de redes à esquerda; busca, fixação, montagem de uma rede.
- [Monitor de E/S](io-monitor.md) — vazão ao vivo dos nove canais, mais exatamente quais itens e fluidos estão se movendo.
- [Tabela de Nós](node-table.md) — todos os nós da rede montada, agrupados por rótulo, com ações por linha.

Veja [Salvar e Carregar Redes](save-load.md) para guardar configurações de nós ou carregá-las na chave do Computador.

Com o CC: Tweaked instalado, veja [ComputerCraft](../integrations/computercraft.md) para ler os mesmos dados em scripts Lua e monitores.

Até uma rede ser montada, o painel direito só diz **NENHUMA REDE MONTADA**. Escolha uma no diretório e os botões de subsistema desbloqueiam.

## Redes favoritadas

Cada entrada de rede no diretório tem um pequeno ícone de **estrela** à direita. Use **Interação Primária (padrão: Clique Esquerdo)** nele para fixar aquela rede no topo da lista. Redes fixadas (com estrela) aparecem primeiro; as demais vêm depois. O estado da estrela fica salvo no próprio bloco Computador — persiste entre sessões e é por Computador (dois Computadores podem ter favoritas diferentes).

Cada Computador lista as redes que o jogador atual pode acessar conforme a configuração **Acesso ao Nó** do servidor. Veja [Acesso à Rede](../index.md#network-access).

## Receita de fabricação

<RecipeFor id="logisticsnetworks:computer" />
