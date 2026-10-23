---
navigation:
  title: Fornecedor de Padrões ME de Sobrecarga
  icon: ae2lt:overloaded_pattern_provider
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_pattern_provider
  - ae2lt:overloaded_pattern_provider_upgrade
  - ae2lt:overload_pattern
  - ae2lt:overload_pattern_encoder
  - ae2lt:overloaded_wireless_connect_tool
---

# Fornecedor de Padrões ME de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overloaded_pattern_provider" scale="4" />
</Row>

O **Fornecedor de Padrões ME de Sobrecarga** é a versão melhorada do <ItemLink id="ae2:pattern_provider" /> do vanilla, com **36 slots de padrões** e um **modo sem fio** para despachar materiais a máquinas remotas a distância.

## Recursos Centrais

* **36 slots de padrões** (o vanilla tem 9)
* **Dois modos de operação**: Normal e Sem Fio
* **Suporte a Padrões de Sobrecarga**: funciona com padrões do vanilla, além dos Padrões de Sobrecarga deste mod
* **Retorno automático**: puxa automaticamente as saídas processadas de volta das máquinas remotas
* **Filtro de importação**: só permite de volta à rede ME os resultados definidos pelo padrão
* **Duplicação adaptativa**: despacha várias cópias de receita de uma única solicitação de fabricação

## Melhoria no Lugar

<ItemImage id="ae2lt:overloaded_pattern_provider_upgrade" scale="2" float="left" />

Use uma **Melhoria do Provedor de Padrões Sobrecarregado** num fornecedor colocado e configurado para convertê-lo no lugar preservando seus padrões, prioridade, ajustes de redstone/bloqueio e orientação. Os seguintes blocos são suportados:

* Fornecedor de Padrões do AE2
* Fornecedor de Padrões Expandido do ExtendedAE
* Fornecedor de Padrões Avançado do AdvancedAE
* Fornecedor de Padrões Avançado Expandido do AdvancedAE

Cada conversão consome um item de melhoria. Fabrique a melhoria a partir de um Fornecedor de Padrões ME de Sobrecarga e um lingote:

<RecipeFor id="ae2lt:overloaded_pattern_provider_upgrade" />

## Modos de Operação

### Modo Normal

No Modo Normal, o Fornecedor de Padrões ME de Sobrecarga empurra materiais para máquinas **fisicamente adjacentes**, idêntico ao Fornecedor de Padrões do vanilla. A principal diferença é o maior número de slots de padrões.
~~Então por que não usar uma Interface Expandida?~~

### Modo Sem Fio

<ItemImage id="ae2lt:overloaded_wireless_connect_tool" scale="2" float="left" />

No Modo Sem Fio, o Fornecedor de Padrões ME de Sobrecarga pode despachar materiais a máquinas remotas a distância. Use a **Ferramenta de Conexão Sem Fio de Sobrecarga** para estabelecer conexões sem fio:

1. Segure a Ferramenta de Conexão Sem Fio de Sobrecarga e **clique com o botão direito** no Fornecedor de Padrões ME de Sobrecarga para selecioná-lo
2. Clique com o botão direito numa face específica da máquina alvo para conectar
3. Um fornecedor pode se vincular a várias máquinas remotas

Vínculos sem fio devem estar na mesma dimensão e dentro de **128 blocos** por padrão. O limite de distância é configurável; defini-lo como 0 desativa o limite. Um fornecedor pode armazenar até **1.024** conexões sem fio. Segure **Ctrl** ao clicar com o botão direito num alvo para alternar em lote máquinas contíguas do mesmo tipo.

Com as conexões feitas, o fornecedor despacha materiais às máquinas remotas conforme a estratégia de distribuição selecionada.

O fornecedor trata todas as máquinas vinculadas como o mesmo tipo de máquina de processamento. Ele não consegue despachar para os múltiplos barramentos ou escotilhas de entrada de máquinas multibloco como as do MI, e não consegue dividir automaticamente o conteúdo de um padrão entre recipientes diferentes; fazer isso pode travar a fabricação.

### Estratégias de Distribuição

| Estratégia | Descrição |
|----------|-------------|
| Round Robin | Despacha para uma máquina remota por vez, em ordem |
| Distribuição Equilibrada | Distribui materiais uniformemente entre todas as máquinas remotas conectadas |

## Interface e Ajustes Avançados

A barra de ferramentas à esquerda na tela principal contém controles de modo de operação, modo de retorno, duplicação adaptativa e modo de bloqueio. Selecione o botão de engrenagem para abrir os **Ajustes Avançados**, que contêm:

* Estratégia de despacho sem fio: Round Robin / Distribuição Equilibrada
* Velocidade de sonda sem fio: Normal / Rápida
* Filtragem de entrada: OFF / ON

Os ajustes de despacho sem fio e de sonda só têm efeito no Modo Sem Fio.

## Duplicação Adaptativa

A Duplicação Adaptativa fica desabilitada por padrão. Quando habilitada e uma solicitação de fabricação contém várias cópias do mesmo padrão, o primeiro despacho começa pequeno e aumenta gradualmente o número de cópias enviadas de uma vez. Para cada alvo e padrão, despachos posteriores partem do último lote que entrou completamente sem estouro, repetem esse lote uma vez e então continuam dobrando. Se o lote inicial for rejeitado, o fornecedor o divide pela metade até um lote ter sucesso; estouro mantém o comportamento normal de envio pendente e reduz o próximo lote inicial.

Antes de habilitá-la, garanta que o alvo consegue comportar e processar corretamente várias cópias de receita de uma vez. Algumas máquinas ou layouts de entrada não suportam ingredientes em lote e podem misturar receitas ou travar a fabricação; desabilite a Duplicação Adaptativa nesses casos.

Quando desabilitada, cada envio manda apenas uma cópia de receita. Padrões direcionais e padrões que não podem empurrar entradas a um inventário externo não usam a Duplicação Adaptativa.

## Modo de Bloqueio

| Modo | Descrição |
|------|-------------|
| OFF | Não inspeciona o alvo quanto a entradas de padrões |
| Normal | Pausa o despacho enquanto o alvo ainda contém uma entrada usada por qualquer padrão carregado |
| Continuar Mesmo Padrão | Permite outro despacho quando o mesmo padrão foi o último enviado com sucesso àquele alvo; outros padrões permanecem bloqueados |

Use Continuar Mesmo Padrão quando uma máquina consegue segurar com segurança várias cópias de uma receita. Se ela precisa terminar uma cópia antes de receber a próxima, use o bloqueio Normal.

## Modo de Retorno

O modo de retorno determina como a saída processada é recuperada das máquinas remotas:

| Modo | Descrição |
|------|-------------|
| OFF | Sem retorno automático |
| AUTO | Puxa ativamente a saída de volta das máquinas remotas |
| EJECT | Máquinas remotas empurram a saída para o slot de saída virtual; o fornecedor a aceita passivamente |

Antes do AUTO despachar novo trabalho a um alvo, o fornecedor puxa a saída concluída
daquele alvo uma vez no tick atual do servidor. Isso impede que um slot de saída
cheio da máquina bloqueie o próximo despacho. Uma varredura de segurança em todo o
fornecedor verifica todos os alvos vinculados a cada 20 ticks. Varreduras totalmente
ociosas recuam para 40, 80 e finalmente 128 ticks; atividade de despacho ou saída
correspondente restaura o intervalo de 20 ticks. O EJECT permanece puramente passivo.

## Tier de Velocidade

| Velocidade | Descrição |
|-------|-------------|
| Normal | Recarga padrão (5 ~ 80 ticks) |
| Rápida (Sonda) | Recarga adaptativa; usa uma mecânica de sonda para detectar prontidão antecipadamente (1 ~ 40 ticks) |

O tier de velocidade afeta apenas a retentativa/sondagem de despacho. O retorno de saída
AUTO usa a varredura de todo o fornecedor descrita acima.

## Custo de Energia ME

Despachar materiais e devolver produtos consome energia da rede ME. Para grandes lotes de fabricação, garanta que a rede tenha um buffer de energia AE grande o bastante; se a energia for insuficiente, o fornecedor espera até haver mais energia disponível.

O Modo Sem Fio, vínculos sem fio e a sondagem Rápida também aumentam o consumo de energia em repouso.

## Filtro de Importação

Com a "Importação Filtrada" desabilitada, o AUTO puxa todo item, fluido ou outro recurso que a face conectada permita extrair, incluindo subprodutos ausentes dos padrões. Também funciona sem padrões instalados. Entradas ou catalisadores também serão puxados de volta se a máquina permitir extraí-los daquela face.

O modo normal segue a direção do fornecedor; o modo de todos os lados verifica cada face adjacente ativa e também pode puxar células de armazenamento de um Drive ME vizinho. Use uma chave-inglesa para apontar a uma única máquina quando ela for o alvo pretendido. O modo sem fio segue a face de máquina vinculada de cada conexão.

Com a "Importação Filtrada" habilitada, tanto a extração AUTO quanto os retornos passivos só aceitam saídas listadas nos padrões carregados; sem saídas de padrão não há retorno. Padrões de sobrecarga retêm o ajuste de correspondência exata ou só-por-ID de cada saída.

## Padrão de Sobrecarga e Codificador de Padrões de Sobrecarga

<Row>
  <ItemImage id="ae2lt:overload_pattern" scale="2" />
  <ItemImage id="ae2lt:overload_pattern_encoder" scale="2" />
</Row>

O **Padrão de Sobrecarga** é um padrão especial, **usável apenas no Fornecedor de Padrões ME de Sobrecarga**. Use o **Codificador de Padrões de Sobrecarga** para codificá-lo.

O Codificador de Padrões de Sobrecarga suporta:

* Definir entrada primária e saída primária
* Definir subprodutos
* Um interruptor **Ignorar NBT**: quando habilitado, a correspondência de itens ignora dados de NBT

## Dicas de Automação

* Em grandes sistemas de fabricação automatizada, o Modo Sem Fio pode reduzir drasticamente a complexidade de tubulação
* Combinado com a estratégia de Distribuição Equilibrada e várias máquinas de processamento, ele viabiliza fabricação paralela sem tubos de itens extras
* Habilite o tier de velocidade Rápida para melhor responsividade
* Escolha o modo de retorno adequado ao cenário de automação específico
* Combine a Duplicação Adaptativa com várias máquinas equivalentes para processar grandes solicitações
* Desabilite a Duplicação Adaptativa quando um alvo tem pouco espaço de entrada ou não aceita ingredientes em lote
