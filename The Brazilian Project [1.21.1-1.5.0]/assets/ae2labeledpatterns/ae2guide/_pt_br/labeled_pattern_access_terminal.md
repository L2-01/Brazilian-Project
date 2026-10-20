---
navigation:
  title: Terminal Etiquetado de Acesso a Padrões
  icon: ae2labeledpatterns:labeled_pattern_access_terminal
  parent: ae2lps_intro.md
item_ids:
  - ae2labeledpatterns:labeled_pattern_access_terminal
  - ae2labeledpatterns:wireless_labeled_pattern_access_terminal
---

# Terminal Etiquetado de Acesso a Padrões
<ItemImage id="ae2labeledpatterns:labeled_pattern_access_terminal" scale="4"></ItemImage>
O Terminal Etiquetado de Acesso a Padrões é um novo terminal que pode exibir padrões etiquetados separadamente de acordo com as etiquetas. Obviamente, ele tem todas as funções básicas do Terminal de Acesso a Padrões ME normal.

## GUI
Há 3 botões novos na GUI do terminal em comparação com a versão normal:
- **Filtro de Etiquetas**: Por padrão fica vazio; clique para indexar todas as etiquetas que a rede encontrou nos provedores de padrões. A tela será atualizada para mostrar os provedores de padrões correspondentes.
- **Seleção de Grupo**: Desativada por padrão; clique para decidir se deve mostrar uma caixa de seleção antes de cada cabeçalho de grupo. Quando ativada, você pode selecionar qualquer uma delas para marcar o grupo. Isso será útil para decidir qual grupo será o alvo da movimentação rápida.
- **Conveniência do Movimento Rápido**: Por padrão é Nenhum, o que significa que nenhuma ação adicional ocorre ao dar Shift+clique num provedor de padrões.
  - Nenhum: Shift+clique num padrão codificado no inventário o move rapidamente para um provedor na linha que tiver um espaço vazio. Quando não houver grupo selecionado, ele varre todas as linhas visíveis na tela; caso contrário, varre o grupo selecionado. A prioridade do movimento também depende do botão do mouse usado no clique:
    - Clique esquerdo: Move para o primeiro espaço vazio dentro do grupo selecionado (se houver) ou em todas as linhas visíveis.
    - Clique direito: Move para o último espaço vazio dentro do grupo selecionado (se houver) ou em todas as linhas visíveis.  
  - Para Todos: Além do modo Nenhum, neste modo o Shift+clique tentará duplicar o padrão várias vezes para inseri-lo respectivamente em cada provedor de padrões do grupo selecionado. Não funcionará se não houver grupo selecionado. Isso é útil se você precisar configurar as mesmas produções com vários provedores de padrões: você pode inserir o padrão em todos ao mesmo tempo. Note que é preciso ter padrões em branco suficientes no seu inventário ou no Armazenamento ME. Se não tiver padrões em branco suficientes, não funcionará.

Depois disso, você também pode ajustar configurações extras no botão de **Configurações do Terminal**.
