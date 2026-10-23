---
navigation:
  title: Padrões, Porta e Operação
  icon: ae2lt:matter_warping_matrix_pattern_storage_t1
  parent: matrix/matrix-index.md
  position: 30
item_ids:
  - ae2lt:matter_warping_matrix_pattern_storage_t1
  - ae2lt:matter_warping_matrix_pattern_storage_t2
  - ae2lt:matter_warping_matrix_pattern_storage_upgrade
---

# Padrões, Porta e Operação

## Armazenamento de Padrões

A estrutura fornece 50 posições opcionais de Armazenamento de Padrões. Pelo menos um armazenamento é exigido para a matriz formar.

| Armazenamento de Padrões | Capacidade cada | Total com os 50 instalados |
|-----------------|--------------:|----------------------------:|
| T1 | 36 | 1,800 |
| T2 | 72 | 3,600 |

Armazenamentos T1 e T2 podem ser misturados numa mesma estrutura. A capacidade total é a soma de todos os armazenamentos instalados, com um padrão codificado por slot.

## Inserindo e Removendo Padrões

Com a matriz formada e conectada a uma rede ME ativa, todos os seus slots de padrões aparecem como um grupo representado pela Porta da Matriz no **Terminal de Acesso a Padrões**. Padrões podem ser inseridos, substituídos ou removidos ali sem abrir a estrutura externa.

Clicar com o botão direito na Porta da Matriz abre uma tela de **gerenciamento de padrões** que navega, pesquisa e gerencia cada padrão armazenado na matriz sem um Terminal de Acesso a Padrões.

A Porta da Matriz também expõe inserção de itens para automação. Tubos de itens podem inserir padrões em slots disponíveis. Quebrar um Armazenamento de Padrões dropa seus padrões armazenados; melhorá-lo no lugar pelo Controlador os preserva.

## Melhorando o Armazenamento de Padrões

Coloque Melhorias de Armazenamento de Padrões da Matriz de Deformação da Matéria Tianshu no inventário do jogador, depois use **Melhoria** no Controlador. A matriz substitui armazenamentos T1 por armazenamentos T2 no lugar, limitado pelo número de melhorias carregadas:

* Um item de melhoria é consumido por armazenamento melhorado
* Padrões armazenados são preservados
* Se houver melhorias insuficientes, apenas a quantidade possível é melhorada
* Nenhum item de melhoria é consumido quando não restam armazenamentos T1

## Porta da Matriz

Exatamente uma Porta deve ser instalada. Qualquer uma das três posições candidatas é válida. Quando nenhuma Porta existente é encontrada, a construção automática a coloca diretamente oposta ao Controlador.

A Porta:

* Publica a matriz como fornecedora de fabricação à rede ME
* Agrega e expõe todos os Armazenamentos de Padrões
* Recebe ingredientes de tarefas de fabricação e insere resultados completos diretamente na rede
* Aceita conexões de cabos ME em todos os seis lados apenas após a formação; cabos não conseguem conectar enquanto a estrutura está desformada. Ela tem um custo fixo em repouso de 8 AE/t, e o multibloco formado consome 1 canal

Além do seu custo fixo em repouso, a matriz consome **1 AE** para cada cópia de padrão que aceita com sucesso. Se ela aceitar certo número de cópias de padrões num tick, aquele tick consome a mesma quantidade de AE adicional sobre o custo em repouso de 8 AE/t. Quando a energia disponível é insuficiente, a matriz limita o trabalho daquele tick ao número de cópias que a rede consegue pagar. Ela não aceita novos trabalhos de fabricação enquanto a Porta está desconectada de uma rede energizada ou pertence a uma estrutura desformada.

A matriz não força o carregamento de nenhum chunk em sua área. Se qualquer chunk da estrutura for descarregado, a Porta desconecta e o trabalho pausa sem limpar padrões, tarefas ou os últimos dados de estrutura confirmados. Ela reexamina e reconecta automaticamente depois que a estrutura completa é carregada de novo. Uma construção entre chunks, portanto, precisa de um carregador de chunks cobrindo toda a matriz.

## Resolução de Problemas

* **A estrutura não forma:** Verifique o Núcleo Principal central, todas as 80 Unidades Periféricas, pelo menos um Armazenamento de Padrões, a Porta única e cada posição fixa do casco
* **A construção automática não faz nada:** Remova blocos inválidos das posições-alvo e verifique se todos os materiais estão no inventário do jogador
* **A Porta está ausente da rede:** Verifique a conexão de cabos, a energia da rede e o estado de formação
* **A Porta fica offline após um carregamento entre chunks:** Garanta que o carregador de chunks cubra toda a matriz e dê tempo para o reexame automático
* **Um padrão armazenado não é selecionado para uma tarefa:** Confirme que o padrão está armazenado nesta matriz e que a Porta está online, depois verifique outros fornecedores anunciando o mesmo padrão
