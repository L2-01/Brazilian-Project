---
navigation:
  parent: ufo_intro/quantum_processor_assembler.md
  title: Controles e Orçamento Térmico
  icon: ufo:quantum_pattern_hatch
  position: 30
---

# Controles e Orçamento Térmico do Montador

A Escotilha de Fluido Massiva ME exigida recebe refrigerante de tubos externos de fluido.
Coloque-a em qualquer posição de carcaça; a prévia de montagem é um exemplo. Apenas seu tanque local é consumido;
não há fallback automático no armazenamento ME.
O único Buffer de Padrões Quântico ou Proxy também pode se mover entre posições de carcaça; nenhuma
escotilha pode substituir Vidro Vibrante.

A operação normal gera 1 HU por thread ativa a cada tick. A Sobrecarga multiplica
o progresso e o calor base por cinco. O Modo Seguro limita a concorrência a nove e impede
o progresso no teto térmico.

| Fonte de resfriamento | Valor de refrigeração | Teto de fluxo |
|---|---:|---:|
| Criotêmio Gélido | 1 HU / 120 mB | 1000 mB/t |
| Refrigerante Estável | 50 HU / mB | 10 mB/t |
| Condensado de Bose-Einstein | 200 HU / mB | 10 mB/t |

Use a pausa por thread ao diagnosticar uma receita sem interromper trabalhos
não relacionados. O Escanear trata apenas do estado da estrutura; não cancela nem reconstrói
registros de processo. Se a saída estiver bloqueada, expanda o armazenamento/partição ME corretos
em vez de recodificar o padrão.
