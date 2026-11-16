---
navigation:
  parent: ufo_intro/quantum_cryoforge.md
  title: Estrutura e Auto-construção
  icon: ufo:quantum_hyper_mechanical_casing
  position: 10
---

# Estrutura da Crioforja Quântica

A Crioforja redesenhada ocupa um volume de **9×14×9**. Gire a cena gerada
para inspecionar sua câmara de Gelo Azul e a treliça de geradores de campo.

<GameScene zoom="3.2" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/quantum_cryoforge.snbt" />
  <DiamondAnnotation pos="4.5 1.5 0.5" color="#80c6ff">Controlador da Crioforja</DiamondAnnotation>
  <DiamondAnnotation pos="4.5 1.5 4.5" color="#7ae7f2">câmara de Gelo Azul</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Materiais Padrão da Auto-construção

| Componente | Quantidade | Regra de posicionamento |
|---|---:|---|
| <ItemLink id="ufo:quantum_hyper_mechanical_casing" /> | 226 | Posições de carcaça; escotilhas universais válidas podem substituir slots permitidos manualmente |
| <ItemLink id="ae2:quartz_vibrant_glass" /> | 16 | Posições de vidro fixas |
| <ItemLink id="ae2:quartz_block" /> | 86 | Estrutura de quartzo fixa |
| <ItemLink id="ae2:fluix_block" /> | 72 | Condutos de fluix fixos |
| <ItemLink id="ufo:stellar_field_generator_t1" /> ou um tier superior uniforme | 45 | Determina o tier da máquina |
| <ItemLink id="minecraft:blue_ice" /> | 40 | Câmara fria fixa |
| <ItemLink id="ufo:quantum_cryoforge_controller" /> | 1 | Coloque primeiro |

A auto-construção usa a carcaça padrão nas posições flexíveis `B`. Instale as escotilhas
universais exigidas em slots de carcaça válidos antes do escaneamento final. Use as
Alternativas do JEI para inspecionar as substituições aceitas.
