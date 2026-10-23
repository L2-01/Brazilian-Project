---
navigation:
  title: Silenciador de Som
  icon: iska_utils:sound_muffler
  parent: hubs/world_and_machines.md
  position: 52
item_ids:
  - iska_utils:sound_muffler
categories:
  - World and machines
  - Ambience
---
# Silenciador de Som

<ItemImage id="iska_utils:sound_muffler" />

## O que faz

- Atenua **sons tocados** para jogadores dentro do seu **alcance esférico** (mínimo **8** blocos). O volume é **por categoria**, não um botão mestre único.
- **Música** não é tratada por esses controles (a música do cliente fica separada).

## GUI principal

- **Alcance**: aumente ou diminua a bolha onde a atenuação se aplica; outros controles costumam usar botões +/- em passos (veja os tooltips).
- **Uma linha por categoria** (ordem típica): **Tudo**, **Outros** (sons de mod não catalogados / estranhos), **Discos**, **Clima**, **Blocos**, **Hostil**, **Neutro**, **Jogadores**, **Ambiente**, **Voz**.
- Cada categoria tem seu próprio nível de **0–100%**: **0** = efetivamente silencia aquele grupo dentro do alcance, **100** = sem redução para aquele grupo.

## Tela de filtro

- Abra **Filtro** para gerenciar uma **lista de IDs de som** (ex.: `minecraft:entity.creeper.primed`).
- Alterne **lista de permitidos** vs **lista de bloqueio** (como a lista interage com este silenciador):
  - **Lista de permitidos**: os IDs da lista ficam **isentos** — este bloco **não** atenua esses sons (todo o resto ainda usa os controles de categoria).
  - **Lista de bloqueio**: só os IDs da lista são atenuados por este bloco; sons **não** listados passam **inalterados** por este silenciador.
- Quando a lista está **vazia**, o filtro fica inativo e **apenas** os volumes de categoria se aplicam.
- Use a **busca** para achar IDs rápido em packs cheios.
