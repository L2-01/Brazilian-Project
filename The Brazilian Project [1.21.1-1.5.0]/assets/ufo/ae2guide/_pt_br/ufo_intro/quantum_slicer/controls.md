---
navigation:
  parent: ufo_intro/quantum_slicer.md
  title: Controles, Calor e Recuperação
  icon: ufo:quantum_pattern_hatch
  position: 30
---

# Controles, Calor e Recuperação do Fatiador

Uma Escotilha de Fluido Massiva ME pode substituir qualquer carcaça e aceitar refrigerante de
tubos externos de fluido. Apenas seu tanque local é consumido; não há fallback automático
no armazenamento ME. O único Buffer de Padrões Quântico ou Proxy pode se mover para qualquer carcaça,
enquanto o Vidro Vibrante permanece estritamente apenas vidro.

- **Escanear** revalida a topologia canônica de 13×5×5 e reporta divergências.
- **Modo Seguro** limita a admissão a nove trabalhos e trava o progresso no calor máximo.
- **Sobrecarga** multiplica o progresso e o calor base por cinco.
- O controle dentro de cada célula de processo pausa/retoma apenas aquele trabalho persistente.

O calor é de 1 HU por thread ativa por tick normalmente e 5 HU sob Sobrecarga.
O refrigerante segue a escala comum: Criotêmio Gélido (1 HU/120 mB), Refrigerante
Estável (50 HU/mB) e Condensado de Bose-Einstein (200 HU/mB). O resfriamento ocioso remove 1 HU
a cada 40 ticks.

Desconectar a AE2, recarregar o mundo ou bloquear a saída é recuperável. Restaure
a condição faltante e deixe a thread original intacta; não quebre o
controlador apenas para tentar uma fabricação de novo.
