---
navigation:
  title: Fornecedor de Padrões ME de Sobrecarga
  icon: ae2lt:overloaded_pattern_provider
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_pattern_provider
  - ae2lt:overload_pattern
  - ae2lt:overload_pattern_encoder
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

## Modos de Operação

### Modo Normal

No Modo Normal, o Fornecedor de Padrões ME de Sobrecarga empurra materiais para máquinas **fisicamente adjacentes**, idêntico ao Fornecedor de Padrões do vanilla. A principal diferença é o maior número de slots de padrões.

### Modo Sem Fio

No Modo Sem Fio, o Provedor de Padrões de Sobrecarga pode despachar materiais para máquinas remotas à distância. Vincule máquinas remotas pela UI do jogo do provedor; um provedor pode se vincular a várias máquinas remotas.

Com as conexões feitas, o fornecedor despacha materiais às máquinas remotas conforme a estratégia de distribuição selecionada.

### Estratégias de Distribuição

| Estratégia | Descrição |
|----------|-------------|
| Round Robin | Despacha para uma máquina remota por vez, em ordem |
| Distribuição Equilibrada | Distribui materiais uniformemente entre todas as máquinas remotas conectadas |

## Modo de Retorno

O modo de retorno determina como a saída processada é recuperada das máquinas remotas:

| Modo | Descrição |
|------|-------------|
| OFF | Sem retorno automático |
| AUTO | Puxa ativamente a saída de volta das máquinas remotas |
| EJECT | Máquinas remotas empurram a saída para o slot de saída virtual; o fornecedor a aceita passivamente |

## Tier de Velocidade

| Velocidade | Descrição |
|-------|-------------|
| Normal | Recarga padrão (5 ~ 80 ticks) |
| Rápida (Sonda) | Recarga adaptativa; usa uma mecânica de sonda para detectar prontidão antecipadamente (1 ~ 40 ticks) |

## Filtro de Importação

Com a "Importação Filtrada" ativada, o provedor só aceita itens listados como saídas do padrão atual ao devolver produtos — isso impede que itens não relacionados entrem na rede.

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
