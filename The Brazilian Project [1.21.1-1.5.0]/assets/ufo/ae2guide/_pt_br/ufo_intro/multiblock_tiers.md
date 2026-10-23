---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Tiers de Multibloco
  position: 45
---

# Tiers de Multibloco

Os multiblocos universais usam um sistema de **tier MK** compartilhado.

## Travamento de Receitas
- Controladores **MK1** executam receitas MK1.
- Controladores **MK2** executam receitas MK1 e MK2.
- Controladores **MK3** executam receitas MK1, MK2 e MK3.

Se o tier da máquina for inferior ao da receita, a receita permanece travada.

## Bônus de Tier
Quando um multibloco de tier mais alto executa uma receita de tier mais baixo, ele ganha escalonamento automático:

- **Tempo**: reduzido pela metade para cada tier acima da receita.
- **Energia**: reduzida a **75%** para cada tier acima da receita.

Exemplos:
- Máquina MK2 executando receita MK1 = **velocidade 2x** e **25% menos energia**
- Máquina MK3 executando receita MK1 = **velocidade 4x** e **43,75% menos energia**

## Por Que Isso Importa
Subir de tier não serve apenas para desbloquear novas receitas. Também comprime linhas de produção antigas em uma vazão de fundo muito mais rápida.

É isso que permite a uma base de fim de jogo manter cadeias antigas rodando enquanto o jogador avança para simulações mais pesadas e automação por multiblocos.
