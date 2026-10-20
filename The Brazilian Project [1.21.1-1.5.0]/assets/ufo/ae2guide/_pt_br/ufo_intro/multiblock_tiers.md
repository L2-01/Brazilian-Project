---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Níveis de Multibloco
  position: 45
---

# Níveis de Multibloco

Os multiblocos universais usam um sistema compartilhado de **nível MK**.

## Bloqueio de Receitas
- Controladores **MK1** executam receitas MK1.
- Controladores **MK2** executam receitas MK1 e MK2.
- Controladores **MK3** executam receitas MK1, MK2 e MK3.

Se o nível da máquina estiver abaixo do nível da receita, a receita fica bloqueada.

## Bônus de Nível
Quando um multibloco de nível superior executa uma receita de nível inferior, ele recebe escalonamento automático:

- **Tempo**: reduzido pela metade para cada nível acima da receita.
- **Energia**: reduzida para **75%** para cada nível acima da receita.

Exemplos:
- Máquina MK2 executando receita MK1 = **2x de velocidade** e **25% menos energia**
- Máquina MK3 executando receita MK1 = **4x de velocidade** e **43,75% menos energia**

## Por Que Isso Importa
Melhorar os níveis não serve apenas para desbloquear novas receitas. Também comprime linhas de produção antigas em uma taxa de processamento de fundo muito mais rápida.

É isso que permite a uma base avançada manter cadeias antigas funcionando enquanto o jogador avança para simulações mais pesadas e automação de multiblocos.
