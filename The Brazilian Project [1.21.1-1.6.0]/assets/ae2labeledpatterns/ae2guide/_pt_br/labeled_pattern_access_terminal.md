---
navigation:
  title: Terminal de Acesso a Padrões Rotulados
  icon: ae2labeledpatterns:labeled_pattern_access_terminal
  parent: ae2lps_intro.md
item_ids:
  - ae2labeledpatterns:labeled_pattern_access_terminal
  - ae2labeledpatterns:wireless_labeled_pattern_access_terminal
---

# Terminal de Acesso a Padrões Rotulados
<ItemImage id="ae2labeledpatterns:labeled_pattern_access_terminal" scale="4"></ItemImage>
O Terminal de Acesso a Padrões Rotulados é um novo terminal que pode exibir padrões rotulados separadamente de acordo com os rótulos. Obviamente, ele tem todas as funções básicas do Terminal de Acesso a Padrões ME normal.

## GUI
Há 3 novos botões na GUI do terminal em comparação com a versão normal:
- **Filtro de Rótulo**: o padrão é vazio; clique para indexar todos os rótulos que a grade encontrou nos provedores de padrões. A tela será atualizada para mostrar os provedores de padrões correspondentes.
- **Mostrar Seleção de Grupo**: o padrão é desativado; clique para decidir se exibe uma caixa de seleção antes de cada cabeçalho de grupo. Quando ativado, você pode selecionar qualquer um deles para marcar o grupo. Isso será útil para decidir qual grupo será o destino da movimentação rápida.
- **Conveniência de Movimentação Rápida**: o padrão é Nenhum, o que significa nenhuma ação adicional quando você der Shift+clique num provedor de padrões.
  - Nenhum: Shift+clique num padrão codificado no inventário o moverá rapidamente para um provedor na linha que tiver um espaço vazio. Quando não houver grupo selecionado, ele varrerá todas as linhas visíveis na tela; caso contrário, varrerá o grupo selecionado atual. A prioridade de movimentação também depende do botão do mouse usado:
    - Clique esquerdo: move para o primeiro espaço vazio dentro do grupo selecionado atual (se houver) ou em todas as linhas visíveis.
    - Clique direito: move para o último espaço vazio dentro do grupo selecionado atual (se houver) ou em todas as linhas visíveis.
  - De Uma Vez Só: além de Nenhum, neste modo a ação de Shift+clique tentará duplicar o padrão várias vezes para inseri-lo em cada provedor de padrões do grupo selecionado atual. Não funcionará se não houver grupo selecionado. Isso será útil se você precisar configurar as mesmas produções com provedores de padrões mais de uma vez. Você pode inserir o padrão ao mesmo tempo. Note que é preciso ter padrões em branco suficientes no seu inventário ou no Armazenamento ME. Se você não tiver padrões em branco suficientes, não funcionará.

Depois disso, você também pode ajustar configurações extras no botão **Configurações do Terminal**.
