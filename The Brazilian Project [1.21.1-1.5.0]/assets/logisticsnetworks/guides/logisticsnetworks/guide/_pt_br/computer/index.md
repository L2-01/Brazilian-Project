---
item_ids: [logisticsnetworks:computer]
navigation:
  title: Computador
  icon: logisticsnetworks:computer
  position: 5
---

# Computador

O Computador é um bloco posicionável que oferece uma interface de terminal para observar e gerenciar suas redes de logística. Coloque um na sua base, use a **Interação Secundária (padrão: Botão Direito)** nele e você tem um painel completo: liste todas as redes, veja a vazão ao vivo de cada canal ativo, pule direto para a configuração de qualquer nó e alterne a visibilidade dos nós em massa.

![Gerenciador de Rede — estado ocioso sem rede montada](images/network-manager-idle.png)

## Abrindo o Computador

Use a **Interação Secundária** em um bloco Computador colocado para abrir a tela do **Gerenciador de Rede**. Se você tiver uma [Chave-Inglesa](../wrench/index.md) em qualquer lugar do seu inventário, o Computador **carrega automaticamente** uma cópia dela no espaço da baía de unidade no canto superior direito. A chave-inglesa é emprestada, não consumida — feche a tela e a chave permanece no Computador até você retirá-la manualmente.

O espaço da baía de unidade só é interativo na página do Diretório de Redes. Se você mudar para a visão do Monitor de E/S ou da Tabela de Nós, não poderá mexer no espaço da chave até voltar.

## Os Três Subsistemas

Depois de escolher uma rede no diretório, você pode entrar em um dos dois subsistemas. Cobertos em seus próprios capítulos:

- [Diretório de Redes](network-directory.md) — a lista de redes à esquerda; busca, fixação, montagem de uma rede.
- [Monitor de E/S](io-monitor.md) — vazão ao vivo dos nove canais, mais exatamente quais itens, fluidos e produtos químicos estão se movendo.
- [Tabela de Nós](node-table.md) — todos os nós da rede montada, agrupados por rótulo, com ações por linha.

Veja [Salvando e Carregando Redes](save-load.md) para fazer backup das configurações dos nós ou carregá-las na chave-inglesa do Computador.

Com o CC: Tweaked instalado, veja [ComputerCraft](../integrations/computercraft.md) para ler os mesmos dados a partir de scripts Lua e monitores.

Até uma rede ser montada, o painel direito apenas diz **Nenhuma Rede Montada**. Escolha uma no diretório e os botões de subsistema desbloqueiam.

## Redes Favoritas

Cada entrada de rede no diretório tem um pequeno ícone de **estrela** no lado direito. Use a **Interação Primária (padrão: Botão Esquerdo)** nele para fixar aquela rede no topo da lista. Redes fixadas (favoritas) são ordenadas primeiro; as não fixadas vêm depois. O estado da estrela é armazenado no próprio bloco Computador — persiste entre sessões e é por Computador (dois Computadores podem ter favoritos diferentes).

As redes **não são trancadas por dono**. Todo Computador em um servidor pode ver toda rede naquele servidor, independente de quem a colocou.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:computer" />
