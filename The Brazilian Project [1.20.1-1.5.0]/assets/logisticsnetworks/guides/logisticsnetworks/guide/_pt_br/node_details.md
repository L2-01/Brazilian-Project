---
navigation:
  title: Detalhes do Nó
  parent: index.md
  position: 5
---

# Detalhes do Nó

Esta página mapeia cada configuração da interface do nó.

Controles do topo na página do canal:

1. Rótulo do nome da rede
2. Alternância de visibilidade para a renderização do nó
3. Botão Alterar para voltar à seleção de rede
4. Abas de canal de 0 a 8

Linhas no painel de configurações da esquerda:

1. Estado
2. Modo
3. Tipo
4. Lado
5. Redstone
6. Distribuição
7. Prioridade
8. Lote
9. Atraso
10. Nome

## O Que Cada Linha Faz

1. Estado alterna o canal entre ativado e desativado.
2. Modo alterna entre Receptor e Emissor.
3. Tipo alterna entre Item, Fluido, Energia, Químico e Fonte, com verificações de melhoria.
4. Lado define a face de capacidade para extração ou inserção.
5. Redstone define a condição de execução.
6. Distribuição escolhe a ordenação de alvos para o emissor.
7. Prioridade é usada pelo modo de distribuição Prioridade.
8. Lote define a quantidade máxima por operação.
9. Atraso define os tiques entre execuções.
10. Nome define um rótulo personalizado para o canal.

## Limites e Casos Especiais

1. A Prioridade é limitada entre menos 99 e mais 99.
2. O Lote é limitado pelo teto do nível de melhoria atual.
3. O Atraso tem um mínimo vindo da configuração do nível de melhoria.
4. O tipo Energia força o atraso a 1 tique.
5. No modo Receptor, as linhas Distribuição, Lote e Atraso ficam desabilitadas na interface.

Os espaços de melhoria são compartilhados pelo nó inteiro, não por canal.

## Atalhos de Entrada Úteis

1. Clique esquerdo avança. Clique direito retrocede.
2. Segure Shift para passos numéricos maiores.
3. Clique duplo em Prioridade, Lote ou Atraso para digitar um número.
4. Segure Alt e clique nas linhas numéricas para pular ao mínimo ou máximo.

## Espaços de Filtro e Melhoria

1. Cada canal tem uma grade de filtros 3 por 3.
2. O nó tem uma grade de melhorias 2 por 2.

O botão de modo do filtro perto do rótulo do filtro alterna entre Qualquer e Todos para aquele canal.

A página de seleção de rede tem:

1. Campo de nome de rede para redes novas
2. Botão Criar Rede
3. Lista de redes existentes com rolagem
4. Clique numa entrada para entrar naquela rede
