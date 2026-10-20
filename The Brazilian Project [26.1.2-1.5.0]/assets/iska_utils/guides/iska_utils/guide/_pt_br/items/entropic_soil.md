---
navigation:
  title: Solo Entrópico
  icon: iska_utils:entropic_soil
  parent: hubs/mobfarm_soils.md
  position: 0
item_ids:
  - iska_utils:entropic_soil
  - iska_utils:entropic_dirt
categories:
  - Solos de Farm de Criaturas
---
# Solo Entrópico

<ItemImage id="iska_utils:entropic_soil" />

Use <ItemImage id="iska_utils:entropic_agglomeration" /> **Aglomeração Entrópica** para conversão instantânea de manchas — veja aquela página. Abaixo: comportamento do bloco e espalhamento **natural** por tique aleatório.

## Comportamento

- **Luz** (do céu ou de blocos) transforma o solo entrópico em **Terra Entrópica** (a terra não se espalha sobre blocos vanilla).
- Na **escuridão**, **cada** bloco de solo roda seu próprio temporizador de geração. Criaturas muito resistentes são puladas. Criaturas geradas ganham **Empoderamento Entrópico**.
- **Redstone** numa **mancha conectada** (um relógio na borda basta) coloca todo bloco daquela mancha em temporizadores rápidos de geração (como a terra temível do Mob Grinding Utils): cada célula válida tenta com recarga própria de **20–60 tiques** (máx. **8** hostis por perto por bloco). Atualizações de vizinhos renovam a marca da mancha e podem disparar uma tentativa imediata.

## Espalhamento natural

- Converte lentamente **grama ou terra vanilla** adjacentes (não podzol druídico, não solo entrópico existente).
- Mais rápido quando a célula de grama/terra toca um bloco de **solo entrópico** (avanço da borda da mancha).
- **Terra Entrópica** ao lado de solo entrópico é recuperada de volta a solo rapidamente (bem mais rápido que o espalhamento vanilla).

## Terra Entrópica

<ItemImage id="iska_utils:entropic_dirt" />

A forma escurecida do solo entrópico. **Solo Entrópico** adjacente a recupera naturalmente, ou use uma <ItemImage id="iska_utils:drop_of_entropy" /> **Gota de Entropia** (clique direito) para restauração instantânea. Após exposição **longa** à luz, a terra entrópica reverte a **terra vanilla**; a escuridão pausa o temporizador.