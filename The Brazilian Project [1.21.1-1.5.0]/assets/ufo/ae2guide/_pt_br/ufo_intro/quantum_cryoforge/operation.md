---
navigation:
  parent: ufo_intro/quantum_cryoforge.md
  title: Produção de Refrigerante
  icon: ufo:quantum_cryoforge_controller
  position: 20
---

# Produção de Refrigerante da Crioforja

A Crioforja produz os fluidos térmicos usados pelos multiblocos universais e pelo
Nexus Estelar. Seu tier de receita deriva do tier uniforme de Gerador de Campo
Estelar instalado na estrutura.

## Progressão

- Estabeleça primeiro a rota inicial de Criotêmio Gélido.
- Melhore todas as posições de campo juntas; um único tier inferior impede o
  tier de máquina superior pretendido.
- O Refrigerante Estável é uma receita de **Crioforja MK3**.
- Use o refrigerante de alta densidade produzido para estabilizar cargas de trabalho paralelas maiores.

## Planejamento de Portas

Posições flexíveis de carcaça aceitam a família de escotilhas universais. Planeje entrada de item,
entrada/saída de fluido e acesso de energia AE antes de preencher a carcaça. Escotilhas massivas
conectam pela sua face indicada, então oriente o cabeamento ME externo deliberadamente.

A máquina compartilha o modelo de processo persistente de 27 threads. Um destino
cheio não anula a saída de refrigerante; o processo correspondente fica bloqueado até
a capacidade voltar.
