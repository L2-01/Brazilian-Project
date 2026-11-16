---
navigation:
  title: Solução de Problemas
  icon: ufo:structure_scanner
  parent: ufo_intro/index.md
  position: 90
---

# Solução de Problemas

## Estrutura Não se Forma

1. Execute o Escanear no controlador.
2. Verifique a orientação do controlador e cada posição destacada.
3. Use as Alternativas do JEI para células que aceitam mais de uma escotilha ou tier de campo.
4. Garanta que os chunks contendo a estrutura completa estejam carregados.
5. Substitua uma escotilha suspeita só depois de desconectar os trabalhos ativos com segurança.

O scanner e o visualizador usam a mesma definição de estrutura compilada da formação,
então uma discordância é um bug que vale reportar com a posição do controlador e o
bloco esperado destacado.

## `PAUSED_NO_GRID`

- Conecte os cabos à face indicada da escotilha.
- Verifique os canais AE2 e a energia da grade.
- Verifique se a estrutura ainda está formada após reconectar.
- Os buffers de processo existentes são persistentes; não quebre o controlador apenas
  para reiniciá-lo.

## Padrão Visível mas Não Inicia

- O tier da receita pode estar acima do tier da máquina.
- Todos os 27 slots de processo podem já estar reservados.
- Uma alternativa de item, fluido ou químico exigida pode estar indisponível.
- O processo pode estar manualmente pausado.
- O Modo Seguro pode estar segurando a máquina no seu limite térmico.

## `OUTPUT_BLOCKED`

Libere capacidade para a chave de saída exata. Quantidades aceitas são removidas do
registro de pendentes; quantidades rejeitadas permanecem salvas e tentam depois. Não
quebre e recoloque o controlador enquanto houver saída pendente.

## Máquina Superaquece

- Verifique se o refrigerante está no caminho de refrigerante, não no de fluido de receita.
- Suba do Criotêmio Gélido para o Refrigerante Estável ou o Condensado de Bose-Einstein.
- Reduza as threads ativas ou desabilite a Sobrecarga.
- Habilite o Modo Seguro enquanto ajusta a instalação.
- Revise os multiplicadores de calor dos catalisadores.

## Após Recarregar um Datapack

Um processo cujo ID de receita desapareceu entra em recuperação de receita inválida. Insumos
rastreados e AE em buffer são reembolsados quando seus destinos podem aceitá-los.
Se o armazenamento estiver cheio, libere espaço e deixe o controlador tentar de novo.
