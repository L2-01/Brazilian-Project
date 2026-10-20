---
navigation:
  parent: ufo_intro/quantum_processor_assembler.md
  title: Estrutura e Construção Automática
  icon: ufo:quantum_hyper_mechanical_casing
  position: 10
---

# Estrutura do Montador de Processador

O Montador ocupa **5×7×12**. Sua geometria interna de campo difere tanto do
QMF quanto do Fatiador; não reutilize o plano de camadas de outra máquina.

<GameScene zoom="4" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/quantum_processor_assembler.snbt" />
  <DiamondAnnotation pos="2.5 3.5 0.5" color="#80c6ff">Controlador do Montador de Processador</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Lista de Materiais

| Componente | Quantidade |
|---|---:|
| <ItemLink id="ufo:quantum_hyper_mechanical_casing" /> | 80 (uma vira Buffer ou Proxy de Padrões) |
| <ItemLink id="ae2:quartz_vibrant_glass" /> | 73 (fixo) |
| <ItemLink id="ae2:quartz_block" /> | 16 (fixo) |
| <ItemLink id="ae2:fluix_block" /> | 12 (fixo) |
| <ItemLink id="ufo:stellar_field_generator_t1" /> ou um tier superior uniforme | 72 |
| <ItemLink id="ufo:quantum_pattern_hatch" /> | 1 (substitui uma carcaça) |
| <ItemLink id="ufo:quantum_processor_assembler_controller" /> | 1 |

Coloque o controlador primeiro, carregue os materiais restantes e use a Construção Automática.
Blocos válidos existentes são descontados. Qualquer espaço ocupado errado aborta a pré-verificação e
fica intocado; use a Varredura/destaques para localizá-lo.
