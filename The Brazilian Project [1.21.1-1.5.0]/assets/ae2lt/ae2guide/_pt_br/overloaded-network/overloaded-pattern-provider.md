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

O **Fornecedor de Padrões ME de Sobrecarga** é a versão aprimorada do <ItemLink id="ae2:pattern_provider" /> vanilla, com **36 espaços de padrões** e um **modo sem fio** para despachar materiais a máquinas remotas a distância.

## Recursos Centrais

* **36 espaços de padrões** (o vanilla tem 9)
* **Dois modos de operação**: Normal e Sem Fio
* **Suporte a Padrão de Sobrecarga**: funciona com padrões vanilla, além dos Padrões de Sobrecarga deste mod
* **Retorno automático**: puxa automaticamente as saídas processadas de volta das máquinas remotas
* **Filtro de importação**: só permite de volta à rede ME os resultados definidos pelo padrão
* **Duplicação adaptativa**: despacha várias cópias de receita de uma única solicitação de fabricação

## Melhoria no Lugar

<ItemImage id="ae2lt:overloaded_pattern_provider_upgrade" scale="2" float="left" />

Use uma **Melhoria do Provedor de Padrões Sobrecarregado** num fornecedor já colocado e configurado para convertê-lo no lugar, preservando seus padrões, prioridade, configurações de redstone/bloqueio e orientação. Os seguintes blocos são suportados:

* Fornecedor de Padrões de AE2
* Fornecedor de Padrões Estendido do ExtendedAE
* Fornecedor de Padrões Avançado do AdvancedAE
* Fornecedor de Padrões Estendido Avançado do AdvancedAE

Cada conversão consome um item de melhoria. Fabrique a melhoria a partir de um Fornecedor de Padrões ME de Sobrecarga e um lingote:

<RecipeFor id="ae2lt:overloaded_pattern_provider_upgrade" />

## Modos de Operação

### Modo Normal

No Modo Normal, o Fornecedor de Padrões ME de Sobrecarga empurra materiais para máquinas **fisicamente adjacentes**, idêntico ao Fornecedor de Padrões vanilla. A principal diferença é o número maior de espaços de padrões.
~~Então por que não usar uma Interface Estendida?~~

### Modo Sem Fio

<ItemImage id="ae2lt:overloaded_wireless_connect_tool" scale="2" float="left" />

No Modo Sem Fio, o Fornecedor de Padrões ME de Sobrecarga pode despachar materiais a máquinas remotas a distância. Use a **Ferramenta de Conexão Sem Fio de Sobrecarga** para estabelecer conexões sem fio:

1. Segure a Ferramenta de Conexão Sem Fio de Sobrecarga e clique com o **botão direito** no Fornecedor de Padrões ME de Sobrecarga para selecioná-lo
2. Clique com o botão direito numa face específica da máquina alvo para conectar
3. Um fornecedor pode se vincular a várias máquinas remotas

Os vínculos sem fio precisam estar na mesma dimensão e a até **128 blocos** por padrão. O limite de distância é configurável; defini-lo como 0 desativa o limite. Um fornecedor pode armazenar até **1.024** conexões sem fio. Segure **Ctrl** ao clicar com o botão direito num alvo para alternar em lote máquinas contíguas do mesmo tipo.

Com as conexões estabelecidas, o fornecedor despacha materiais às máquinas remotas conforme a estratégia de distribuição selecionada.

O fornecedor trata todas as máquinas vinculadas como o mesmo tipo de máquina de processamento. Ele não pode despachar para os múltiplos barramentos ou entradas de máquinas multibloco como as do MI, e não pode dividir automaticamente o conteúdo de um padrão entre contêineres diferentes; fazer isso pode travar a fabricação.

### Estratégias de Distribuição

| Estratégia | Descrição |
|----------|-------------|
| Round Robin | Despacha para uma máquina remota por vez, em ordem |
| Distribuição Equilibrada | Distribui os materiais igualmente entre todas as máquinas remotas conectadas |

## Interface e Configurações Avançadas

A barra de ferramentas à esquerda na tela principal contém controles para modo de operação, modo de retorno, duplicação adaptativa e modo de bloqueio. Selecione o botão de engrenagem para abrir as **Configurações Avançadas**, que contêm:

* Estratégia de despacho sem fio: Round Robin / Distribuição Equilibrada
* Velocidade de sonda sem fio: Normal / Rápida
* Filtragem de entrada: DESLIGADA / LIGADA

As configurações de despacho e sonda sem fio só têm efeito no Modo Sem Fio.

## Duplicação Adaptativa

A Duplicação Adaptativa fica desativada por padrão. Quando ativada e uma solicitação de fabricação contém várias cópias do mesmo padrão, o primeiro despacho começa pequeno e aumenta gradualmente o número de cópias enviadas de uma vez. Para cada alvo e padrão, os despachos seguintes partem do último lote que entrou completamente sem estouro, repetem esse lote uma vez e depois continuam dobrando. Se o lote inicial for rejeitado, o fornecedor o reduz pela metade até que um lote tenha sucesso; o estouro mantém o comportamento normal de envio pendente e reduz o próximo lote inicial.

Antes de ativá-la, garanta que o alvo consegue comportar e processar corretamente várias cópias de receita de uma vez. Algumas máquinas ou layouts de entrada não suportam ingredientes em lote e podem misturar receitas ou travar a fabricação; desative a Duplicação Adaptativa nesses casos.

Quando desativada, cada envio manda apenas uma cópia da receita. Padrões direcionais e padrões que não conseguem empurrar entradas para um inventário externo não usam a Duplicação Adaptativa.

## Modo de Bloqueio

| Modo | Descrição |
|------|-------------|
| DESLIGADO | Não inspeciona o alvo quanto a entradas de padrões |
| Normal | Pausa o despacho enquanto o alvo ainda contém uma entrada usada por qualquer padrão carregado |
| Continuar Mesmo Padrão | Permite outro despacho quando o mesmo padrão foi o último enviado com sucesso àquele alvo; outros padrões continuam bloqueados |

Use Continuar Mesmo Padrão quando uma máquina puder comportar com segurança várias cópias de uma receita. Se ela precisar terminar uma cópia antes de receber a próxima, use o bloqueio Normal.

## Modo de Retorno

O modo de retorno determina como a saída processada é recuperada das máquinas remotas:

| Modo | Descrição |
|------|-------------|
| DESLIGADO | Sem retorno automático |
| AUTO | Puxa ativamente a saída de volta das máquinas remotas |
| EJECT | As máquinas remotas empurram a saída para o espaço de saída virtual; o fornecedor a aceita passivamente |

Antes que o AUTO despache novos trabalhos a um alvo, o fornecedor puxa a saída concluída
daquele alvo uma vez no tique atual do servidor. Isso evita que um espaço de saída de máquina
cheio bloqueie o próximo despacho. Uma varredura de segurança do fornecedor verifica
todos os alvos vinculados a cada 20 tiques. Varreduras totalmente ociosas recuam para 40, 80 e
finalmente 128 tiques; atividade de despacho ou saída correspondente restaura o intervalo
de 20 tiques. O EJECT permanece puramente passivo.

## Nível de Velocidade

| Velocidade | Descrição |
|-------|-------------|
| Normal | Recarga padrão (5 ~ 80 tiques) |
| Rápida (Sonda) | Recarga adaptativa; usa uma mecânica de sonda para detectar prontidão cedo (1 ~ 40 tiques) |

O nível de velocidade afeta apenas a repetição/sondagem de despacho. O retorno de saída AUTO usa a
varredura do fornecedor descrita acima.

## Custo de Energia ME

Despachar materiais e retornar produtos consome energia da rede ME. Para grandes lotes de fabricação, garanta que a rede tenha um buffer de energia AE grande o suficiente; se a energia for insuficiente, o fornecedor espera até haver mais energia disponível.

O Modo Sem Fio, os vínculos sem fio e a sondagem Rápida também aumentam o consumo em repouso.

## Filtro de Importação

Com a "Importação Filtrada" desativada, o AUTO puxa todo item, fluido ou outro recurso que a face conectada permite extrair, incluindo subprodutos ausentes dos padrões. Também funciona sem nenhum padrão instalado. Entradas ou catalisadores também serão puxados de volta se a máquina permitir extraí-los daquela face.

O modo normal segue a orientação do fornecedor; o modo todos-os-lados verifica cada face adjacente ativa e também pode puxar células de armazenamento de um Gabinete ME vizinho. Use uma chave inglesa para virar a face para uma única máquina quando ela for o alvo pretendido. O modo sem fio segue a face de máquina vinculada de cada conexão.

Com a "Importação Filtrada" ativada, tanto a extração AUTO quanto os retornos passivos só aceitam saídas listadas nos padrões carregados; sem saídas de padrão não há retorno. Os padrões de sobrecarga mantêm a configuração de casamento exato ou só por ID de cada saída.

## Padrão de Sobrecarga e Codificador de Padrões de Sobrecarga

<Row>
  <ItemImage id="ae2lt:overload_pattern" scale="2" />
  <ItemImage id="ae2lt:overload_pattern_encoder" scale="2" />
</Row>

O **Padrão de Sobrecarga** é um padrão especial, **usável apenas no Fornecedor de Padrões ME de Sobrecarga**. Use o **Codificador de Padrões de Sobrecarga** para codificá-lo.

O Codificador de Padrões de Sobrecarga suporta:

* Definir entrada primária e saída primária
* Definir subprodutos
* Uma opção **Ignorar NBT**: quando ativada, o casamento de itens ignora dados NBT

## Dicas de Automação

* Em grandes sistemas de fabricação automatizada, o Modo Sem Fio pode reduzir drasticamente a complexidade de tubos
* Combinado com a estratégia de Distribuição Equilibrada e várias máquinas de processamento, permite fabricação paralela sem tubos de itens extras
* Ative o nível de velocidade Rápida para melhor responsividade
* Escolha o modo de retorno que combina com o cenário de automação específico
* Combine a Duplicação Adaptativa com várias máquinas equivalentes para processar grandes solicitações
* Desative a Duplicação Adaptativa quando um alvo tiver pouco espaço de entrada ou não puder aceitar ingredientes em lote
