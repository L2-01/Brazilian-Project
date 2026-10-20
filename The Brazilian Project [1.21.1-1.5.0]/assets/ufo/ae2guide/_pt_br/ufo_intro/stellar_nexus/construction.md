---
navigation:
  parent: ufo_intro/stellar_nexus.md
  title: Estrutura e Núcleo de Campo
  icon: ufo:entropy_singularity_casing
  position: 10
---

# Estrutura e Núcleo de Campo do Nexus Estelar

A topologia atual do Nexus abrange **35×34×35**. A cena é gerada diretamente
do padrão de produção; nenhum mockup conceitual é usado. Cenas grandes podem levar
um momento para inicializar. Arraste para girar e dar zoom.

<GameScene zoom="1.25" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/stellar_nexus.snbt" />
  <DiamondAnnotation pos="18.5 17.5 1.5" color="#80c6ff">Controlador do Nexus Estelar</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Composição Padrão Canônica

| Componente | Quantidade |
|---|---:|
| <ItemLink id="ufo:entropy_singularity_casing" /> | 980 |
| <ItemLink id="ufo:entropy_assembler_core_casing" /> | 534 |
| <ItemLink id="ufo:entropy_computer_condensation_matrix" /> | 168 |
| <ItemLink id="ufo:stellar_field_generator_t1" /> ou um tier superior uniforme | 138 |
| <ItemLink id="ufo:stellar_nexus_controller" /> | 1 |

Algumas posições de carcaça aceitam os papéis de escotilha exigidos em vez da
Carcaça de Singularidade padrão. O Nexus não faz parte da nova família universal 5×5; use
seu próprio visualizador JEI/resultado de varredura e não transplante outra topologia.
