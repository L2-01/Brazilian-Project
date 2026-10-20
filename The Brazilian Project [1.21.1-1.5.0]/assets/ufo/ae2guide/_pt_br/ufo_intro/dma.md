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

O **DMA** é a primeira máquina avançada do UFO Future. Ele lida com receitas de itens sem formato, fluidos-base opcionais, catalisadores e gerenciamento de calor.

## Ciclo Básico
1. Insira itens na grade de 9 espaços.
2. Encha o **tanque de fluido-base** apenas quando a receita pedir uma entrada de fluido.
3. Encha o **tanque de refrigerante** com um refrigerante válido.
4. Adicione catalisadores se quiser mudanças de velocidade, eficiência ou rendimento.
5. Forneça energia AE e deixe o DMA processar.

## Tanques
- **Tanque de refrigerante**: não faz parte do custo da receita. Ele só remove calor do DMA.
- **Tanque de fluido-base**: consumido por receitas que pedem explicitamente entradas de fluido.

Receitas de DMA não devem pedir refrigerante nas suas entradas normais de fluido. Refrigerantes pertencem apenas ao tanque de refrigerante.

## Progressão de Refrigerante
- **Criotêmio Gélido**: remove **1 UC por 24 mB**, até **1000 mB/tique**.
- **Refrigerante Estável**: remove **50 UC por mB**, até **10 mB/tique**.
- **Condensado de Bose-Einstein**: remove **200 UC por mB**, até **10 mB/tique**.
- **Luz Estelar Líquida**: refrigerante utilitário que remove **30 UC por mB**, até **10 mB/tique**.

O caminho pretendido é **Gélido -> Estável -> Temporal**. Se você forçar configurações de catalisadores pesadas em Crono cedo demais, o Criotêmio Gélido não dará conta por muito tempo.

## Calor e Fusão
- Geração de calor base enquanto trabalha: **+1 UC a cada 4 tiques** = **+5 UC/s** antes dos multiplicadores de calor dos catalisadores.
- Resfriamento passivo enquanto ocioso: **-1 UC a cada 40 tiques** = **-0,5 UC/s**.
- Abaixo de 50% de calor: operação estável.
- Acima de 50% de calor: zona de perigo, efeitos visuais de aviso e dano nas proximidades.
- A 100% de calor: contagem regressiva de fusão, depois uma explosão destrutiva se a máquina não for resfriada a tempo.

## Catalisadores
- **Fluxo de Matéria**: melhora a eficiência.
- **Crono**: aumenta a velocidade, mas dispara o calor.
- **Sobrefluxo**: aumenta a estabilidade térmica.
- **Quântico**: foca no comportamento de saída avançado.
- **Catalisador Dimensional**: substituição de tier criativo.

## Onde Ele se Encaixa Agora
O DMA é o ponto de entrada e o fabricador flexível de máquina única. Quando suas receitas ficam extremamente caras ou precisam de rendimento automatizado baseado em padrões, a progressão avança para a linha de multiblocos:

- **Fabricador de Matéria Quântica**
- **Fatiador Quântico**
- **Montador de Processador Quântico**

*Veja também: [Sistema de Catalisadores](catalysts.md) · [Fabricador de Matéria Quântica](qmf.md) · [Tiers de Multibloco](multiblock_tiers.md)*
