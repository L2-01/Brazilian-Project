---
navigation:
  parent: multiblock/multiblock-index.md
  title: Construtor do Reator
  icon: reactor_builder
  position: 30
item_ids:
  - colossal_reactors:reactor_builder
categories:
  - Multibloco
---

# Construtor do Reator

<BlockImage id="reactor_builder" scale="4" />

O **Construtor do Reator** coloca o **interior e a carcaça do reator** a partir dos materiais no seu buffer e tanque. Ele **não** coloca o **Controlador do Reator**, **portas de energia** ou **portas de recursos** — veja [Começando](getting_started.md).

## O que o Build coloca (em ordem)

1. Carcaça de **revestimento** (opcionalmente **teto aberto** para edições posteriores)
2. **Controladores de barras** na camada superior acima de cada coluna de barras
3. **Barras de reator** no padrão do interior
4. Dissipadores de calor **fluidos** (1.000 mB por célula) quando configurados
5. Blocos de dissipadores de calor **sólidos** nas células internas restantes

## Fluxo de trabalho típico

1. **Coloque** o construtor contra a pegada pretendida (a orientação importa).
2. **Abra** a GUI: defina **tamanho**, **padrão de barras**, **modo de padrão**, tipo de dissipador de calor e **teto aberto** se necessário.
3. **Prévia** — borda roxa, posições de barras em amarelo, vermelho = blocos inválidos/extras.
4. **Marcar entrada** — atribua espaços do buffer a itens específicos (veja as dicas dos botões).
5. **Construa** quando o buffer/tanque tiver materiais suficientes; **Pare** se zonas vermelhas aparecerem ou você precisar editar.
6. **Remova ou ignore** o bloco construtor — ele não faz parte do multibloco.
7. **Manualmente** adicione [controlador, porta de energia e porta(s) de recursos](getting_started.md) depois da construção — controlador **fora** de uma parede; portas na **mesma** face, substituindo células de **vidro**.

A **Simulação** no construtor estima atributos e contagens de materiais; ela **não** liga o reator de verdade.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="210" pitch="25" />
</GameScene>

Exemplo de layout **concluído** (carcaça do construtor + controlador e portas colocados à mão). Veja [Começando](getting_started.md) para os rótulos.
