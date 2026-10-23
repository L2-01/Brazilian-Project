---
navigation:
  title: Terminal de Codificação de Padrões Tianshu
  icon: ae2lt:tianshu_pattern_encoding_terminal
  parent: index.md
  position: 47
item_ids:
  - ae2lt:tianshu_pattern_encoding_terminal
  - ae2lt:wireless_tianshu_pattern_encoding_terminal
  - ae2lt:closed_loop_pattern
---

# Terminal de Codificação de Padrões Tianshu

O <ItemLink id="ae2lt:tianshu_pattern_encoding_terminal" /> oferece tudo o que o Terminal de Codificação de Padrões comum faz, mais codificação aprimorada de padrões de processamento, envio de padrões, autoria de Padrão de Circuito Fechado e configuração de manutenção de estoque. Conecte-o a um cabo ME como qualquer terminal. **Codificar padrões e enviá-los a fornecedores não exige um Vetor de Supercomputação Tianshu**.

<RecipeFor id="ae2lt:tianshu_pattern_encoding_terminal" />

A versão sem fio oferece os mesmos recursos de codificação e também pode ser usada como módulo do Terminal Universal Sem Fio.

<RecipeFor id="ae2lt:wireless_tianshu_pattern_encoding_terminal" />

## Modos de Codificação

O terminal oferece modos de fabricação, processamento, corte em pedra, ferraria e **Padrão de Circuito Fechado**.

## Vinculação a um Tianshu

Apenas dois recursos exigem um Vetor de Supercomputação Tianshu formado: enviar padrões de circuito fechado para o Armazenamento de Padrões de Circuito Fechado, e a manutenção de estoque. Quando existe um Tianshu na rede, o terminal aberto trava no primeiro formado disponível; se ainda não houver nenhum, ele trava no primeiro Tianshu que ficar online.

O terminal nunca revincula a um Tianshu diferente enquanto permanece aberto. Se o Tianshu travado ficar offline ou desformar, as ações relacionadas simplesmente falham; feche e reabra o terminal para escolher um alvo de novo.

O Armazenamento de Padrões de Circuito Fechado instalado nas posições compatíveis com resfriamento do Tianshu vinculado aparece como um inventário extra de padrões na lista de conteúdo da rede do terminal. A entrada só é exibida enquanto a estrutura está formada e sua porta está online. Cada Armazenamento de Padrões de Circuito Fechado fornece **36** slots de padrões de circuito fechado, e armazenamentos instalados se somam. Padrões de circuito fechado podem ser retirados da lista para inspeção ou edição; devolvê-los ao armazenamento exige a função de envio do terminal.

<a name="processing-patterns"></a>

## Padrões de Processamento Aprimorados

No modo de processamento, o terminal adiciona:

* **Botões multiplicadores:** Multiplique ou divida todas as quantidades de entrada e saída por 2 ou 5; segure Shift para 4 ou 10 para redimensionar uma receita em lotes inteiros.
* **Codificação avançada** (requer AdvancedAE): Configure um lado de inserção para cada entrada; uma vez configurada, a codificação produz um padrão avançado.
* **Codificação de sobrecarga:** Escolha um modo de correspondência para cada entrada e saída — "Estrita" exige componentes de item idênticos, "Só ID" ignora diferenças de componentes e casa apenas pelo item. Uma vez configurada, a codificação produz um padrão de sobrecarga.

As codificações avançada e de sobrecarga podem ser combinadas. Os ajustes são salvos com a receita atual e podem ser reutilizados em codificações repetidas. Reconfigure após mudar entradas, saídas ou quantidades, trocar de modo, limpar a página ou redefinir o tipo de codificação.

Clique com o botão do meio num slot de processamento para editar sua quantidade e confirmar. Defini-la como 0 limpa o slot.

<a name="pattern-upload"></a>

## Envio de Padrões

Com um padrão no slot de padrão codificado, o botão **Enviar** o manda ao destino sem transporte manual:

* **Padrões de fabricação** casam automaticamente apenas com grupos de fornecedores para Montadores Moleculares, Montadores Moleculares Expandidos, Matrizes de Montagem EAE/EAEP, Subsistemas de Fabricação ECO e Matrizes de Deformação da Matéria Tianshu. Matrizes de Deformação da Matéria têm prioridade; os outros grupos usam o primeiro slot livre compatível em ordem estável.
* **Padrões de processamento** abrem a tela de seleção de fornecedor: todos os Fornecedores de Padrões visíveis na rede são listados agrupados por nome, mostrando contagens de fornecedores e slots livres por grupo, com busca por nome, item ou tooltip.
* **Padrões de circuito fechado** são enviados ao Armazenamento de Padrões de Circuito Fechado do Tianshu vinculado.

A tela de seleção de fornecedor também suporta **mapeamentos de alias**. Uma transferência do JEI/EMI usa o tipo de receita ou a categoria do visualizador como chave de origem; sem contexto do visualizador, usa-se a saída primária do padrão. O alias salvo vira o filtro de fornecedor para que receitas semelhantes localizem seu alvo mais rápido. A filtragem suporta correspondência de ID de item ancorada à esquerda, além de correspondência por conteúdo e por curinga em nomes e tooltips; correspondência por pinyin também fica disponível quando o Just Enough Characters está instalado. Shift + botão direito numa entrada da lista vincula o nome daquela máquina como alias diretamente.

Os ajustes do terminal configuram um **gatilho de envio**: segurar uma tecla escolhida (ou nenhuma) durante a codificação entra automaticamente no fluxo de envio correspondente; também pode ser definido como só envio manual. O botão de envio manual permanece sempre disponível.

### Codificação e Envio Diretos pelo JEI ou EMI

Prepare um padrão em branco no Terminal de Codificação de Padrões Tianshu e use qualquer modo de codificação que não seja circuito fechado. Numa página de receita do JEI ou EMI, **segure `Alt` ao transferir a receita**. Depois que o visualizador confirmar que a transferência teve sucesso, o terminal codifica o padrão e imediatamente tenta enviá-lo conforme seu tipo. Uma transferência falha não inicia codificação nem envio.

> Este atalho `Alt` pertence ao visualizador de receitas e é independente do **gatilho de envio** configurado do terminal. O gatilho de envio não precisa estar definido como `Alt`.

O resultado do envio direto depende do tipo de padrão:

* **Padrões de fabricação, corte em pedra e ferraria** seguem seu roteamento automático normal. Quando nenhuma seleção é necessária, a página de receita atual do JEI ou EMI permanece aberta e o resultado do envio aparece na barra de ação, facilitando transferências consecutivas.
* **Padrões de processamento, avançados e de sobrecarga** usam o mesmo filtro inicial da tela de seleção de fornecedor: um alias salvo para o tipo ou categoria de receita atual tem prioridade; caso contrário, usa-se o primeiro alias padrão fornecido pelo visualizador. Se o filtro produzir exatamente um grupo candidato com slot livre, o padrão é enviado em segundo plano e a página de receita atual permanece aberta. Nenhum candidato, múltiplos candidatos ou um único candidato cheio abre a tela de seleção de fornecedor diretamente; retornar dela volta ao terminal.
* O **modo de circuito fechado** não usa este atalho de envio direto. Uma transferência do JEI/EMI apenas marca a saída primária e inicia a descoberta de circuito fechado; conclua a configuração, codificação e envio do padrão de circuito fechado normalmente.

<a name="closed-loop-patterns"></a>

## Padrões de Circuito Fechado

Um padrão de circuito fechado agrupa padrões encadeados numa única receita para automação que cicla ingredientes enquanto produz um ganho líquido, como a duplicação de Moldes de Ferraria ou o ciclo de Certus da Câmara de Reação do AdvancedAE. Prepare primeiro os padrões comuns que compõem o ciclo.

Um padrão de circuito fechado consiste em:

* **Padrões membros** (até 27): os padrões comuns que formam o ciclo, cada um anotado com as cópias executadas por ciclo. Todas as contagens de cópias devem formar uma razão inteira mínima; 2:4 é inválido e deve ser escrito como 1:2.

* **Saídas primária e secundárias:** Marque exatamente 1 saída primária e até 8 saídas secundárias da produção líquida do ciclo. A saída primária deve ter ganho líquido positivo. Por exemplo, consumir 128 Cristais de Certus e produzir 256 é válido, assim como produzir 192 Cristais de Certus, 16 Pós de Certus e 16 Cristais de Certus Carregados. Produzir apenas 64 Cristais de Certus, 48 Pós de Certus e 48 Cristais de Certus Carregados tem ganho líquido negativo e não pode ser codificado. Conversões reversíveis como `1 Iron Block → 9 Iron Ingots` combinadas com `9 Iron Ingots → 1 Iron Block` também não têm ganho líquido e são rejeitadas.

* **Entradas externas:** Materiais que cada ciclo puxa da rede, calculados automaticamente e exibidos como somente leitura. Água fornecida ao ciclo da Câmara de Reação é um exemplo.

* **Sementes:** Itens adiantados para iniciar o ciclo, calculados automaticamente e exibidos como somente leitura. No ciclo de exemplo, pelo menos 80 Cristais de Certus — ou 16 Cristais de Certus Carregados mais 16 Pós de Certus — devem estar disponíveis antes da fabricação começar.

Você deve fornecer os materiais exigidos para iniciar o ciclo.

### Fluxo de Autoria

1. Alterne para o modo Padrão de Circuito Fechado e coloque — ou codifique — o padrão comum do produto primário do ciclo no **slot de saída de padrões codificados** do terminal.
Para um ciclo fechado de Certus, pode ser um padrão de processamento como `16 Charged Certus Quartz Crystals + 16 Certus Quartz Dust → 64 Charged Certus Quartz Crystals`, ou um padrão de fabricação como `1 Certus Quartz Block → 4 Certus Quartz Crystals`; qualquer padrão comum cuja saída seja Certus pode servir de ponto de partida.
2. Clique em **Preencher**: o terminal procura na rede combinações de padrões que fechem o ciclo em torno daquele produto. Quando há vários candidatos, clicar de novo alterna entre eles.
3. Abra a tela de **Detalhes** para revisar e ajustar: adicione, remova e reordene membros, edite cópias por ciclo e marque saídas primárias e secundárias (clique para alternar a declaração, Shift-clique para definir a primária).
4. Ajuste os dois multiplicadores na página de ajustes:
   * **Ondas de sementes por tarefa:** Quantos conjuntos de sementes uma tarefa pega emprestado no início — efetivamente o paralelismo da tarefa. Valores maiores aumentam a vazão por tarefa e o adiantamento inicial.
   * **Conjuntos de tarefas armazenados:** Quantas tarefas de sementes o Tianshu mantém pré-estocadas — efetivamente o número de tarefas que podem rodar em paralelo.
5. Quando o status indicar pronto para codificar, codifique para obter um <ItemLink id="ae2lt:closed_loop_pattern" />, depois envie-o ao Armazenamento de Padrões de Circuito Fechado. Criar e codificar um padrão de circuito fechado não exige Tianshu; porém, o padrão deve estar armazenado no Armazenamento de Padrões de Circuito Fechado de algum Tianshu antes de poder executar.

### Preparando o Armazenamento de Sementes

Para executar um padrão de circuito fechado, instale pelo menos um Armazenamento de Padrões de Circuito Fechado e um Armazenamento de Sementes de Circuito Fechado no Vetor de Supercomputação Tianshu, depois coloque uma **Célula de Armazenamento ME** compatível com o tipo de semente dentro dele. Os 10 slots do Armazenamento de Sementes aceitam apenas células de armazenamento; itens-semente não podem ser inseridos diretamente.

Após instalar a célula, selecione **Reabastecer Sementes** na página de circuito fechado. O terminal calcula a exigência armazenada de cada padrão de circuito fechado habilitado e transfere as sementes faltantes da rede ME atual para o Armazenamento de Sementes:

* **A rede ME não tem sementes:** A rede atual não contém o item ou fluido listado em quantidade suficiente. Adicione-o à rede e tente de novo.
* **O armazenamento de sementes não aceita sementes:** Nenhuma célula de armazenamento adequada está instalada, ou sua capacidade de bytes/tipos está cheia, ou uma partição rejeita a semente.
* **Reabastecimento de sementes incompleto:** Os dois tipos de problema estão presentes. Passe o cursor sobre o texto de status para ver o motivo e a quantidade de cada semente.
* **Sementes prontas:** A exigência armazenada está satisfeita e as tarefas de fabricação de circuito fechado correspondentes podem começar.

Membros também podem ser preenchidos inteiramente à mão quando não existe candidato automático. Um padrão de circuito fechado codificado pode ser reinserido para carregá-lo para edição; codificar de novo atualiza o padrão original. Um padrão de circuito fechado pode ser aninhado como membro de outro ciclo; ele é achatado durante a codificação, e o total de membros achatados ainda não pode exceder 27.

A linha de status reporta o motivo específico pelo qual um rascunho não pode ser codificado — por exemplo, um padrão membro ilegível, razões de cópias não mínimas, uma saída primária ausente, ou um ciclo cujas entradas e saídas não se equilibram.

<a name="inventory-maintenance"></a>

## Manutenção de Estoque

Quando um Vetor de Supercomputação Tianshu formado está disponível na rede, o terminal pode configurar regras automáticas de reposição por item: a fabricação começa quando a quantidade armazenada cai **abaixo** do limite inferior, para quando **atinge** o limite superior, e cada tarefa solicita o tamanho de lote configurado.

### Configuração

* Dê **Shift + botão do meio** num item fabricável no terminal para abrir seu editor de Manutenção de Estoque, que funciona de forma parecida com um Solicitador ME.
* O botão **Manutenção de Estoque** abre uma visão geral listando cada entrada configurada, incluindo materiais cujo estoque atual é zero. Clique numa entrada para editar sua regra.
* A visão **Mantível** filtra a lista do terminal para os materiais configurados para manutenção de estoque, facilitando revê-los juntos.

* **Iniciar abaixo de:** Inicia a fabricação automática quando o material cai abaixo do valor configurado.
* **Parar acima de:** Para a fabricação automática quando o material sobe acima do valor configurado.
* **Por tarefa:** Define a quantidade solicitada por cada tarefa de fabricação automática.
* **Habilitado:** Habilita ou desabilita a regra de manutenção deste material.
* **Verificar agora:** Verifica imediatamente o estoque deste material.
* **Cancelar tarefa:** Cancela a tarefa de fabricação automática em execução.
* **Topologia de fabricação:** Configura a retenção de materiais para que os materiais especificados permaneçam em estoque.

Clique em qualquer entrada em **Topologia de fabricação** para definir quanto daquele material as tarefas de manutenção não podem consumir. Alterne de **Global Tianshu** para **Adicional da regra** para configurar uma reserva extra para esta regra. Uma reserva específica da regra só muda a proteção efetiva quando é maior que a reserva global correspondente; veja "Reservas Globais" abaixo.

> Materiais configurados mostram um marcador colorido nos terminais Tianshu: cinza significa regra desabilitada, verde significa meta de estoque satisfeita, laranja significa regra ociosa ou fabricando, e vermelho indica materiais faltantes.

<a name="global-reserves"></a>

## Reservas Globais

Uma reserva global protege uma quantidade de um item das tarefas automáticas de manutenção. Tarefas de fabricação solicitadas pelo jogador ainda podem usar esse estoque protegido.
Use a caixa de pesquisa para encontrar conteúdo armazenado na rede e clique num item para configurá-lo. Itens também podem ser arrastados do JEI ou EMI para o alvo no canto inferior esquerdo.
**Correspondência exata** protege apenas a variante de componente selecionada, incluindo propriedades como durabilidade e encantamentos. **Ignorar componentes** agrupa todas as variantes com o mesmo ID de item.
**Reserva** define a quantidade protegida. Defina-a como `-1` para reservar todo o estoque existente.

Se a visão geral virar uma página de recuperação, zere ou apague as entradas antigas uma a uma para revelar as entradas restantes.

<a name="settings"></a>

## Ajustes do Terminal

**Ajustes do Terminal → Ajustes Tianshu** abre esta página. Terminais com fio e sem fio compartilham estes ajustes.

### Ajustes do Terminal de Codificação

* **Gatilho de envio:** Por padrão, a codificação envia a menos que Shift esteja pressionado. Outras opções enviam segurando Shift, Ctrl ou Alt, ou exigem envio manual.
* **Interceptar codificação duplicada:** Habilitada por padrão. Codificar com envio é bloqueado se a rede já contém o mesmo padrão. Com o gatilho padrão, segure Shift para pular o envio e a interceptação de duplicatas.

### Ingredientes Sem Fio do JEI

Habilite **ingredientes sem fio do JEI** (desligado por padrão), depois carregue um terminal Tianshu sem fio energizado e conectado no seu inventário ou no Curios. Ao transferir uma receita para uma bancada ou máquina com suporte a transferência do JEI, os itens faltantes são fornecidos pela rede. Módulos Tianshu num Terminal Universal Sem Fio também funcionam.

Mantenha espaço livre no inventário para os ingredientes. Um clique normal preenche uma receita; Shift preenche em massa. Apenas itens são fornecidos. Se a transferência falhar ou você fechar a tela, os itens extraídos permanecem no seu inventário.
