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

O <ItemLink id="ae2lt:tianshu_pattern_encoding_terminal" /> oferece tudo que o Terminal de Codificação de Padrões normal oferece, mais codificação aprimorada de padrões de processamento, upload de padrões, autoria de padrões de circuito fechado e configuração de manutenção de inventário. Conecte-o a um cabo ME como qualquer terminal. **Codificação de padrões e upload para fornecedores não exigem um Vetor de Supercomputação Tianshu**.

<RecipeFor id="ae2lt:tianshu_pattern_encoding_terminal" />

A versão sem fio oferece os mesmos recursos de codificação e também pode ser usada como módulo de Terminal Universal Sem Fio.

<RecipeFor id="ae2lt:wireless_tianshu_pattern_encoding_terminal" />

## Modos de Codificação

O terminal oferece modos de fabricação, processamento, corte em pedra, ferraria e **Padrão de Circuito Fechado**.

## Vinculando a um Tianshu

Apenas dois recursos exigem um Vetor de Supercomputação Tianshu formado: fazer upload de padrões de circuito fechado para o Armazenamento de Padrões de Circuito Fechado, e a manutenção de inventário. Quando um Tianshu existe na rede, o terminal aberto trava no primeiro formado disponível; se nenhum estiver disponível ainda, ele trava no primeiro Tianshu que ficar online.

O terminal nunca revincula a um Tianshu diferente enquanto permanece aberto. Se o Tianshu travado ficar offline ou se desformar, as ações relacionadas simplesmente falham; feche e reabra o terminal para escolher um alvo novamente.

O Armazenamento de Padrões de Circuito Fechado instalado nas posições compatíveis com resfriamento do Tianshu vinculado aparece como um inventário de padrões extra na lista de conteúdo da rede do terminal. A entrada é exibida apenas enquanto a estrutura está formada e sua porta está online. Cada Armazenamento de Padrões de Circuito Fechado fornece **36** espaços de padrões de circuito fechado, e armazenamentos instalados se somam. Padrões de circuito fechado podem ser retirados da lista para inspeção ou edição; devolvê-los ao armazenamento exige a função de upload do terminal.

<a name="processing-patterns"></a>

## Padrões de Processamento Aprimorados

No modo de processamento o terminal adiciona:

* **Botões de multiplicador:** Multiplicam ou dividem todas as quantidades de entrada e saída por 2 ou 5; segure Shift para 4 ou 10 para reescalar uma receita em lotes inteiros.
* **Codificação avançada** (requer AdvancedAE): Configure um lado de inserção para cada entrada; uma vez configurada, a codificação produz um padrão avançado.
* **Codificação de sobrecarga:** Escolha um modo de casamento para cada entrada e saída — “Estrito” exige dados NBT de item idênticos, “Somente ID” ignora diferenças de NBT e casa apenas pelo item. Uma vez configurada, a codificação produz um padrão de sobrecarga.

Codificação avançada e de sobrecarga podem ser combinadas. As configurações são salvas com a receita atual e podem ser reutilizadas para codificação repetida. Reconfigure após mudar entradas, saídas ou quantidades, trocar de modo, limpar a página ou redefinir o tipo de codificação.

Clique com o botão do meio num espaço de processamento para editar sua quantidade e confirmar. Defini-la como 0 limpa o espaço.

<a name="pattern-upload"></a>

## Upload de Padrões

Com um padrão no espaço de padrão codificado, o botão **Upload** o envia ao seu destino sem carregamento manual:

* **Padrões de fabricação** casam automaticamente apenas grupos de fornecedores para Montadores Moleculares, Montadores Moleculares Estendidos, Matrizes de Montagem de EAE/EAEP, Subsistemas de Fabricação ECO e Matrizes de Deformação da Matéria Tianshu. Matrizes de Deformação da Matéria têm prioridade; os outros grupos usam o primeiro espaço livre compatível em ordem estável.
* **Padrões de processamento** abrem a tela de seleção de fornecedor: todos os Fornecedores de Padrões visíveis na rede são listados agrupados por nome, mostrando contagens de fornecedores e espaços livres por grupo, com busca por nome, item ou tooltip.
* **Padrões de circuito fechado** são enviados ao Armazenamento de Padrões de Circuito Fechado do Tianshu vinculado.

A tela de seleção de fornecedor também suporta **mapeamentos de apelido**. Uma transferência de JEI/EMI usa o tipo de receita ou a categoria do visualizador como chave de origem; sem contexto do visualizador, a saída primária do padrão é usada. O apelido salvo vira o filtro de fornecedor para que receitas semelhantes localizem seu alvo mais rápido. A filtragem suporta casamento ancorado à esquerda por ID de item, além de casamento por conteúdo e curinga para nomes e tooltips; casamento por pinyin também está disponível quando o Just Enough Characters está instalado. Shift + botão direito numa entrada da lista vincula o nome daquela máquina como apelido diretamente.

As configurações do terminal configuram um **gatilho de upload**: segurar uma tecla escolhida (ou nenhuma tecla) durante a codificação entra automaticamente no fluxo de upload correspondente; também pode ser definido como apenas upload manual. O botão de upload manual permanece sempre disponível.

### Codificação e Upload Diretos a partir do JEI ou EMI

Prepare um padrão em branco no Terminal de Codificação de Padrões Tianshu e use qualquer modo de codificação que não seja circuito fechado. Numa página de receita do JEI ou EMI, **segure `Alt` ao transferir a receita**. Após o visualizador confirmar que a transferência teve sucesso, o terminal codifica o padrão e tenta imediatamente enviá-lo conforme seu tipo. Uma transferência falha não inicia nem codificação nem upload.

> Este atalho `Alt` pertence ao visualizador de receitas e é independente do **gatilho de upload** configurado do terminal. O gatilho de upload não precisa ser definido como `Alt`.

O resultado do upload direto depende do tipo de padrão:

* **Padrões de fabricação, corte em pedra e ferraria** seguem seu roteamento automático normal. Quando nenhuma seleção é necessária, a página de receita atual do JEI ou EMI permanece aberta e o resultado do upload aparece na barra de ação, facilitando transferências consecutivas.
* **Padrões de processamento, avançados e de sobrecarga** usam o mesmo filtro inicial da tela de seleção de fornecedor: um apelido salvo para o tipo de receita ou categoria atual tem prioridade; caso contrário, o primeiro apelido padrão fornecido pelo visualizador é usado. Se o filtro produzir exatamente um grupo candidato com espaço livre, o padrão é enviado em segundo plano e a página de receita atual permanece aberta. Nenhum candidato, múltiplos candidatos ou um único candidato cheio abrem a tela de seleção de fornecedor diretamente; voltar dela retorna ao terminal.
* **O modo de circuito fechado** não usa este atalho de upload direto. Uma transferência de JEI/EMI apenas marca a saída primária e inicia a descoberta de circuito fechado; termine de configurar, codificar e enviar o padrão de circuito fechado normalmente.

<a name="closed-loop-patterns"></a>

## Padrões de Circuito Fechado

Um padrão de circuito fechado empacota padrões encadeados numa única receita para automação que cicla ingredientes produzindo um ganho líquido, como duplicação de Moldes de Ferraria ou o loop de Quartzo Certus da Câmara de Reação do AdvancedAE. Prepare primeiro os padrões comuns que compõem o loop.

Um padrão de circuito fechado consiste em:

* **Padrões membros** (até 27): os padrões comuns que formam o loop, cada um anotado com as cópias executadas por ciclo. Todas as contagens de cópias devem formar uma razão inteira mínima; 2:4 é inválido e deve ser escrito como 1:2.

* **Saídas primária e secundárias:** Marque exatamente 1 saída primária e até 8 saídas secundárias da produção líquida do loop. A saída primária deve ter ganho líquido positivo. Por exemplo, consumir 128 Cristais de Quartzo Certus e produzir 256 é válido, assim como produzir 192 Cristais de Quartzo Certus, 16 Pós de Quartzo Certus e 16 Cristais de Quartzo Certus Carregados. Produzir apenas 64 Cristais de Quartzo Certus, 48 Pós de Quartzo Certus e 48 Cristais de Quartzo Certus Carregados tem ganho líquido negativo e não pode ser codificado. Conversões reversíveis como `1 Iron Block → 9 Iron Ingots` combinadas com `9 Iron Ingots → 1 Iron Block` também não têm ganho líquido e são rejeitadas.

* **Entradas externas:** Materiais que cada ciclo retira da rede, calculados automaticamente e exibidos como somente leitura. Água fornecida ao loop da Câmara de Reação é um exemplo.

* **Sementes:** Itens adiantados para iniciar o loop, calculados automaticamente e exibidos como somente leitura. No loop de exemplo, pelo menos 80 Cristais de Quartzo Certus — ou 16 Cristais de Quartzo Certus Carregados mais 16 Pós de Quartzo Certus — devem estar disponíveis antes que a fabricação possa começar.

Você deve fornecer os materiais necessários para iniciar o loop.

### Fluxo de Autoria

1. Alterne para o modo Padrão de Circuito Fechado e coloque — ou codifique — o padrão comum do produto primário do loop no **espaço de saída de padrão codificado** do terminal.
Para um circuito fechado de Quartzo Certus, pode ser um padrão de processamento como `16 Charged Certus Quartz Crystals + 16 Certus Quartz Dust → 64 Charged Certus Quartz Crystals`, ou um padrão de fabricação como `1 Certus Quartz Block → 4 Certus Quartz Crystals`; qualquer padrão comum cuja saída seja Quartzo Certus pode ser usado como ponto de partida.
2. Clique em **Preencher**: o terminal busca na rede combinações de padrões que fechem o loop em torno daquele produto. Quando há vários candidatos, clicar novamente alterna entre eles.
3. Abra a tela de **Detalhes** para revisar e ajustar: adicione, remova e reordene membros, edite cópias por ciclo e marque saídas primária e secundárias (clique para alternar a declaração, Shift-clique para definir a primária).
4. Ajuste os dois multiplicadores na página de configurações:
   * **Ondas de sementes por trabalho:** Quantos conjuntos de sementes um trabalho toma emprestado no início — efetivamente o paralelismo do trabalho. Valores maiores aumentam a taxa por trabalho e o adiantamento inicial.
   * **Conjuntos de tarefas armazenados:** Quantos trabalhos de sementes o Tianshu mantém pré-abastecidos — efetivamente o número de trabalhos que podem rodar em paralelo.
5. Quando o status indicar pronto para codificar, codifique para obter um <ItemLink id="ae2lt:closed_loop_pattern" />, depois envie-o ao Armazenamento de Padrões de Circuito Fechado. Autorar e codificar um padrão de circuito fechado não exige um Tianshu; porém, o padrão deve estar armazenado no Armazenamento de Padrões de Circuito Fechado de algum Tianshu antes de poder executar.

### Preparando o Armazenamento de Sementes

Para rodar um padrão de circuito fechado, instale pelo menos um Armazenamento de Padrões de Circuito Fechado e um Armazenamento de Sementes de Circuito Fechado no Vetor de Supercomputação Tianshu, depois coloque uma **Célula de Armazenamento ME** compatível com o tipo de semente dentro dele. Os 10 espaços do Armazenamento de Sementes aceitam apenas células de armazenamento; itens de semente não podem ser inseridos diretamente.

Após instalar a célula, selecione **Reabastecer Sementes** na página de circuito fechado. O terminal calcula o requisito armazenado de cada padrão de circuito fechado ativado e transfere as sementes faltantes da rede ME atual para o Armazenamento de Sementes:

* **Rede ME sem sementes:** A rede atual não contém o suficiente do item ou fluido listado. Adicione-o à rede e tente de novo.
* **Armazenamento de sementes não aceita sementes:** Nenhuma célula de armazenamento adequada instalada, ou sua capacidade de bytes/tipos está cheia, ou uma partição rejeita a semente.
* **Reabastecimento de sementes incompleto:** Os dois tipos de problema estão presentes. Passe o mouse sobre o texto de status para ver o motivo e a quantidade de cada semente.
* **Sementes prontas:** O requisito armazenado foi satisfeito e os trabalhos de fabricação de circuito fechado correspondentes podem começar.

Os membros também podem ser preenchidos inteiramente à mão quando não existe candidato automático. Um padrão de circuito fechado codificado pode ser reinserido para carregá-lo para edição; codificar de novo atualiza o padrão original. Um padrão de circuito fechado pode ele mesmo ser aninhado como membro de outro loop; ele é achatado durante a codificação, e o total de membros achatado ainda não pode exceder 27.

A linha de status reporta o motivo específico pelo qual um rascunho não pode ser codificado — por exemplo um padrão membro ilegível, razões de cópias não mínimas, uma saída primária ausente, ou um loop cujas entradas e saídas não se equilibram.

<a name="inventory-maintenance"></a>

## Manutenção de Inventário

Quando um Vetor de Supercomputação Tianshu formado está disponível na rede, o terminal pode configurar regras automáticas de reabastecimento por item: a fabricação começa quando a quantidade armazenada cai **abaixo** do limite inferior, para quando **atinge** o limite superior, e cada trabalho solicita o tamanho de lote configurado.

### Configuração

* **Shift + botão do meio** num item fabricável no terminal abre seu editor de Manutenção de Inventário, que funciona de forma parecida com um Solicitador ME.
* O botão **Manutenção de Inventário** abre uma visão geral listando cada entrada configurada, incluindo materiais cujo estoque atual é zero. Clique numa entrada para editar sua regra.
* A visão **Mantível** filtra a lista do terminal para os materiais configurados para manutenção de inventário, facilitando revisá-los juntos.

* **Iniciar abaixo de:** Inicia a fabricação automática quando o material cai abaixo do valor configurado.
* **Parar acima de:** Para a fabricação automática quando o material sobe acima do valor configurado.
* **Por trabalho:** Define a quantidade solicitada por cada trabalho de fabricação automática.
* **Ativado:** Ativa ou desativa a regra de manutenção deste material.
* **Verificar agora:** Verifica imediatamente o estoque deste material.
* **Cancelar trabalho:** Cancela o trabalho de fabricação automática em execução.
* **Topologia de fabricação:** Configura retenção de materiais para que materiais especificados permaneçam em estoque.

Clique em qualquer entrada em **Topologia de fabricação** para definir quanto daquele material os trabalhos de manutenção não podem consumir. Alterne **Tianshu global** para **Adicional da regra** para configurar uma reserva extra para esta regra. Uma reserva específica de regra só muda a proteção efetiva quando é maior que a reserva global correspondente; veja “Reservas Globais” abaixo.

> Materiais configurados mostram um marcador colorido nos terminais Tianshu: cinza significa regra desativada, verde significa alvo de estoque satisfeito, laranja significa regra ociosa ou fabricando, e vermelho indica materiais faltantes.

<a name="global-reserves"></a>

## Reservas Globais

Uma reserva global protege uma quantidade de um item dos trabalhos automáticos de manutenção. Trabalhos de fabricação solicitados pelo jogador ainda podem usar esse estoque protegido.
Use a caixa de busca para encontrar conteúdo armazenado na rede e clique num item para configurá-lo. Itens também podem ser arrastados do JEI ou EMI para o alvo no canto inferior esquerdo.
**Casamento exato** protege apenas a variante de NBT selecionada, incluindo propriedades como durabilidade e encantamentos. **Ignorar NBT** agrupa todas as variantes com o mesmo ID de item.
**Reserva** define a quantidade protegida. Defina-a como `-1` para reservar todo o estoque existente.

Se a visão geral virar uma página de recuperação, zere ou delete entradas antigas uma a uma para revelar as entradas restantes.

<a name="settings"></a>

## Configurações do Terminal

**Configurações do Terminal → Configurações do Tianshu** abre esta página. Terminais com fio e sem fio compartilham essas configurações.

### Configurações do Terminal de Codificação

* **Gatilho de upload:** Por padrão, codificar envia a menos que Shift esteja pressionado. Outras opções enviam ao segurar Shift, Ctrl ou Alt, ou exigem upload manual.
* **Interceptar codificação duplicada:** Ativado por padrão. Codificar com upload é bloqueado se a rede já contém o mesmo padrão. Com o gatilho padrão, segure Shift para pular o upload e a interceptação de duplicatas.

### Ingredientes Sem Fio do JEI

Ative **Ingredientes sem fio do JEI** (desativado por padrão), depois carregue um Terminal de Codificação de Padrões Tianshu Sem Fio energizado e conectado no seu inventário ou Curios. Ao transferir uma receita para uma bancada ou máquina com suporte a transferência do JEI, itens faltantes são fornecidos pela rede. Módulos Tianshu num Terminal Universal Sem Fio também funcionam.

Mantenha espaço livre no inventário para os ingredientes. Um clique normal preenche uma receita; Shift preenche em massa. Apenas itens são fornecidos. Se a transferência falhar ou você fechar a tela, os itens extraídos permanecem no seu inventário.
