---
navigation:
  parent: multiblock/multiblock-index.md
  title: Construtor do Reator
  icon: reactor_builder
  position: 30
item_ids:
  - colossal_reactors:reactor_builder
categories:
  - multiblock
---

# Construtor do Reator

<BlockImage id="reactor_builder" scale="4" />

O **Construtor do Reator** coloca o **interior e o casco do reator** a partir dos materiais em seu buffer e tanque. Ele **não** coloca o **Controlador do Reator**, as **portas de energia** ou as **portas de recursos** - veja [Primeiros passos](getting_started.md).

## O que o Construtor coloca (em ordem)

1. Casco de **Revestimento** (opcionalmente **topo aberto** para edições posteriores)
2. **Controladores de barras** na camada superior acima de cada coluna de barras
3. **Barras de reator** no padrão interno
4. Dissipadores de calor de **fluido** (1000 mB por célula) quando configurado
5. Blocos dissipadores de calor **sólidos** nas células internas restantes

## Fluxo de trabalho típico

1. **Coloque** o construtor encostado na área desejada (a orientação importa).
2. **Abra** a interface: defina **tamanho**, **padrão de barras**, **modo de padrão**, tipo de dissipador de calor e **topo aberto**, se necessário.
3. **Prévia** - borda roxa, posições de barras em amarelo, vermelho = blocos inválidos/extras.
4. **Marque a entrada** - atribua slots do buffer a itens específicos (veja as dicas dos botões).
5. **Construa** quando o buffer/tanque tiver materiais suficientes; **Pare** se aparecerem zonas vermelhas ou se precisar editar.
6. **Remova ou ignore** o bloco construtor - ele não faz parte do multibloco.
7. **Adicione manualmente** o [controlador, a porta de energia e a(s) porta(s) de recursos](getting_started.md) após a construção - o controlador **fora** de uma parede; as portas na **mesma** face, substituindo células de **vidro**.

A **Simulação** no construtor estima estatísticas e quantidades de materiais; ela **não** liga o reator de verdade.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="210" pitch="25" />
</GameScene>

Exemplo de estrutura **concluída** (casco do construtor + controlador e portas colocados à mão). Veja [Primeiros passos](getting_started.md) para os rótulos.
