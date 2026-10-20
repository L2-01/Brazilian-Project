---
navigation:
  parent: ufo_intro/quantum_slicer.md
  title: Controles, Calor e Recuperação
  icon: ufo:quantum_pattern_hatch
  position: 30
---

# Controles, Calor e Recuperação do Fatiador

Uma Escotilha de Fluido Massiva ME pode substituir qualquer carcaça e aceitar refrigerante de
tubos de fluido externos. Apenas seu tanque local é consumido; não há fallback automático do armazenamento
ME. O único Buffer ou Proxy de Padrões Quântico pode ir para qualquer carcaça,
enquanto o Vidro Vibrante permanece estritamente só vidro.

- **Scan** revalida a topologia canônica 13×5×5 e reporta divergências.
- **Modo Seguro** limita a admissão a nove trabalhos e trava o progresso no calor máximo.
- **Overclock** multiplica o progresso e o calor base por cinco.
- O controle dentro de cada célula de processo pausa/retoma apenas aquele trabalho persistente.

O calor é 1 UC por thread ativa por tique normalmente e 5 UC com overclock.
O refrigerante segue a escala comum: Criotêmio Gélido (1 UC/120 mB), Refrigerante
Estável (50 UC/mB) e Condensado de Bose-Einstein (200 UC/mB). O resfriamento ocioso remove 1 UC
a cada 40 tiques.

Desconectar o AE2, recarregar o mundo ou bloquear a saída é recuperável. Restaure
a condição faltante e deixe a thread original intacta; não quebre o
controlador apenas para tentar uma fabricação de novo.
