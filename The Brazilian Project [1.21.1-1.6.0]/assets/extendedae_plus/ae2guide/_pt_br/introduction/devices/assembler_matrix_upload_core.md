---
navigation:
  parent: introduction/index.md
  title: Núcleo de Carregamento da Matriz de Montagem
  position: 8
  icon: extendedae_plus:assembler_matrix_upload_core
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:assembler_matrix_upload_core
---

# Núcleo de Carregamento da Matriz de Montagem

<BlockImage id="extendedae_plus:assembler_matrix_upload_core" scale="5" />

O **Núcleo de Carregamento da Matriz de Montagem** é um módulo funcional que permite a uma Matriz de Montagem receber e carregar padrões automaticamente do Terminal de Codificação de Padrões.

## Visão Geral do Recurso

Quando instalado em uma Matriz de Montagem, padrões criados no Terminal de Codificação de Padrões — incluindo **padrões de fabricação**, **padrões de mesa de ferraria** ou **padrões de cortador de pedra** — são carregados automaticamente no armazenamento da Matriz de Montagem, sem transferência manual.

## Histórico de Versões e Mudanças Importantes

- **Versão 1.4.3**: Este item foi adicionado ao jogo.
- **Mudança Importante**: Antes da **versão 1.4.3**, as Matrizes de Montagem **não exigiam** este núcleo para carregar automaticamente os padrões acima.
- **Exigência Atual**: A partir da **versão 1.4.3**, é preciso instalar este núcleo em uma Matriz de Montagem para ativar o carregamento automático.

> **Aviso:** Esta é uma mudança que quebra compatibilidade. Ao atualizar de versões antigas para a 1.4.3 ou superior, é preciso instalar manualmente este núcleo em cada Matriz de Montagem em uso para restaurar a função de carregamento automático.

> **Nota:** Este núcleo afeta apenas o **carregamento automático de padrões do Terminal de Codificação de Padrões para a Matriz de Montagem**. Ele não afeta a lógica de envio de padrões de processamento aos **Provedores de Padrões**.
