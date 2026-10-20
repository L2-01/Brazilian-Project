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

A **Interface ME de Sobrecarga** é a versão aprimorada da <ItemLink id="ae2:interface" /> vanilla, com **36 espaços de configuração** e um **modo sem fio** para transferência de itens a longa distância.

## Recursos Centrais

* **36 espaços de configuração** (o vanilla tem 9)
* **Dois modos de operação**: Normal e Sem Fio
* **Espaços de modo ilimitado**: espaços individuais podem ser alternados para fornecimento ilimitado
* **Duas velocidades de E/S**: Normal e Rápida (Sonda)
* **Filtragem de importação**: usa o Componente de Filtro de Sobrecarga para restringir quais itens podem ser importados

## Modos de Operação

### Modo Normal

No Modo Normal, a Interface ME de Sobrecarga se comporta como a interface vanilla — ela mantém estoque conforme a configuração e despeja itens num contêiner fisicamente adjacente. As diferenças são mais espaços de configuração e maior banda de transferência.

### Modo Sem Fio

No Modo Sem Fio, a Interface ME de Sobrecarga pode gerenciar entrada e saída de várias máquinas remotamente. Vincule máquinas remotas pela UI no jogo da interface; uma interface pode se vincular a várias máquinas remotas.

## Modos de Importação / Exportação

| Modo | Descrição |
|------|-------------|
| Exportação: OFF | Não exporta itens para máquinas remotas |
| Exportação: AUTO | Exporta automaticamente itens para máquinas remotas conforme a configuração dos espaços |
| Importação: OFF | Não importa itens de máquinas remotas |
| Importação: AUTO | Importa continuamente itens de máquinas remotas para a rede ME |
| Importação: EJECT | Máquinas remotas empurram itens para o espaço de entrada virtual; a interface os aceita passivamente |

## Velocidade de E/S

| Categoria de Velocidade | Faixa de Recarga Adaptativa | Descrição |
|------------|-------------------------|-------------|
| Normal | 5 ~ 80 tiques | Adequada para uso geral |
| Rápida (Sonda) | 1 ~ 40 tiques | Usa uma mecânica de sonda para detectar prontidão mais cedo; exige um Cartão de Velocidade |

A interface usa uma recarga adaptativa — a recarga encurta quando há itens disponíveis para mover, e alonga quando não há nada a fazer, equilibrando desempenho e responsividade.

## Modo Ilimitado

Shift+clicar num espaço de configuração o alterna para o **Modo Ilimitado**. Nesse modo, o espaço fornece continuamente o item configurado às máquinas remotas em quantidade ilimitada.

## Filtro de Importação

<ItemImage id="ae2lt:overloaded_filter_component" scale="2" float="left" />

A Interface ME de Sobrecarga aceita um **Componente de Filtro de Sobrecarga** para restringir quais itens podem ser importados para a rede ME. O componente de filtro é configurado do mesmo jeito que uma configuração da Bancada de Células do AE2.

## Dicas de Automação

* Uma única interface pode gerenciar a E/S de muitas máquinas sem fio, substituindo muita tubulação
* Combinada com espaços de modo ilimitado, ela pode manter uma máquina remota continuamente abastecida com um material específico
* Ative a categoria de sonda Rápida para reduzir a latência de resposta do processamento
