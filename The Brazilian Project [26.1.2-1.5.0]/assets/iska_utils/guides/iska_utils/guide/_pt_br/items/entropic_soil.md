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
  - MobFarm Soils
---
# Solo Entrópico

<ItemImage id="iska_utils:entropic_soil" />

Use <ItemImage id="iska_utils:entropic_agglomeration" /> **Aglomeração Entrópica** para conversão instantânea de trechos — veja essa página. Abaixo: comportamento do bloco e propagação **natural** por tiques aleatórios.

## Comportamento

- **Luz** (do céu ou de blocos) transforma solo entrópico em **Terra Entrópica** (a terra não se propaga para blocos vanilla).
- Na **escuridão**, **cada** bloco de solo roda seu próprio temporizador de spawn. Criaturas muito fortes são puladas. As criaturas geradas ganham **Empoderamento Entrópico**.
- **Redstone** num **trecho conectado** (um relógio na borda basta) coloca todo bloco daquele trecho em temporizadores rápidos de spawn (como a terra horrenda do Mob Grinding Utils): cada bloco válido tenta no seu próprio cooldown de **20–60 tiques** (máx. **8** hostis próximos por bloco). Atualizações de vizinhos renovam a marca do trecho e podem disparar uma tentativa imediata.

## Propagação natural

- Converte lentamente **grama ou terra vanilla** adjacentes (não podzol druídico, não solo entrópico já existente).
- Mais rápida quando o bloco de grama/terra toca um bloco de **solo entrópico** (avanço pela borda do trecho).
- **Terra Entrópica** ao lado de solo entrópico é reconvertida em solo rapidamente (bem mais rápido que a propagação vanilla).

## Terra Entrópica

<ItemImage id="iska_utils:entropic_dirt" />

A forma escurecida do solo entrópico. **Solo Entrópico** adjacente a reconverte naturalmente, ou use uma <ItemImage id="iska_utils:drop_of_entropy" /> **Gota de Entropia** (clique direito) para restauração instantânea. Após exposição **longa** à luz, a terra entrópica reverte a **terra vanilla**; a escuridão pausa o temporizador.
