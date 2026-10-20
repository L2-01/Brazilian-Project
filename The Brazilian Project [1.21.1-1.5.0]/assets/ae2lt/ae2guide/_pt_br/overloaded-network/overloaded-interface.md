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

A **Interface ME de Sobrecarga** é a versão aprimorada da <ItemLink id="ae2:interface" /> vanilla, com **36 espaços de configuração** e um **modo sem fio** para transferência de itens e distribuição de energia a longa distância.

## Recursos Centrais

* **36 espaços de configuração** (o vanilla tem 9)
* **Dois modos de operação**: Normal e Sem Fio
* **Espaços de modo ilimitado**: espaços individuais podem ser alternados para fornecimento ilimitado
* **Duas velocidades de E/S**: Normal e Rápida (Sonda)
* **Transferência de energia**: pode rotear FE armazenado na rede ME para máquinas adjacentes ou conectadas sem fio
* **Filtragem de importação**: usa o Componente de Filtro Sobrecarregado para restringir quais itens podem ser importados

## Modos de Operação

### Modo Normal

No Modo Normal, a Interface ME de Sobrecarga se comporta como a interface vanilla — ela mantém estoque conforme a configuração e envia itens a um contêiner fisicamente adjacente. As diferenças são mais espaços de configuração e maior largura de banda de transferência.

Se uma direção de saída de energia estiver configurada, o Modo Normal também pode rotear FE da rede ME para um dispositivo adjacente naquele lado.

### Modo Sem Fio

No Modo Sem Fio, a Interface ME de Sobrecarga pode gerenciar entrada, saída e fornecimento de energia de várias máquinas remotamente.

Use a **Ferramenta de Conexão Sem Fio de Sobrecarga** para estabelecer conexões sem fio:

1. Segure a ferramenta e clique com o **botão direito** na Interface ME de Sobrecarga para selecioná-la
2. Clique com o botão direito numa face específica da máquina alvo para conectar
3. Uma interface pode se vincular a várias máquinas remotas

Os vínculos sem fio precisam estar na mesma dimensão e a até **128 blocos** por padrão. O limite de distância é configurável; defini-lo como 0 desativa o limite. Uma interface pode armazenar até **1.024** conexões sem fio de faces, e faces diferentes do mesmo alvo podem ser vinculadas separadamente. Segure **Ctrl** ao clicar com o botão direito num alvo para alternar em lote máquinas contíguas do mesmo tipo.

## Modos de Importação / Exportação

| Modo | Descrição |
|------|-------------|
| Exportação: DESLIGADA | Não exporta itens para máquinas remotas |
| Exportação: AUTO | Exporta itens automaticamente para máquinas remotas conforme a configuração dos espaços |
| Importação: DESLIGADA | Não importa itens de máquinas remotas |
| Importação: AUTO | Importa continuamente itens das máquinas remotas para a rede ME |
| Importação: EJECT | As máquinas remotas empurram itens para o espaço de entrada virtual; a interface os aceita passivamente |

Quando o Modo Sem Fio está desativado, essas opções fazem a interface tentar empurrar automaticamente para contêineres adjacentes ou retirar deles.

## Velocidade de E/S

| Nível de Velocidade | Faixa de Recarga Adaptativa | Descrição |
|------------|-------------------------|-------------|
| Normal | 5 ~ 80 tiques | Adequado para uso geral |
| Rápida (Sonda) | 1 ~ 40 tiques | Usa uma mecânica de sonda para detectar prontidão cedo |

A interface usa uma recarga adaptativa — a recarga encurta quando há itens disponíveis para mover e alonga quando não há nada a fazer, equilibrando desempenho e responsividade.

## Modo Ilimitado

Shift-clicar num espaço de configuração o alterna para o **Modo Ilimitado**. Nesse modo, o espaço fornece continuamente o item configurado às máquinas remotas em quantidade ilimitada.

## Entradas de Máquina com Buffer

Entradas de máquinas e tubos, incluindo entradas EJECT sem fio, entram primeiro num buffer local persistente. Recursos correspondentes são fundidos e enviados à rede ME a cada **5 tiques** (0,25 segundos a 20 TPS), com no máximo **128 variantes de recursos** tentadas por passada. Entradas pendentes aparecem na rede apenas após essa transferência ser bem-sucedida. Depósitos manuais pela GUI continuam imediatos.

O buffer de entrada comporta até **1.024 variantes distintas de recursos**, com um **orçamento de quantidade compartilhado de 36 KiB por tipo de recurso** (294.912 itens para o tipo item). Se o buffer estiver cheio, o remetente retém o restante não aceito. Entradas exigem uma rede ativa e energizada; a energia é cobrada uma vez quando o buffer as aceita. Uma rede cheia deixa recursos pendentes no buffer entre saves e reloads, e quebrar a interface os retém dentro do item de interface largado. Coloque-a numa rede energizada para retomar a transferência; cartões de memória não copiam recursos em buffer.

## Custo de Energia ME

As transferências consomem energia da rede ME. Para importações ou exportações grandes, garanta que a rede tenha um buffer de energia AE grande o suficiente; se a energia for insuficiente, a transferência pausa ou move apenas o que a rede pode suportar.

## Filtro de Importação

<ItemImage id="ae2lt:overloaded_filter_component" scale="2" float="left" />

A Interface ME de Sobrecarga aceita um **Componente de Filtro Sobrecarregado** para restringir quais itens podem ser importados para a rede ME. O componente de filtro é configurado da mesma forma que uma configuração de Bancada de Células de AE2.

## Transferência de Energia

Com um Cartão de Indução do AppFlux instalado (requer AppFlux), a Interface ME de Sobrecarga pode enviar FE armazenado na rede ME para máquinas alvo.

* **Modo Normal**: roteia energia para o bloco adjacente no lado configurado
* **Modo Sem Fio**: distribui energia por todas as máquinas conectadas sem fio via um agendador round-robin

## Dicas de Automação

* Uma única interface pode gerenciar a E/S de muitas máquinas sem fio, substituindo muita tubulação
* Combinada com espaços de modo ilimitado, ela pode manter uma máquina remota continuamente abastecida com um material específico
* Com a transferência de energia, linhas de energia dedicadas não são mais necessárias
* Ative o nível de sonda Rápida para reduzir a latência de resposta do processamento

## Possíveis Problemas

* Se a Interface ME de Sobrecarga não despacha nem recupera itens, a rede ME pode não ter buffer de energia suficiente. Tente adicionar mais armazenamento de energia ME.
* Em casos incomuns, especialmente após uma atualização, a interface pode armazenar itens no seu buffer interno sem devolvê-los à rede. Mods de overlay como o Jade não conseguem ver esses itens, e a interface pode perder interação com a rede e taxa de transferência. Se isso acontecer, quebre-a e coloque-a de novo; esteja ciente de que quebrá-la pode largar muitas entidades de itens e causar lag severo.
* Isso é mais provável quando a interface está adjacente a um contêiner com itens que não podem ser armazenados na rede ME, como células de armazenamento ME, com o Modo Sem Fio desativado e o retorno automático ativado.
* Quando exportação automática e retorno automático estão ambos ativados, uma interface não pode mover o mesmo tipo de item do contêiner A para o contêiner B. Por exemplo, na apicultura, mover favos de mel de uma colmeia para a interface e depois usar essa mesma interface para enviá-los a uma centrífuga pode impedir que os favos sejam retornados da colmeia.
