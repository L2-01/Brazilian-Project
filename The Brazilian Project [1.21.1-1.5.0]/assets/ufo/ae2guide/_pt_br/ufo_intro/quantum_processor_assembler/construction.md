---
navigation:
  parent: ufo_intro/quantum_processor_assembler.md
  title: Estrutura e Auto-construção
  icon: ufo:quantum_hyper_mechanical_casing
  position: 10
---

# Estrutura do Montador de Processador

O Montador ocupa **5×7×12**. Sua geometria interna de campos difere tanto do
QMF quanto do Fatiador; não reutilize o plano de camadas de outra máquina.

<GameScene zoom="4" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/quantum_processor_assembler.snbt" />
  <DiamondAnnotation pos="2.5 3.5 0.5" color="#80c6ff">Controlador do Montador de Processador</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Lista de Materiais

| Componente | Quantidade |
|---|---:|
| <ItemLink id="ufo:quantum_hyper_mechanical_casing" /> | 80 (um vira Buffer ou Proxy de Padrões) |
| <ItemLink id="ae2:quartz_vibrant_glass" /> | 73 (fixo) |
| <ItemLink id="ae2:quartz_block" /> | 16 (fixo) |
| <ItemLink id="ae2:fluix_block" /> | 12 (fixo) |
| <ItemLink id="ufo:stellar_field_generator_t1" /> ou um tier superior uniforme | 72 |
| <ItemLink id="ufo:quantum_pattern_hatch" /> | 1 (substitui uma carcaça) |
| <ItemLink id="ufo:quantum_processor_assembler_controller" /> | 1 |

Coloque o controlador primeiro, leve os demais materiais e use a auto-construção.
Blocos válidos existentes são descontados. Qualquer slot ocupado errado aborta a verificação inicial e
é deixado intacto; use o Escanear/destaques para localizá-lo.
