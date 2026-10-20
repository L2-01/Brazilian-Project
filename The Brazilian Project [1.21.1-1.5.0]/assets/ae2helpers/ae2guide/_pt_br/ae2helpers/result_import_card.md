---
navigation:
  parent: ae2helpers/index.md
  title: Cartão de Importação de Resultado de Fabricação
  icon: ae2helpers:result_import_card
categories:
- result import card
item_ids:
- ae2helpers:result_import_card
---

O **Cartão de Importação de Resultado de Fabricação** é uma melhoria especializada para o **Provedor de Padrões** que simplifica 
as configurações de automação ao eliminar a necessidade de Pontos de Importação separados (em blocos/máquinas que não conseguem exportar itens sozinhos, como uma fornalha vanilla).

Este cartão permite que o **próprio Provedor de Padrões** puxe os itens prontos de volta da máquina adjacente, combinando 
efetivamente as lógicas de "Empurrar" e "Puxar" em um único bloco.

Um espaço de melhoria foi adicionado ao **Provedor de Padrões**, onde este cartão pode ser inserido.

# Configuração
Clique com o botão direito no item do cartão para abrir o menu de configurações:

*   **Importar Apenas Resultados de Fabricação:**
    *   **Ativado (Padrão):** O cartão é "Inteligente". Ele rastreia exatamente quais ingredientes foram empurrados e calcula a saída esperada. Ele importará *apenas* aqueles itens de resultado específicos. Ignora outros itens na máquina.
    *   **Desativado:** O cartão age como um Ponto de Importação padrão. Ele puxará agressivamente *qualquer* item da máquina alvo para a rede.
    *   Note que manter isso ativado é muito mais amigável ao desempenho, pois ele não precisa ficar tentando importar da máquina o tempo todo.

*   **Sincronizar com a CPU de Fabricação:**
    *   **Ativado (Padrão):** O cartão se comunica com a CPU de Fabricação que gerencia o trabalho. Se você cancelar a tarefa de fabricação em um terminal, o cartão para de esperar pelos resultados. Isso evita que o provedor fique travado "esperando" por itens que nunca chegarão.

*   **Lado de Importação:**
    *   **Auto:** Importa pelo lado da máquina que está tocando o Provedor de Padrões.
    *   **Lado Específico (Acima, Abaixo, Norte etc.):** Força o provedor a puxar por um lado específico da máquina adjacente. Útil para máquinas que só exportam por lados específicos (ex.: Fornalhas com saída lateral).


O cartão usa um algoritmo de "recuo exponencial". Se a máquina for lenta, o cartão verifica com menos frequência para poupar o desempenho do servidor. Ele desperta imediatamente quando uma nova fabricação começa.

### Limitações
*   **Apenas Provedores com Lados:** Este cartão funciona tanto com a versão completa quanto com a versão de "painel"/"peça" do provedor de padrões. Porém, o provedor de bloco completo precisa estar apontado para um lado específico (pode ser feito com uma Chave-Inglesa).
