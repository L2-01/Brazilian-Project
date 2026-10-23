---
navigation:
  title: Podzol Druídico
  icon: iska_utils:druidic_podzol
  parent: hubs/mobfarm_soils.md
  position: 2
item_ids:
  - iska_utils:druidic_podzol
categories:
  - MobFarm Soils
---
# Podzol Druídico

<ItemImage id="iska_utils:druidic_podzol" />

Use <ItemImage id="iska_utils:druidic_agglomeration" /> **Aglomeração Druídica** para conversão instantânea de trechos — veja essa página.

## Comportamento

- Na **luz**, **cada** bloco de podzol roda seu próprio temporizador de spawn para **animais do bioma**. Animais muito fortes são pulados.
- Na **escuridão**, o bloco não faz **nada** — sem spawns, **sem** mudança de bloco (diferente de Solo Entrópico → Terra Entrópica).
- **Redstone** num **trecho conectado** (um relógio na borda basta) coloca todo podzol iluminado daquele trecho em temporizadores rápidos de spawn (como a terra deliciosa do Mob Grinding Utils): cada bloco válido tenta no seu próprio cooldown de **20–60 tiques** (máx. **8** animais próximos por bloco). Atualizações de vizinhos renovam a marca do trecho e podem disparar uma tentativa imediata.

## Propagação natural

- Converte lentamente apenas **terra e podzol** adjacentes — não grama, não solo/terra entrópica.
- Não se propaga para podzol druídico já colocado.

## Drops

Quebra como podzol: derruba **terra** a menos que minerado com **Toque Suave** (aí derruba o bloco de podzol).

## Contraste com o Solo Entrópico

Veja **Solo Entrópico** para spawns na escuridão, degradação pela luz e restauração com **Gota de Entropia**. A propagação natural e a aglomeração seguem as regras corruptivo vs. abençoado descritas em **Solos de Farm de Criaturas**.
