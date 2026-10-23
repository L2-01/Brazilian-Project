---
navigation:
  parent: ufo_intro/quantum_cryoforge.md
  title: Eficiência Térmica e Diagnóstico
  icon: ufo:stellar_field_generator_t1
  position: 30
---

# Eficiência Térmica da Crioforja

A Escotilha de Fluido Massiva ME e o Buffer de Padrões Quântico/Proxy só são válidos onde o
modelo espera uma posição de carcaça/escotilha universal. Posições de vidro permanecem
estritas. A escotilha de fluido aceita os três refrigerantes térmicos por tubos externos,
usa seu tanque local antes do armazenamento ME e não muda o formato da Crioforja.

A Crioforja gera **50%** da carga de calor comum das máquinas universais:
`ceil(active threads × base heat × 0.5)`. O calor base é 1 normalmente e 5 sob
Sobrecarga. A dissipação ociosa remove 1 HU a cada 40 ticks.

O Modo Seguro reduz o limite de admissão ativa de 27 para 9 e interrompe o progresso no
teto térmico. Ele não deleta recursos já reservados. Catalisadores
ainda modificam calor, velocidade, custo de AE e comportamento de bônus após o fator
de meio calor específico da máquina.

## Quando uma Receita de Refrigerante Não Inicia

1. Confirme formação e conexão com a grade.
2. Verifique se todos os 24 geradores de campo são do mesmo tier.
3. Compare o tier MK exibido com o requisito do JEI da receita.
4. Verifique a disponibilidade exata de fluido/item de entrada e a capacidade de saída.
5. Inspecione threads pausadas e a temperatura global.

Não confunda o requisito de resfriamento da própria Crioforja com o refrigerante que ela
está fabricando: o fluido produzido ainda precisa de um destino de saída válido.
