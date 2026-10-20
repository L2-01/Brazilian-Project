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

A estrutura fornece 50 posições opcionais de Armazenamento de Padrões. Pelo menos um armazenamento é obrigatório para a matriz se formar.

| Armazenamento de Padrões | Capacidade cada | Total com os 50 instalados |
|-----------------|--------------:|----------------------------:|
| T1 | 36 | 1.800 |
| T2 | 72 | 3.600 |

Armazenamentos T1 e T2 podem ser misturados numa mesma estrutura. A capacidade total é a soma de cada armazenamento instalado, com um padrão codificado por espaço.

## Inserindo e Removendo Padrões

Uma vez que a matriz esteja formada e conectada a uma rede ME ativa, todos os seus espaços de padrões aparecem como um grupo representado pela Porta da Matriz no **Terminal de Acesso a Padrões**. Padrões podem ser inseridos, substituídos ou removidos ali sem abrir a estrutura externa.

Clicar com o botão direito na Porta da Matriz abre uma tela de **gerenciamento de padrões** que navega, busca e gerencia cada padrão armazenado na matriz sem precisar de um Terminal de Acesso a Padrões.

A Porta da Matriz também expõe inserção de itens para automação. Tubos de itens podem inserir padrões em espaços disponíveis. Quebrar um Armazenamento de Padrões deixa cair seus padrões armazenados; melhorá-lo no lugar pelo Controlador os preserva.

## Melhorando o Armazenamento de Padrões

Coloque Melhorias de Armazenamento de Padrões da Matriz de Deformação da Matéria Tianshu no inventário do jogador, depois use **Melhorar** a partir do Controlador. A matriz substitui armazenamentos T1 por T2 no lugar, limitado pelo número de melhorias carregadas:

* Um item de melhoria é consumido por armazenamento melhorado
* Os padrões armazenados são preservados
* Se houver poucas melhorias disponíveis, apenas a quantidade possível é melhorada
* Nenhum item de melhoria é consumido quando não restam armazenamentos T1

## Porta da Matriz

Exatamente uma Porta deve estar instalada. Qualquer uma das três posições candidatas é válida. Quando nenhuma Porta existente é encontrada, a construção automática a coloca diretamente oposta ao Controlador.

A Porta:

* Publica a matriz como provedora de fabricação para a rede ME
* Agrega e expõe todos os Armazenamentos de Padrões
* Recebe ingredientes de trabalhos de fabricação e insere os resultados concluídos diretamente na rede
* Aceita conexões de cabo ME nos seis lados apenas após a formação; cabos não podem conectar enquanto a estrutura estiver desformada. Tem custo fixo em repouso de 8 AE/t, e o multibloco formado consome 1 canal

Além do custo fixo em repouso, a matriz consome **1 AE** para cada cópia de padrão que aceita com sucesso. Se aceitar um dado número de cópias de padrão num mesmo tique, aquele tique consome a mesma quantidade adicional de AE sobre os 8 AE/t de repouso. Quando a energia disponível é insuficiente, a matriz limita o trabalho daquele tique ao número de cópias que a rede pode pagar. Ela não aceita novos trabalhos de fabricação enquanto a Porta estiver desconectada de uma rede energizada ou pertencer a uma estrutura desformada.

A matriz não carrega à força nenhum chunk na sua área. Se qualquer chunk da estrutura for descarregado, a Porta desconecta e o trabalho pausa sem limpar padrões, trabalhos ou os últimos dados de estrutura confirmados. Ela reescaneia e reconecta automaticamente depois que a estrutura completa é carregada de novo. Uma construção entre chunks precisa portanto de um carregador de chunks cobrindo a matriz inteira.

## Resolução de Problemas

* **A estrutura não se forma:** Verifique o Núcleo Principal central, todas as 80 Unidades Periféricas, pelo menos um Armazenamento de Padrões, a Porta única e cada posição fixa da carcaça
* **A construção automática não faz nada:** Remova blocos inválidos das posições-alvo e verifique se todos os materiais estão no inventário do jogador
* **A Porta está ausente da rede:** Verifique a conexão do cabo, a energia da rede e o estado de formação
* **A Porta fica offline após um carregamento entre chunks:** Garanta que o carregador de chunks cubra a matriz inteira e dê tempo para o reescaneamento automático
* **Um padrão armazenado não é selecionado para um trabalho:** Confirme que o padrão está armazenado nesta matriz e que a Porta está online, depois verifique se outros provedores anunciam o mesmo padrão
