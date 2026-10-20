---
navigation:
  parent: recu_intro/recu_intro-index.md
  icon:
  title: Como Usar
categories:
  - recursive_patterns
---

# Fornecedor de Padrões Recursivo do AE2

## 🎮 Como Usar

### Passo 1: Codifique um Padrão Recursivo

Há **duas formas** de criar um padrão recursivo:

#### Método A: Alternância Direta no Terminal de Codificação de Padrões (Recomendado)
1. Abra seu **Terminal de Codificação de Padrões**.
2. Selecione a aba **Padrão de Fabricação**.
3. Ao lado dos botões de substituição, ative o botão **Padrão Recursivo** (sinal de visto verde).
4. Insira sua receita na grade de fabricação e clique em **Codificar Padrão**.
5. O padrão codificado receberá automaticamente a marcação recursiva!

> 💡 **Observação**: o botão de alternância na GUI do Terminal de Codificação de Padrões pode ser ativado ou desativado no arquivo de configuração via `enableEncodingGuiToggle` (padrão: `true`).

#### Método B: Receita de Bancada de Trabalho
1. Coloque um padrão padrão do AE2 já codificado numa Bancada de Trabalho.
2. Adicione o item de receita configurado (padrão: **Lingote de Ferro**).
3. Fabrique para convertê-lo numa versão recursiva (`[Padrão do AE2] + [Item de Receita] → [Padrão Recursivo]`).

*(Para remover a recursão usando uma bancada de trabalho, fabrique o padrão recursivo sozinho: `[Padrão Recursivo] → [Padrão Normal]`)*.

### Passo 2: Instale num Provedor de Padrões
Coloque o padrão recursivo em qualquer **Provedor de Padrões** conectado a um Montador Molecular.

### Passo 3: Magia Automática! ✨
O mod gera automaticamente padrões de dependência para componentes intermediários em falta em tempo real:
- **Gravetos** (se uma Picareta de Ferro precisar deles)
- **Tábuas de Madeira** (se fizer gravetos a partir de troncos inteiros)
- **Qualquer dependência de fabricação em falta na cadeia!**

## 🔄 Recodificação e Persistência de Padrões

Quando você coloca um padrão recursivo existente de volta no Terminal de Codificação de Padrões para editar sua receita ou configurações:
- **A marcação recursiva é preservada automaticamente** na recodificação.
- Você não precisa refabricar o padrão nem reativar a marcação manualmente, a menos que queira desativá-la.