---
navigation:
  title: Fabricação Automática
  icon: molecular_assembler
item_ids:
  - ae2:blank_pattern
  - ae2:crafting_pattern
  - ae2:processing_pattern
  - ae2:1k_crafting_storage
  - ae2:4k_crafting_storage
  - ae2:16k_crafting_storage
  - ae2:64k_crafting_storage
  - ae2:crafting_accelerator
  - ae2:crafting_monitor
  - ae2:crafting_unit
  - ae2:pattern_provider
  - ae2:cable_pattern_provider
---

## CPU de Fabricação

Gerencia uma única tarefa de fabricação automática do início ao fim, construída com várias unidades de fabricação.

Para ser uma CPU de fabricação válida, duas regras devem ser cumpridas:

1. A CPU deve ser um cuboide, totalmente composta das partes listadas acima; ar ou outros blocos não são válidos.
2. A CPU deve conter pelo menos 1 componente de armazenamento.

A CPU de fabricação, como multibloco, exige apenas um canal para a
estrutura inteira. Co-processadores de fabricação aumentam o número de tarefas que a
CPU de fabricação pode executar de uma vez; sem co-processadores, ela executa
uma única tarefa por vez. Os requisitos de armazenamento são moderadamente
complexos e não seguem a matemática usual de armazenamento ME, mas como primeira
aproximação você precisará de pouco mais de um byte por item de entrada, item de
saída ou operação.

Você pode nomear suas CPUs de Fabricação nomeando qualquer uma das unidades de fabricação que a compõem com
um <ItemLink id="inscriber"/> ou uma Bigorna.

Para fornecer padrões às CPUs de fabricação automática, você pode usar a <ItemLink id="interface"/>
ou o <ItemLink id="level_emitter"/>.

### Componentes

#### Unidade de fabricação

![Uma imagem de várias unidades de fabricação numa CPU de Fabricação.](../assets/large/craftingunit.png)

Este bloco em particular não fornece recursos adicionais à CPU, mas pode ser usado como bloco de "preenchimento".
É a base para fabricar os outros componentes funcionais de uma CPU de fabricação.

#### Armazenamento de Fabricação

![Uma imagem de uma unidade de armazenamento de fabricação 1k.](../assets/large/crafting1k.png)

Fornece 1024 bytes de armazenamento para fabricação.

<RecipeFor id="1k_crafting_storage" />

![Uma imagem de uma unidade de armazenamento de fabricação 4k.](../assets/large/crafting4k.png)

Fornece 4.096 bytes de armazenamento para fabricação.

<RecipeFor id="4k_crafting_storage" />

![Uma Unidade de fabricação 16k.](../assets/large/crafting16k.png)

Fornece 16.384 bytes de armazenamento para fabricação.

<RecipeFor id="16k_crafting_storage" />

![Uma imagem de uma Unidade de fabricação 64k](../assets/large/crafting64k.png)

Fornece 65.536 bytes de armazenamento para fabricação.

<RecipeFor id="64k_crafting_storage" />

#### Co-Processador

<FloatingImage src="../assets/large/craftingco.png" align="left" alt="A picture of several Co Processors in a Crafting CPU" />
Fornece entrega adicional de itens da CPU para o <ItemLink id="pattern_provider"/> durante a
fabricação.

Isso pode ser usado para manter mais montadores ativos em paralelo no mesmo trabalho e
assim aumentar a velocidade geral de fabricação. Eles só ajudam se a sua montagem tiver etapas
devidamente separadas, para que o sistema possa executar várias tarefas em paralelo ou até
dividir o mesmo padrão entre várias interfaces.

<RecipeFor id="crafting_accelerator" />

<br clear="all" />

#### Monitor de Fabricação

![Uma imagem de um monitor de fabricação dentro de uma CPU de Fabricação.](../assets/large/craftingmonitor.png)

Exibe o trabalho de nível mais alto e seu progresso atual, para você ver no que uma CPU de Fabricação específica está
trabalhando no momento.

<RecipeFor id="crafting_monitor" />

## Provedor de Padrões

As receitas precisam ser codificadas em padrões para serem usadas pelas CPUs de fabricação. Os padrões codificados precisam ser colocados
em provedores de padrões na mesma rede que a própria CPU de Fabricação. Quando a CPU de fabricação
precisar fabricar o resultado principal daquele padrão, ela delegará ao
provedor de padrões. Normalmente, o provedor de padrões então empurra os
ingredientes para um bloco adjacente (um <ItemLink id="molecular_assembler"/> para receitas de fabricação, por exemplo),
e a fabricação continua quando o resultado retorna à rede.
Isso pode ser feito empurrando o resultado de volta para o provedor de padrões,
uma <ItemLink id="interface" /> ou qualquer outro meio que importe o resultado para a rede. Os montadores
moleculares são espertos o suficiente para devolver automaticamente o resultado ao mesmo provedor de padrões que forneceu
os ingredientes.

<RecipeFor id="pattern_provider" />
<RecipeFor id="cable_pattern_provider" />

### Padrão em Branco

Um padrão em branco, uma vez codificado como <ItemLink id="crafting_pattern"/>
ou <ItemLink id="processing_pattern"/>, é usado para controlar
a fabricação ao ser inserido em <ItemLink id="molecular_assembler"/> e <ItemLink
id="pattern_provider"/>.

Os padrões podem ser codificados no <ItemLink id="pattern_encoding_terminal" />.

<RecipeFor id="blank_pattern" />

### Padrões de Fabricação

Versão codificada do <ItemLink id="blank_pattern"/> criada usando
o <ItemLink id="pattern_encoding_terminal"/> no "Modo de Fabricação".

Receitas de fabricação são muito específicas e têm automaticamente uma saída
associada; são necessárias para trabalhar com um <ItemLink
id="molecular_assembler"/>.

A descrição de um padrão de fabricação começa com "Crafts".

### Receitas de Processamento

Versão codificada do <ItemLink id="blank_pattern"/> criada usando
o <ItemLink id="pattern_encoding_terminal"/> no "Modo de Processamento".

Receitas de processamento não são receitas de fabricação: não têm regras para suas
entradas ou saídas e são usadas para coisas como máquinas ou fornalhas. Elas
aceitam até 9 entradas diferentes e até 3 saídas diferentes ( essas
saídas não podem ser aleatórias; cada saída ainda deve ter 100% de chance. )

A descrição de um padrão de processamento começa com "Creates".
