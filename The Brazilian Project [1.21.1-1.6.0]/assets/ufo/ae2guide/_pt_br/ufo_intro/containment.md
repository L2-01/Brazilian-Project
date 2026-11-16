---
navigation:
  parent: ufo_intro/materials.md
  title: Conceitos de Contenção (CCA & MCS)
  position: 80
item_ids:
  - ufo:aether_containment_capsule
  - ufo:safe_containment_matter
---

# Contenção Segura & Cápsulas Aether

São contêineres funcionais de um slot para recursos marcados como perigosos.

<div style="display: flex; gap: 10px; margin-bottom: 20px;">
  <ItemImage id="ufo:safe_containment_matter" scale="2" />
  <ItemImage id="ufo:aether_containment_capsule" scale="2" />
</div>

## MCS — Contêiner de Itens Perigosos

1. Segure a MCS em uma mão e um monte de itens perigosos na outra.
2. Use a MCS para guardar esse monte em seu único slot interno.
3. Para recuperá-lo, deixe a outra mão vazia e use a MCS novamente.

A tooltip mostra o item contido. Itens não perigosos são rejeitados.

## CCA — Contêiner de Fluidos Perigosos

A CCA armazena até **4.000 mB** de um fluido da tag de fluidos perigosos do UFO.

1. Segure a CCA e outro contêiner de fluido em mãos opostas.
2. Use normalmente para transferir fluido perigoso do outro contêiner para a
   CCA.
3. Use agachado para transferir até 1.000 mB da CCA para o outro contêiner.

A CCA rejeita fluidos sem a tag e nunca mistura um fluido diferente em uma
cápsula ocupada. Ingredientes de receita e tags continuam configuráveis pelo pacote; use o JEI
para encontrar o caminho de fabricação atual.
