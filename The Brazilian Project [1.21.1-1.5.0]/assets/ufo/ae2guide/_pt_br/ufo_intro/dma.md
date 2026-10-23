---
navigation:
  parent: ufo_intro/machines.md
  title: Montador de Matéria Dimensional
  position: 30
item_ids:
  - ufo:dimensional_matter_assembler
---

# Montador de Matéria Dimensional

<BlockImage id="ufo:dimensional_matter_assembler" scale="4"></BlockImage>

O **DMA** é a primeira máquina avançada do UFO Future. Ele lida com receitas de itens sem forma, fluidos base opcionais, catalisadores e gerenciamento de calor.

## Ciclo Principal
1. Insira itens na grade de 9 slots.
2. Encha o **tanque de fluido base** apenas quando a receita pedir um fluido de entrada.
3. Encha o **tanque de refrigerante** com um refrigerante válido.
4. Adicione catalisadores se quiser mudanças de velocidade, eficiência ou rendimento.
5. Forneça energia AE e deixe o DMA processar.

## Tanques
- **Tanque de refrigerante**: não faz parte do custo da receita. Ele apenas remove calor do DMA.
- **Tanque de fluido base**: consumido por receitas que pedem explicitamente fluidos de entrada.

Receitas do DMA não devem pedir refrigerante em suas entradas normais de fluido. Refrigerantes pertencem apenas ao tanque de refrigerante.

## Progressão de Refrigerantes
- **Criotêmio Gélido**: remove **1 HU por 24 mB**, até **1000 mB/tick**.
- **Refrigerante Estável**: remove **50 HU por mB**, até **10 mB/tick**.
- **Condensado de Bose-Einstein**: remove **200 HU por mB**, até **10 mB/tick**.
- **Luz Estelar Líquida**: refrigerante utilitário que remove **30 HU por mB**, até **10 mB/tick**.

O caminho pretendido é **Gélido -> Estável -> Temporal**. Se você exagerar em configurações de catalisadores Crono cedo demais, o Criotêmio Gélido não dará conta por muito tempo.

## Calor e Fusão
- Geração de calor base enquanto trabalha: **+1 HU a cada 4 ticks** = **+5 HU/s** antes dos multiplicadores de calor dos catalisadores.
- Resfriamento passivo enquanto ocioso: **-1 HU a cada 40 ticks** = **-0.5 HU/s**.
- Abaixo de 50% de calor: operação estável.
- Acima de 50% de calor: zona de risco, efeitos visuais de aviso e dano nas proximidades.
- A 100% de calor: contagem regressiva para fusão e depois uma explosão destrutiva se a máquina não for resfriada a tempo.

## Catalisadores
- **Fluxo de Matéria**: melhora a eficiência.
- **Crono**: aumenta a velocidade, mas dispara o calor.
- **Sobrefluxo**: aumenta a estabilidade térmica.
- **Quântico**: foca em comportamento avançado de saída.
- **Catalisador Dimensional**: substituição de nível criativo.

## Onde Ele se Encaixa Agora
O DMA é o ponto de entrada e o fabricante flexível de máquina única. Quando suas receitas ficarem extremamente caras ou precisarem de produção automatizada por padrões, a progressão segue para a linha multibloco:

- **Fabricador de Matéria Quântica**
- **Fatiador Quântico**
- **Montador de Processador Quântico**

*Veja também: [Sistema de Catalisadores](catalysts.md) · [Fabricador de Matéria Quântica](qmf.md) · [Tiers de Multibloco](multiblock_tiers.md)*
