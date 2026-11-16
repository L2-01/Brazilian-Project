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

O **Construtor do Reator** coloca o **interior e a casca do reator** a partir dos materiais no seu buffer e tanque. Ele **não** coloca o **Controlador do Reator**, as **portas de energia** nem as **portas de recursos** — veja [Primeiros passos](getting_started.md).

## O que a construção coloca (em ordem)

1. Casca de **revestimento** (opcionalmente com **topo aberto** para edições posteriores)
2. **Controladores de barras** na camada superior acima de cada coluna de barras
3. **Barras de reator** no padrão interior
4. Dissipadores de calor **fluidos** (1000 mB por célula) quando configurados
5. Blocos de dissipador de calor **sólidos** nas células interiores restantes

## Fluxo de trabalho típico

1. **Coloque** o construtor encostado na área pretendida (a orientação importa).
2. **Abra** a GUI: defina **tamanho**, **padrão de barras**, **modo de padrão**, tipo de dissipador e **topo aberto** se necessário.
   - Padrão **Site**: cole uma **semente / URL** de design; as células de dissipadores de calor / barras seguem a semente (incluindo dissipadores de calor mistos por coluna). No Site, o botão de alternar dissipador de calor fica inativo.
3. **Prévia** (abaixo de Centralizar) — borda roxa, posições de barras em amarelo, vermelho = blocos inválidos/extras. Avisos de status aparecem **ao lado de Centralizar**.
4. **Marcar entrada** (logo acima do buffer do construtor):
   - Atribua espaços do buffer a itens específicos (veja as dicas dos botões).
   - **Arraste itens do JEI** para os espaços do buffer para criar filtros de marcação fantasmas; dê dois cliques em um espaço para limpar.
5. **Construa** quando o buffer/tanque tiver materiais suficientes; **Pare** se zonas vermelhas aparecerem ou se precisar editar.
6. **Remova ou ignore** o bloco construtor — ele não faz parte do multibloco.
7. **Adicione manualmente** o [controlador, a porta de energia e a(s) porta(s) de recursos](getting_started.md) após a construção — controlador **fora** de uma parede; portas na **mesma** face, substituindo células de **vidro**.

A **Simulação** estima estatísticas e contagens de materiais (sementes do Site incluídas quando válidas); ela **não** liga o reator de verdade.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="210" pitch="25" />
</GameScene>

Exemplo de layout **concluído** (construtor + portas colocadas à mão na **moldura do revestimento**). Veja [Primeiros passos](getting_started.md) para as legendas.
