---
navigation:
  parent: recu_intro/recu_intro-index.md
  icon:
  title: Dicas Avançadas
categories:
  - recursive_patterns
---

# Recursive AE2 Pattern Provider

## 🔧 Dicas Avançadas

### Eficiência do Fluxo de Trabalho no Terminal
- Use a **Alternância de Padrão Recursivo** diretamente no Terminal de Codificação de Padrões para criar padrões recursivos em lote instantaneamente, sem carregar itens de fabricação extras no seu inventário.
- O estado da alternância no terminal é específico para Padrões de Fabricação e ficará automaticamente oculto ao trocar para os modos de Processamento ou Ferraria.
- **Botão de GUI Configurável**: Se você preferir forçar os jogadores a fabricar padrões recursivos apenas via receitas de bancada, defina `enableEncodingGuiToggle = false` no arquivo de configuração.

### Controle de Profundidade de Recursão
- **Profundidade 1**: Gera apenas ingredientes diretos (ex.: Tábuas para um Baú).
- **Profundidade 3**: Gera ingredientes + seus ingredientes + troncos (recomendado para a maioria das configurações).
- **Ilimitado (-1)**: Resolve toda a árvore de dependências até as matérias-primas.
- **Desativado (0)**: Restaura o comportamento vanilla do AE2.

### Configuração e Desempenho do Provedor de Padrões
- Coloque padrões recursivos em Provedores de Padrões conectados a Montadores Moleculares.
- Os padrões de dependência gerados automaticamente herdam as configurações de substituição (substituição de item/fluido) do padrão pai.
- Em modpacks grandes, mantenha limites razoáveis de profundidade de recursão para otimizar os tempos de indexação de padrões da rede.
