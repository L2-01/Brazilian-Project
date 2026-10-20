---
navigation:
  parent: ufo_intro/quantum_slicer.md
  title: Estrutura e Construção Automática
  icon: ufo:quantum_hyper_mechanical_casing
  position: 10
---

# Estrutura do Fatiador Quântico

O Fatiador usa uma carcaça assimétrica fixa de **13×5×5**. Os canais de ar abertos visíveis
na cena são intencionais. Arraste para inspecionar cada camada.

<GameScene zoom="4" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/quantum_slicer.snbt" />
  <DiamondAnnotation pos="6.5 2.5 0.5" color="#80c6ff">Controlador do Fatiador</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Lista de Materiais

| Componente | Quantidade |
|---|---:|
| <ItemLink id="ufo:quantum_hyper_mechanical_casing" /> | 143 (uma vira Buffer ou Proxy de Padrões) |
| <ItemLink id="ae2:quartz_vibrant_glass" /> | 36 (fixo) |
| <ItemLink id="ae2:quartz_block" /> | 24 (fixo) |
| <ItemLink id="ae2:fluix_block" /> | 12 (fixo) |
| <ItemLink id="ufo:stellar_field_generator_t1" /> ou um tier superior uniforme | 61 |
| <ItemLink id="ufo:quantum_pattern_hatch" /> | 1 (substitui uma carcaça) |
| <ItemLink id="ufo:quantum_slicer_controller" /> | 1 |

A construção automática faz uma pré-verificação completa, preserva blocos correspondentes e recusa
sobrescrever erros ocupados. Os materiais precisam estar no inventário do jogador.
Após a conclusão, use a Varredura para identificar qualquer campo inválido substituído manualmente.
