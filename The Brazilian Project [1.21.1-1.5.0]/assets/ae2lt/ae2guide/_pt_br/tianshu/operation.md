---
navigation:
  title: Porta, Tarefas e Planejamento Rápido
  icon: ae2lt:tianshu_supercomputer_port
  parent: tianshu/tianshu-index.md
  position: 30
item_ids:
  - ae2lt:tianshu_supercomputer_controller
  - ae2lt:tianshu_supercomputer_port
---

# Porta, Tarefas e Planejamento Rápido

## Porta do Vetor de Supercomputação Tianshu

Após a formação, a <ItemLink id="ae2lt:tianshu_supercomputer_port" /> publica o multibloco à rede ME como uma CPU de fabricação chamada "Vetor de Supercomputação Tianshu". Cabos ME só podem se conectar nos seis lados enquanto a estrutura está formada; eles não conseguem conectar enquanto ela está desformada. O multibloco formado consome **1 canal**. O consumo em repouso da porta depende do Núcleo Principal instalado: Baseline usa **256 AE/t**, Quântico usa **8.192 AE/t**, Sobrecarga usa **262.144 AE/t** e Multidimensional usa **8 AE/t**. Se a rede ME não puder fornecer essa energia, a porta não fica ativa e os terminais não conseguem se vincular ao arranjo.

O supercomputador não aceita novas tarefas enquanto sua porta está offline, sua rede ME está sem energia ou a estrutura está desformada. O estado de tarefas salvo persiste entre descarregamentos de chunks e pode continuar depois que a estrutura e a rede voltarem.

O supercomputador não força o carregamento de nenhum chunk em sua área. Se qualquer chunk da estrutura for descarregado, a Porta desconecta e as tarefas pausam. Ele reexamina e retoma automaticamente depois que a estrutura completa é carregada de novo. Uma construção entre chunks, portanto, precisa de um carregador de chunks cobrindo toda a estrutura.

## Terminal de Codificação de Padrões Tianshu

O [Terminal de Codificação de Padrões Tianshu](../terminals/pattern-encoding-terminal.md) estende o Terminal de Codificação de Padrões comum com codificação aprimorada de padrões de processamento, envio de padrões, autoria de Padrão de Circuito Fechado e configuração de manutenção de estoque. É o ponto de entrada para criar e gerenciar padrões específicos do Tianshu; veja sua página dedicada.

## Capacidade Compartilhada e Tarefas Concorrentes

Diferente de uma CPU de fabricação convencional, o Vetor de Supercomputação Tianshu pode reter e executar várias tarefas de fabricação de uma vez.

* Cada nova tarefa reserva a exigência de bytes do seu plano do armazenamento total de fabricação
* Tarefas adicionais podem usar o mesmo supercomputador enquanto houver armazenamento não reservado suficiente
* Completar ou cancelar uma tarefa libera sua reserva
* Todas as tarefas ativas compartilham o orçamento de despachos bem-sucedidos da configuração de núcleo; cada tarefa recebe seu próprio orçamento completo de cópias por tick, mas apenas padrões e alvos compatíveis com lote podem usar mais de uma cópia por despacho

Se a tela de confirmação de fabricação reportar armazenamento de CPU insuficiente, espere as tarefas ativas liberarem capacidade, adicione Unidades de Armazenamento Tianshu ou instale um Núcleo Principal de tier mais alto.

## Tela do Controlador

Use o <ItemLink id="ae2lt:tianshu_supercomputer_controller" /> para ver:

* Estado de formação e o primeiro problema detectado quando desformada
* Tier atual do Núcleo Principal Tianshu
* Contagens de Unidades Paralelas, Amplificadoras e de Armazenamento, além das contagens de Armazenamentos de Padrões e de Sementes de Circuito Fechado
* O fator de amplificação `R` e os ganhos resultantes de despacho `Gd` e de armazenamento `Gs` (a tela usa estes símbolos)
* O valor bruto de despacho e o orçamento efetivo de despachos bem-sucedidos `D`, com um indicador quando o teto do Núcleo Principal é atingido
* Capacidade interna, capacidade externa amplificada e armazenamento total de fabricação
* O orçamento de cópias por tick de cada tarefa `T`; note que o paralelismo mostrado na confirmação de fabricação do AE2 conta apenas despachos bem-sucedidos, não o orçamento de cópias
* Controles para a construção automática do casco e o Planejamento Rápido

Substituir uma unidade da câmara do núcleo, ou remover armazenamento de circuito fechado de uma posição compatível com resfriamento, desforma temporariamente a estrutura enquanto a posição está vazia. Se a porta retém tarefas ativas, o novo perfil entra em vigor após todas as tarefas existentes terminarem; restaurar a estrutura e a rede permite que as tarefas retidas continuem. Uma Unidade de Resfriamento de Mudança de Fase é válida na mesma posição compatível com resfriamento, mas não fornece a capacidade de circuito fechado correspondente.

## Planejamento Rápido

O **Planejamento Rápido** fica habilitado por padrão e reduz o tempo de cálculo de grandes planos de fabricação. Ele afeta apenas o planejamento antes do envio da tarefa; não altera receitas, requisitos de materiais, armazenamento de fabricação nem velocidade de execução.

Quando um plano não é suportado pelo caminho rápido ou ocorre um erro, o cálculo automaticamente recai no planejador padrão do AE2. Desabilite o Planejamento Rápido no controlador ao diagnosticar compatibilidade de padrões ou comparar resultados de cálculo.

A elegibilidade do planejamento rápido é agregada por toda a rede ME. Se outra CPU de fabricação ativa com suporte a planejamento rápido ainda permitir o recurso, a rede pode continuar usando o planejamento rápido. Desabilite o ajuste correspondente ou tire essas CPUs de linha para forçar exclusivamente o planejador padrão.

## Resolução de Problemas

Enquanto a estrutura está desformada, a tela do controlador mostra diretamente o primeiro problema detectado; resolva essa pista primeiro.

**Estrutura e construção**

* **A estrutura não forma:** Verifique cada ponto das [regras de construção manual](construction.md#manual-construction-rules) — revestimento e vidro completos, exatamente uma porta, todas as 17 posições não-porta compatíveis com resfriamento preenchidas com Unidades de Resfriamento de Mudança de Fase ou armazenamento de circuito fechado, o Núcleo Principal Tianshu centrado na câmara do núcleo e todas as 26 células periféricas preenchidas com unidades suportadas por aquele Núcleo Principal
* **A construção automática não inicia:** Limpe as coordenadas reportadas pelo controlador e garanta que todos os materiais estejam no inventário do jogador

**Rede e tarefas**

* **A CPU está ausente da confirmação de fabricação:** Verifique a conexão de cabo da porta, a energia ME e o estado de formação da estrutura
* **A Porta fica offline após um carregamento entre chunks:** Garanta que o carregador de chunks cubra toda a estrutura Tianshu e dê tempo para o reexame automático
* **A CPU rejeita uma nova tarefa:** O armazenamento de fabricação restante pode já estar reservado por outras tarefas ativas; espere as tarefas terminarem ou adicione Unidades de Armazenamento

**Desempenho abaixo do esperado**

* **Um orçamento de despacho alto não melhora a vazão:** O gargalo geralmente está no lado da execução — verifique as contagens de Fornecedores de Padrões e máquinas de processamento, a velocidade das máquinas, o suprimento de materiais e a capacidade de transferência da rede
* **Um orçamento de cópias alto ainda envia padrões comuns de processamento um de cada vez:** Máquinas de processamento do AE2 em geral aceitam uma cópia por chamada; cópias em lote exigem padrões, fornecedores e alvos compatíveis — veja [Cópias em Lote](computing-units.md#batch-copies)
