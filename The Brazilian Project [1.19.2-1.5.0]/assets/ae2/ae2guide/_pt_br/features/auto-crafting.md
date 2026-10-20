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

Gerencia uma única tarefa de fabricação automática do início ao fim; é construída com várias unidades de fabricação.

Para ser uma CPU de fabricação válida, duas regras devem ser atendidas:

1. A CPU deve ser um cuboide, composto completamente das peças listadas acima; ar ou outros blocos não são válidos.
2. A CPU deve conter pelo menos 1 componente de armazenamento.

A CPU de fabricação, como multibloco, só exige um único canal para a
estrutura inteira. Co-processadores de fabricação aumentam o número de tarefas que a
CPU de fabricação pode executar de uma vez; sem co-processadores, a CPU de fabricação só
executa uma tarefa por vez. Os requisitos de armazenamento são moderadamente
complicados e não seguem a matemática usual de armazenamento ME, mas, como primeira
aproximação, você vai precisar de pouco mais de um byte por item de entrada, item de
saída ou operação.

Você pode nomear suas CPUs de Fabricação nomeando qualquer uma das unidades de fabricação que a compõem com
um <ItemLink id="inscriber"/> ou uma Bigorna.

Para fornecer padrões às CPUs de fabricação automática você pode usar <ItemLink id="interface"/>
ou <ItemLink id="level_emitter"/>.

### Componentes

#### Unidade de Fabricação

![Uma imagem de várias unidades de fabricação numa CPU de fabricação.](../assets/large/craftingunit.png)

Este bloco em particular não fornece nenhum recurso adicional à CPU, mas pode ser usado como bloco de "preenchimento".
Ele é a base para fabricar os outros componentes funcionais de uma CPU de fabricação.

#### Armazenamento de Fabricação

![Uma imagem de uma unidade de armazenamento de fabricação de 1k.](../assets/large/crafting1k.png)

Fornece 1024 bytes de armazenamento para fabricação.

<RecipeFor id="1k_crafting_storage" />

![Uma imagem de uma unidade de armazenamento de fabricação de 4k.](../assets/large/crafting4k.png)

Fornece 4.096 bytes de armazenamento para fabricação.

<RecipeFor id="4k_crafting_storage" />

![Uma Unidade de Armazenamento de Fabricação de 16k.](../assets/large/crafting16k.png)

Fornece 16.384 bytes de armazenamento para fabricação.

<RecipeFor id="16k_crafting_storage" />

![Uma imagem de uma Unidade de Armazenamento de Fabricação de 64k](../assets/large/crafting64k.png)

Fornece 65.536 bytes de armazenamento para fabricação.

<RecipeFor id="64k_crafting_storage" />

#### Co-processador

<FloatingImage src="../assets/large/craftingco.png" align="left" alt="Uma imagem de vários Co-processadores numa CPU de Fabricação" />
Fornece entrega adicional de itens da CPU para o <ItemLink id="pattern_provider"/> durante a
fabricação.

Isso pode ser usado para manter mais montadores ativos em paralelo na tarefa, e
assim aumentar a velocidade geral de fabricação. Eles só ajudam se a sua montagem tem etapas
devidamente separadas, de modo que o sistema possa executar várias tarefas em paralelo, ou até
dividir o mesmo padrão entre várias interfaces.

<RecipeFor id="crafting_accelerator" />

<br clear="all" />

#### Monitor de Fabricação

![Uma imagem de um monitor de fabricação dentro de uma CPU de Fabricação.](../assets/large/craftingmonitor.png)

Mostra a tarefa de nível superior e seu progresso atual, para que você veja no que uma determinada CPU de Fabricação está
trabalhando.

<RecipeFor id="crafting_monitor" />

## Provedor de Padrões

As receitas precisam ser codificadas em padrões para serem usadas pelas CPUs de fabricação. Os padrões codificados precisam ser colocados
em provedores de padrões na mesma rede da própria CPU de Fabricação. Quando a CPU de fabricação então
precisar fabricar o resultado principal daquele padrão, ela delegará isso ao
provedor de padrões. Normalmente, o provedor de padrões empurrará os
ingredientes para um bloco adjacente (um <ItemLink id="molecular_assembler"/> para receitas de fabricação, por exemplo),
e a fabricação continua assim que o resultado entra na rede novamente.
Isso pode ser feito empurrando o resultado da fabricação de volta para o provedor de padrões,
uma <ItemLink id="interface" /> ou qualquer outro meio que importe o resultado da fabricação para a rede. Montadores
moleculares são espertos o bastante para devolver automaticamente o resultado da fabricação ao mesmo provedor de padrões que forneceu
os ingredientes.

<RecipeFor id="pattern_provider" />
<RecipeFor id="cable_pattern_provider" />

### Padrão em Branco

Um padrão em branco, uma vez codificado como um <ItemLink id="crafting_pattern"/>
ou <ItemLink id="processing_pattern"/>, é usado para controlar a
fabricação ao ser inserido em <ItemLink id="molecular_assembler"/> e <ItemLink
id="pattern_provider"/>.

Padrões podem ser codificados no <ItemLink id="pattern_encoding_terminal" />.

<RecipeFor id="blank_pattern" />

### Padrões de Fabricação

Versão codificada do <ItemLink id="blank_pattern"/> criada usando
o <ItemLink id="pattern_encoding_terminal"/> no "Modo de Fabricação".

Receitas de fabricação são muito específicas e têm automaticamente uma saída
associada; elas são necessárias para funcionar com um <ItemLink
id="molecular_assembler"/>.

A descrição de um padrão de fabricação começa com "Crafts" (Fabrica).

### Receitas de Processamento

Versão codificada do <ItemLink id="blank_pattern"/> criada usando
o <ItemLink id="pattern_encoding_terminal"/> no "Modo de Processamento".

Receitas de processamento não são receitas de fabricação: elas não têm regras para suas
entradas ou saídas, e são usadas para coisas como máquinas ou fornalhas. Elas
suportam até 9 entradas diferentes e até 3 saídas diferentes (essas
saídas não podem ser por chance aleatória; cada saída ainda deve ter 100% de chance).

A descrição de um padrão de processamento começa com "Creates" (Cria).
