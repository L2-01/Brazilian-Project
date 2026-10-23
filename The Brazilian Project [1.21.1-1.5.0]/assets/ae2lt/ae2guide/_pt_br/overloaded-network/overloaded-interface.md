---
navigation:
  title: Interface ME de Sobrecarga
  icon: ae2lt:overloaded_interface
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_interface
  - ae2lt:overloaded_filter_component
---

# Interface ME de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overloaded_interface" scale="4" />
</Row>

A **Interface ME de Sobrecarga** é a versão melhorada da <ItemLink id="ae2:interface" /> do vanilla, com **36 slots de configuração** e um **modo sem fio** para transferência de itens e distribuição de energia a longa distância.

## Recursos Centrais

* **36 slots de configuração** (o vanilla tem 9)
* **Dois modos de operação**: Normal e Sem Fio
* **Slots de modo ilimitado**: slots individuais podem ser alternados para fornecimento ilimitado
* **Duas velocidades de E/S**: Normal e Rápida (Sonda)
* **Transferência de energia**: pode rotear FE armazenado na rede ME para máquinas adjacentes ou conectadas sem fio
* **Filtragem de importação**: usa o Componente de Filtro Sobrecarregado para restringir quais itens podem ser importados

## Modos de Operação

### Modo Normal

No Modo Normal, a Interface ME de Sobrecarga comporta-se como a interface do vanilla — mantém estoque conforme a configuração e envia itens a um recipiente fisicamente adjacente. As diferenças são mais slots de configuração e maior largura de banda de transferência.

Se uma direção de saída de energia for configurada, o Modo Normal também pode rotear FE da rede ME para um dispositivo adjacente naquele lado.

### Modo Sem Fio

No Modo Sem Fio, a Interface ME de Sobrecarga pode gerenciar entrada, saída e fornecimento de energia de várias máquinas remotamente.

Use a **Ferramenta de Conexão Sem Fio de Sobrecarga** para estabelecer conexões sem fio:

1. Segure a ferramenta e **clique com o botão direito** na Interface ME de Sobrecarga para selecioná-la
2. Clique com o botão direito numa face específica da máquina alvo para conectar
3. Uma interface pode se vincular a várias máquinas remotas

Vínculos sem fio devem estar na mesma dimensão e dentro de **128 blocos** por padrão. O limite de distância é configurável; defini-lo como 0 desativa o limite. Uma interface pode armazenar até **1.024** conexões de faces sem fio, e faces diferentes do mesmo alvo podem ser vinculadas separadamente. Segure **Ctrl** ao clicar com o botão direito num alvo para alternar em lote máquinas contíguas do mesmo tipo.

## Modos de Importação / Exportação

| Modo | Descrição |
|------|-------------|
| Exportar: OFF | Não exporta itens para máquinas remotas |
| Exportar: AUTO | Exporta itens automaticamente para máquinas remotas conforme a configuração dos slots |
| Importar: OFF | Não importa itens de máquinas remotas |
| Importar: AUTO | Importa itens continuamente de máquinas remotas para a rede ME |
| Importar: EJECT | Máquinas remotas empurram itens para o slot de entrada virtual; a interface os aceita passivamente |

Quando o Modo Sem Fio está desabilitado, esses interruptores fazem a interface tentar empurrar para ou retirar de recipientes adjacentes automaticamente.

## Velocidade de E/S

| Tier de Velocidade | Faixa de Recarga Adaptativa | Descrição |
|------------|-------------------------|-------------|
| Normal | 5 ~ 80 ticks | Adequada para uso geral |
| Rápida (Sonda) | 1 ~ 40 ticks | Usa uma mecânica de sonda para detectar prontidão antecipadamente |

A interface usa uma recarga adaptativa — a recarga encurta quando há itens disponíveis para mover e alonga quando não há nada a fazer, equilibrando desempenho e responsividade.

## Modo Ilimitado

Clicar com Shift num slot de configuração o alterna para o **Modo Ilimitado**. Nesse modo, o slot fornece continuamente o item configurado às máquinas remotas em quantidade ilimitada.

## Entradas de Máquina com Buffer

Entradas de máquinas e tubos, incluindo entradas EJECT sem fio, entram primeiro num buffer local persistente. Recursos correspondentes são mesclados e enviados à rede ME a cada **5 ticks** (0,25 segundos a 20 TPS), com no máximo **128 variantes de recursos** tentadas por passagem. Entradas pendentes só aparecem na rede após essa transferência ter sucesso. Depósitos manuais na GUI continuam imediatos.

O buffer de entrada comporta até **1.024 variantes de recursos distintas**, com um orçamento de quantidade compartilhado de **36 KiB por tipo de recurso** (294.912 itens para o tipo item). Se o buffer estiver cheio, o remetente retém o restante não aceito. Entradas exigem uma rede ativa e energizada; a energia é cobrada uma vez quando o buffer as aceita. Uma rede cheia deixa recursos pendentes no buffer entre saves e recarregamentos, e quebrar a interface os retém dentro do item de interface dropado. Coloque-a numa rede energizada para retomar a transferência; cartões de memória não copiam recursos em buffer.

## Custo de Energia ME

Transferências consomem energia da rede ME. Para grandes importações ou exportações, garanta que a rede tenha um buffer de energia AE grande o bastante; se a energia for insuficiente, a transferência pausa ou move apenas o que a rede suporta.

## Filtro de Importação

<ItemImage id="ae2lt:overloaded_filter_component" scale="2" float="left" />

A Interface ME de Sobrecarga aceita um **Componente de Filtro Sobrecarregado** para restringir quais itens podem ser importados para a rede ME. O componente de filtro é configurado da mesma forma que uma configuração da Bancada de Células do AE2.

## Transferência de Energia

Com um Cartão de Indução do AppFlux instalado (requer AppFlux), a Interface ME de Sobrecarga pode enviar FE armazenado na rede ME para máquinas alvo.

* **Modo Normal**: roteia energia ao bloco adjacente no lado configurado
* **Modo Sem Fio**: distribui energia entre todas as máquinas conectadas sem fio via um agendador round-robin

## Dicas de Automação

* Uma única interface pode gerenciar E/S de muitas máquinas sem fio, substituindo muita tubulação
* Combinada com slots de modo ilimitado, ela pode manter uma máquina remota continuamente suprida de um material específico
* Com transferência de energia, linhas de energia dedicadas deixam de ser necessárias
* Habilite o tier de sonda Rápida para reduzir a latência de resposta do processamento

## Possíveis Problemas

* Se a Interface ME de Sobrecarga nem despacha nem retira itens, a rede ME pode não ter buffer de energia suficiente. Tente adicionar mais armazenamento de energia ME.
* Em casos incomuns, especialmente após uma atualização, a interface pode armazenar itens no seu buffer interno sem devolvê-los à rede. Mods de overlay como o Jade não conseguem ver esses itens, e a interface pode perder interação e vazão de rede. Se isso acontecer, quebre-a e coloque-a de novo; esteja ciente de que quebrá-la pode soltar muitas entidades de itens e causar lag severo.
* Isso é mais provável quando a interface está adjacente a um recipiente com itens que não podem ser armazenados na rede ME, como células de armazenamento ME, com o Modo Sem Fio desabilitado e o retorno automático habilitado.
* Quando exportação automática e retorno automático estão ambos habilitados, uma interface não consegue mover o mesmo tipo de item do recipiente A para o recipiente B. Por exemplo, na apicultura, mover favos de mel de uma colmeia para a interface e depois usar a mesma interface para enviá-los a uma centrífuga pode impedir que os favos sejam devolvidos pela colmeia.
