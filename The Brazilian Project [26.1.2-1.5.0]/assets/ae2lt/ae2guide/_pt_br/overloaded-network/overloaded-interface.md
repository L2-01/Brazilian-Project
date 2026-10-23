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
* **Filtragem de importação**: usa o Componente de Filtro Sobrecarregado para restringir quais itens podem ser importados

## Modos de Operação

### Modo Normal

No Modo Normal, a Interface ME de Sobrecarga comporta-se como a interface do vanilla — mantém estoque conforme a configuração e envia itens a um recipiente fisicamente adjacente. As diferenças são mais slots de configuração e maior largura de banda de transferência.

### Modo Sem Fio

No Modo Sem Fio, a Interface ME de Sobrecarga pode gerenciar entrada e saída de várias máquinas remotamente. Vincule máquinas remotas pela UI do jogo da interface; uma interface pode se vincular a várias máquinas remotas.

## Modos de Importação / Exportação

| Modo | Descrição |
|------|-------------|
| Exportar: OFF | Não exporta itens para máquinas remotas |
| Exportar: AUTO | Exporta itens automaticamente para máquinas remotas conforme a configuração dos slots |
| Importar: OFF | Não importa itens de máquinas remotas |
| Importar: AUTO | Importa itens continuamente de máquinas remotas para a rede ME |
| Importar: EJECT | Máquinas remotas empurram itens para o slot de entrada virtual; a interface os aceita passivamente |

## Velocidade de E/S

| Tier de Velocidade | Faixa de Recarga Adaptativa | Descrição |
|------------|-------------------------|-------------|
| Normal | 5 ~ 80 ticks | Adequada para uso geral |
| Rápida (Sonda) | 1 ~ 40 ticks | Usa uma mecânica de sonda para detectar prontidão antecipadamente |

A interface usa uma recarga adaptativa — a recarga encurta quando há itens disponíveis para mover e alonga quando não há nada a fazer, equilibrando desempenho e responsividade.

## Modo Ilimitado

Clicar com Shift num slot de configuração o alterna para o **Modo Ilimitado**. Nesse modo, o slot fornece continuamente o item configurado às máquinas remotas em quantidade ilimitada.

## Filtro de Importação

<ItemImage id="ae2lt:overloaded_filter_component" scale="2" float="left" />

A Interface ME de Sobrecarga aceita um **Componente de Filtro Sobrecarregado** para restringir quais itens podem ser importados para a rede ME. O componente de filtro é configurado da mesma forma que uma configuração da Bancada de Células do AE2.

## Dicas de Automação

* Uma única interface pode gerenciar E/S de muitas máquinas sem fio, substituindo muita tubulação
* Combinada com slots de modo ilimitado, ela pode manter uma máquina remota continuamente suprida de um material específico
* Habilite o tier de sonda Rápida para reduzir a latência de resposta do processamento
