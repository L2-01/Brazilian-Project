---
navigation:
  parent: ufo_intro/quantum_cryoforge.md
  title: Eficiência Térmica e Diagnóstico
  icon: ufo:stellar_field_generator_t1
  position: 30
---

# Eficiência Térmica da Crioforja

A Escotilha de Fluido Massiva ME e o Buffer/Proxy de Padrões Quântico só são válidos onde o
modelo espera uma posição de carcaça/escotilha universal. Posições de vidro permanecem
estritas. A escotilha de fluido aceita os três refrigerantes térmicos por tubos externos,
usa seu tanque local antes do armazenamento ME e não muda o formato da Crioforja.

A Crioforja gera **50%** da carga de calor comum das máquinas universais:
`ceil(threads ativas × calor base × 0.5)`. O calor base é 1 normalmente e 5 com
overclock. A dissipação ociosa remove 1 UC a cada 40 tiques.

O Modo Seguro reduz o limite de admissão ativa de 27 para 9 e para o progresso no
teto térmico. Ele não apaga recursos já reservados. Os catalisadores
ainda modificam calor, velocidade, custo de AE e comportamento de bônus depois do fator
de meio-calor específico da máquina.

## Quando uma Receita de Refrigerante Não Inicia

1. Confirme a formação e a conexão à rede.
2. Verifique se todos os 24 geradores de campo são do mesmo tier.
3. Compare o tier MK exibido com o requisito da receita no JEI.
4. Verifique a disponibilidade exata de fluido/item de entrada e a capacidade de saída.
5. Inspecione threads pausadas e a temperatura global.

Não confunda o próprio requisito de resfriamento da Crioforja com o refrigerante que ela está
fabricando: o fluido produzido ainda precisa de um destino de saída válido.
