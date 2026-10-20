---
navigation:
  parent: ufo_intro/quantum_processor_assembler.md
  title: Controles e Orçamento Térmico
  icon: ufo:quantum_pattern_hatch
  position: 30
---

# Controles e Orçamento Térmico do Montador

A Escotilha de Fluido Massiva ME exigida recebe refrigerante de tubos de fluido externos.
Coloque-a em qualquer posição de carcaça; a prévia de montagem é um exemplo. Apenas seu tanque local é consumido;
não há fallback automático do armazenamento ME.
O único Buffer ou Proxy de Padrões Quântico também pode se mover entre posições de carcaça; nenhuma
escotilha pode substituir o Vidro Vibrante.

A operação normal gera 1 UC por thread ativa a cada tique. O Overclock multiplica o
progresso e o calor base por cinco. O Modo Seguro limita a concorrência a nove e impede o
progresso no teto térmico.

| Fonte de resfriamento | Valor de resfriamento | Limite de fluxo |
|---|---:|---:|
| Criotêmio Gélido | 1 UC / 120 mB | 1000 mB/t |
| Refrigerante Estável | 50 UC / mB | 10 mB/t |
| Condensado de Bose-Einstein | 200 UC / mB | 10 mB/t |

Use a pausa por thread ao diagnosticar uma receita sem parar trabalhos não
relacionados. A Varredura diz respeito apenas ao estado da estrutura; ela não cancela nem reconstrói
registros de processo. Se a saída estiver bloqueada, expanda o armazenamento/partição ME correto
em vez de recodificar o padrão.
