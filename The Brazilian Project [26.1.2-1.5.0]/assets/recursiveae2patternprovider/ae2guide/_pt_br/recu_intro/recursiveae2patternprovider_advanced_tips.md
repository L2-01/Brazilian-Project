---
navigation:
  parent: recu_intro/recu_intro-index.md
  icon:
  title: Dicas Avançadas
categories:
  - recursive_patterns
---

# Fornecedor de Padrões Recursivo do AE2

## 🔧 Dicas Avançadas

### Eficiência no Fluxo de Trabalho do Terminal
- Use a **Alternância de Padrão Recursivo** diretamente no Terminal de Codificação de Padrões para criar padrões recursivos em lote instantaneamente, sem carregar itens de fabricação extras no inventário.
- O estado da alternância no terminal é específico para Padrões de Fabricação e se oculta automaticamente ao trocar para os modos Processamento ou Ferraria.
- **Botão de GUI Configurável**: se você preferir forçar os jogadores a fabricar padrões recursivos apenas via receitas de bancada de trabalho, defina `enableEncodingGuiToggle = false` no arquivo de configuração.

### Controle da Profundidade de Recursão
- **Profundidade 1**: gera apenas os ingredientes diretos (ex.: Tábuas para um Baú).
- **Profundidade 3**: gera ingredientes + seus ingredientes + troncos (recomendado para a maioria das configurações).
- **Sem limite (-1)**: resolve a árvore de dependência inteira até as matérias-primas.
- **Desativado (0)**: restaura o comportamento padrão do AE2.

### Configuração e Desempenho do Provedor de Padrões
- Coloque padrões recursivos em Provedores de Padrões conectados a Montadores Moleculares.
- Os padrões de dependência gerados automaticamente herdam as configurações de substituição (substituição de item/fluido) do padrão pai.
- Em modpacks grandes, mantenha limites razoáveis de profundidade de recursão para otimizar os tempos de indexação de padrões da rede.