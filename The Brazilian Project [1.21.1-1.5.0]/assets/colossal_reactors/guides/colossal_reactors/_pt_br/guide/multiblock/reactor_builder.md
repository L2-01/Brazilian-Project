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

O **Construtor do Reator** coloca o **interior e a carcaça do reator** a partir dos materiais em seu buffer e tanque. Ele **não** coloca o **Controlador do Reator**, as **portas de energia** ou as **portas de recursos** — veja [Primeiros passos](getting_started.md).

## O que o Build coloca (em ordem)

1. Carcaça de **Revestimento** (opcionalmente com **topo aberto** para edições posteriores)
2. **Controladores de barras** na camada superior acima de cada coluna de barras
3. **Barras de reator** no padrão do interior
4. Dissipadores de calor **fluidos** (1000 mB por célula) quando configurados
5. Blocos de dissipador de calor **sólidos** nas células internas restantes

## Fluxo de trabalho típico

1. **Posicione** o construtor junto à área pretendida (a orientação importa).
2. **Abra** a GUI: defina o **tamanho**, o **padrão de barras**, o **modo de padrão**, o tipo de dissipador de calor e o **topo aberto** se necessário.
3. **Pré-visualização** — borda roxa, posições de barras em amarelo, vermelho = blocos inválidos/extras.
4. **Marcar entrada** — atribua espaços do buffer a itens específicos (veja as dicas dos botões).
5. **Construa** quando o buffer/tanque tiver materiais suficientes; **Pare** se aparecerem zonas vermelhas ou se precisar editar.
6. **Remova ou ignore** o bloco do construtor — ele não faz parte do multibloco.
7. **Manualmente** adicione o [controlador, a porta de energia e a(s) porta(s) de recursos](getting_started.md) após a construção — controlador **fora** de uma parede; portas na **mesma** face, substituindo células de **vidro**.

A **Simulação** no construtor estima estatísticas e contagens de materiais; ela **não** liga o reator de verdade.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="210" pitch="25" />
</GameScene>

Exemplo de disposição **finalizada** (construtor + portas colocadas à mão na **moldura de revestimento**). Veja [Primeiros passos](getting_started.md) para as legendas.
