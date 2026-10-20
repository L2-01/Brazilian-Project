---
navigation:
  title: Silenciador de Som
  icon: iska_utils:sound_muffler
  parent: hubs/world_and_machines.md
  position: 52
item_ids:
  - iska_utils:sound_muffler
categories:
  - Mundo e máquinas
  - Ambiência
---
# Silenciador de Som

<ItemImage id="iska_utils:sound_muffler" />

## O que faz

- Atenua **sons tocados** para jogadores dentro do seu **alcance esférico** (mínimo de **8** blocos). O volume é **por categoria**, não um botão mestre único.
- **Música** não é tratada por esses controles (a música do cliente fica separada).

## GUI principal

- **Alcance**: amplie ou reduza a bolha onde a atenuação se aplica; controles adicionais costumam usar botões +/− em degraus (veja as dicas).
- **Uma linha por categoria** (ordem típica): **Todos**, **Outros** (sons de mod não catalogados / incomuns), **Discos**, **Clima**, **Blocos**, **Hostis**, **Neutros**, **Jogadores**, **Ambiente**, **Voz**.
- Cada categoria tem seu próprio nível de **0–100%**: **0** = efetivamente silencia aquele grupo dentro do alcance, **100** = sem redução para aquele grupo.

## Tela de filtro

- Abra **Filtro** para gerenciar uma **lista de IDs de som** (ex.: `minecraft:entity.creeper.primed`).
- Alterne **lista de permissão** vs **lista de bloqueio** (como a lista interage com este silenciador):
  - **Lista de permissão**: IDs na lista ficam **isentos** — este bloco **não** atenua aqueles sons (todo o resto ainda usa os controles de categoria).
  - **Lista de bloqueio**: apenas IDs na lista são atenuados por este bloco; sons **não** listados passam **inalterados** por este silenciador.
- Quando a lista está **vazia**, o filtro fica inativo e **apenas** os volumes de categoria se aplicam.
- Use a **pesquisa** para achar IDs rapidamente em pacotes grandes.