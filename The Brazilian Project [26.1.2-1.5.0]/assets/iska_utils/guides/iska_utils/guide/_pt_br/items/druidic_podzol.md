---
navigation:
  title: Podzol Druídico
  icon: iska_utils:druidic_podzol
  parent: hubs/mobfarm_soils.md
  position: 2
item_ids:
  - iska_utils:druidic_podzol
categories:
  - Solos de Farm de Criaturas
---
# Podzol Druídico

<ItemImage id="iska_utils:druidic_podzol" />

Use <ItemImage id="iska_utils:druidic_agglomeration" /> **Aglomeração Druídica** para conversão instantânea de manchas — veja aquela página.

## Comportamento

- Na **luz**, **cada** bloco de podzol roda seu próprio temporizador de geração para **animais do bioma**. Animais muito resistentes são pulados.
- Na **escuridão**, o bloco **não faz nada** — sem gerações, **sem** mudança de bloco (diferente do Solo Entrópico → Terra Entrópica).
- **Redstone** numa **mancha conectada** (um relógio na borda basta) coloca todo podzol iluminado daquela mancha em temporizadores rápidos de geração (como a terra deliciosa do Mob Grinding Utils): cada célula válida tenta com recarga própria de **20–60 tiques** (máx. **8** animais por perto por bloco). Atualizações de vizinhos renovam a marca da mancha e podem disparar uma tentativa imediata.

## Espalhamento natural

- Converte lentamente apenas **terra e podzol** adjacentes — não grama, não solo/terra entrópica.
- Não se espalha sobre podzol druídico já colocado.

## Itens Largados

Quebra como podzol: larga **terra** a menos que minerado com **Toque Suave** (aí larga o bloco de podzol).

## Contraste com o Solo Entrópico

Veja **Solo Entrópico** para gerações na escuridão, decaimento na luz e restauração com **Gota de Entropia**. Espalhamento natural e aglomeração seguem as regras corruptivo vs. abençoado descritas em **Solos de Farm de Criaturas**.