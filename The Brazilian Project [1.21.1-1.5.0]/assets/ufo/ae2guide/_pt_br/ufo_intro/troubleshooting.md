---
navigation:
  title: Solução de Problemas
  icon: ufo:structure_scanner
  parent: ufo_intro/index.md
  position: 90
---

# Solução de Problemas

## A Estrutura Não Forma

1. Rode a Varredura no controlador.
2. Verifique a orientação do controlador e cada posição destacada.
3. Use as Alternativas do JEI para células que aceitam mais de uma escotilha ou tier de campo.
4. Garanta que os chunks contendo a estrutura inteira estejam carregados.
5. Substitua uma escotilha suspeita só depois de desconectar trabalhos ativos com segurança.

O scanner e o visualizador usam a mesma definição de estrutura compilada da formação,
então uma divergência é um bug que vale reportar com a posição do controlador e o
bloco esperado destacado.

## `PAUSED_NO_GRID`

- Conecte os cabos à face de escotilha indicada.
- Verifique os canais AE2 e a energia da rede.
- Confirme que a estrutura ainda está formada depois de reconectar.
- Os buffers de processo existentes são persistentes; não quebre o controlador apenas
  para reiniciá-lo.

## O Padrão Está Visível mas Não Inicia

- O tier da receita pode estar acima do tier da máquina.
- Todos os 27 espaços de processo podem já estar reservados.
- Uma alternativa de item, fluido ou químico exigida pode estar indisponível.
- O processo pode estar pausado manualmente.
- O Modo Seguro pode estar segurando a máquina no seu limite térmico.

## `OUTPUT_BLOCKED`

Libere capacidade para a chave de saída exata. Quantidades aceitas são removidas do
registro pendente; quantidades rejeitadas permanecem salvas e tentam de novo depois. Não
quebre e recoloque o controlador repetidamente enquanto a saída estiver pendente.

## A Máquina Superaquece

- Verifique se o refrigerante está no caminho de refrigerante, não no caminho de fluido de receita.
- Melhore de Criotêmio Gélido para Refrigerante Estável ou Condensado de Bose-Einstein.
- Reduza as threads ativas ou desligue o Overclock.
- Ative o Modo Seguro enquanto ajusta a instalação.
- Revise os multiplicadores de calor dos catalisadores.

## Depois de um Reload de Datapack

Um processo cujo ID de receita desapareceu entra em recuperação de receita inválida. As
entradas rastreadas e o AE em buffer são reembolsados quando seus destinos conseguem aceitá-los.
Se o armazenamento estiver cheio, libere espaço e permita ao controlador tentar de novo.
