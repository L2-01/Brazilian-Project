---
navigation:
  parent: recu_intro/recu_intro-index.md
  icon:
  title: Como Usar
categories:
  - recursive_patterns
---

# Recursive AE2 Pattern Provider

## 🎮 Como Usar

### Passo 1: Codifique um Padrão Recursivo

Existem **duas formas** de criar um padrão recursivo:

#### Método A: Alternância Direta no Terminal de Codificação de Padrões (Recomendado)
1. Abra seu **Terminal de Codificação de Padrões**.
2. Selecione a aba **Padrão de Fabricação**.
3. Ao lado dos botões de substituição, ative o botão **Padrão Recursivo** (marca de seleção verde).
4. Insira sua receita na grade de fabricação e clique em **Codificar Padrão**.
5. O padrão codificado receberá automaticamente a marca recursiva!

> 💡 **Nota**: O botão de alternância da GUI no Terminal de Codificação de Padrões pode ser ativado ou desativado no arquivo de configuração via `enableEncodingGuiToggle` (padrão: `true`).

#### Método B: Receita de Bancada
1. Coloque um padrão AE2 padrão já codificado numa Bancada.
2. Adicione o item de receita configurado (padrão: **Lingote de Ferro**).
3. Fabrique para convertê-lo numa versão recursiva (`[AE2 Pattern] + [Recipe Item] → [Recursive Pattern]`).

*(Para remover a recursão usando uma bancada, fabrique o padrão recursivo sozinho: `[Recursive Pattern] → [Normal Pattern]`)*.

### Passo 2: Instale num Provedor de Padrões
Coloque o padrão recursivo em qualquer **Provedor de Padrões** conectado a um Montador Molecular.

### Passo 3: Mágica Automática! ✨
O mod gera automaticamente padrões de dependência para componentes intermediários faltantes em tempo real:
- **Gravetos** (se uma Picareta de Ferro precisar deles)
- **Tábuas de Madeira** (se estiver fazendo gravetos de troncos inteiros)
- **Qualquer dependência de fabricação faltante na cadeia!**

## 🔄 Recodificação e Persistência de Padrões

Quando você coloca um padrão recursivo existente de volta no Terminal de Codificação de Padrões para editar sua receita ou configurações:
- **A marca recursiva é preservada automaticamente** na recodificação.
- Você não precisa refabricar o padrão nem alternar a marca manualmente, a menos que queira desativá-la.
