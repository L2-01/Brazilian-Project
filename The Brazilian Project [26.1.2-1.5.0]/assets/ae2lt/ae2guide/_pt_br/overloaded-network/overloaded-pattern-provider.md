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

O **Fornecedor de Padrões ME de Sobrecarga** é a versão aprimorada do <ItemLink id="ae2:pattern_provider" /> vanilla, com **36 espaços de padrões** e um **modo sem fio** para despachar materiais a máquinas remotas a distância.

## Recursos Centrais

* **36 espaços de padrões** (o vanilla tem 9)
* **Dois modos de operação**: Normal e Sem Fio
* **Suporte a Padrão de Sobrecarga**: funciona com padrões vanilla, mais os Padrões de Sobrecarga deste mod
* **Retorno automático**: puxa automaticamente as saídas processadas de volta das máquinas remotas
* **Filtro de importação**: só permite de volta à rede ME os resultados definidos pelo padrão

## Modos de Operação

### Modo Normal

No Modo Normal, o Fornecedor de Padrões de Sobrecarga empurra materiais para máquinas **fisicamente adjacentes**, idêntico ao Fornecedor de Padrões vanilla. A principal diferença é o número maior de espaços de padrões.

### Modo Sem Fio

No Modo Sem Fio, o Fornecedor de Padrões de Sobrecarga pode despachar materiais para máquinas remotas a distância. Vincule máquinas remotas pela UI no jogo do fornecedor; um fornecedor pode se vincular a várias máquinas remotas.

Uma vez estabelecidas as conexões, o fornecedor despacha materiais às máquinas remotas conforme a estratégia de distribuição selecionada.

### Estratégias de Distribuição

| Estratégia | Descrição |
|----------|-------------|
| Rodízio | Despacha para uma máquina remota por vez, em ordem |
| Distribuição Balanceada | Distribui os materiais igualmente por todas as máquinas remotas conectadas |

## Modo de Retorno

O modo de retorno determina como a saída processada é recuperada das máquinas remotas:

| Modo | Descrição |
|------|-------------|
| OFF | Sem retorno automático |
| AUTO | Puxa ativamente a saída de volta das máquinas remotas |
| EJECT | As máquinas remotas empurram a saída para o espaço de saída virtual; o fornecedor a aceita passivamente |

## Categoria de Velocidade

| Velocidade | Descrição |
|-------|-------------|
| Normal | Recarga padrão (5 ~ 80 tiques) |
| Rápida (Sonda) | Recarga adaptativa; usa uma mecânica de sonda para detectar prontidão mais cedo (1 ~ 40 tiques) |

## Filtro de Importação

Com a "Importação Filtrada" ligada, o fornecedor só aceita itens listados como saídas no padrão atual ao devolver produtos — isso impede que itens não relacionados entrem na rede.

## Padrão de Sobrecarga e Codificador de Padrões de Sobrecarga

<Row>
  <ItemImage id="ae2lt:overload_pattern" scale="2" />
  <ItemImage id="ae2lt:overload_pattern_encoder" scale="2" />
</Row>

O **Padrão de Sobrecarga** é um padrão especial, **só utilizável no Fornecedor de Padrões de Sobrecarga**. Use o **Codificador de Padrões de Sobrecarga** para codificá-lo.

O Codificador de Padrões de Sobrecarga suporta:

* Definir entrada principal e saída principal
* Definir subprodutos
* Uma chave **Ignorar NBT**: quando ligada, o casamento de itens ignora dados NBT

## Dicas de Automação

* Em sistemas de fabricação automatizada grandes, o Modo Sem Fio pode reduzir drasticamente a complexidade de tubulação
* Combinado com a estratégia de Distribuição Balanceada e várias máquinas de processamento, você ganha fabricação paralela de graça
* Ative a categoria de velocidade Rápida para melhor responsividade
* Escolha o modo de retorno que corresponde ao cenário de automação específico
