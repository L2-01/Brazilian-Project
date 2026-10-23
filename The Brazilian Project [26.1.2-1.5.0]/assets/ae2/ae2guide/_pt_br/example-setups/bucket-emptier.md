---
navigation:
  parent: example-setups/example-setups-index.md
  title: Esvaziador de Baldes
  icon: minecraft:bucket
---

# Esvaziador de Baldes

Veja também [Enchedor de Baldes](bucket-filler.md).

Note que, como usa um <ItemLink id="pattern_provider" />, isto é feito para se integrar à sua configuração de
[fabricação automática](../ae2-mechanics/autocrafting.md).

Às vezes a vida é inconveniente e você precisa do fluido em si, mas só consegue produzi-lo dentro de um balde. Às vezes uma máquina pode fazer isso por você
(como o Fluid Transposer do Thermal Expansion), mas talvez você não tenha sempre um mod que o faça convenientemente. Por sorte,
o Minecraft vanilla tem um jeito um pouco menos conveniente, o <ItemLink id="minecraft:dispenser" />.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_emptier.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) Provedor de Padrões: Configurado para travar processamento "Com sinal de redstone" e modo de bloqueio ativado, com os padrões de processamento relevantes.

        <Row>
        ![Fill Pattern](../assets/diagrams/water_empty_pattern_small.png)
        ![Fill Pattern](../assets/diagrams/lava_empty_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (2) Interface: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 2 1.1" max="3.9 2.2 1.9">
        (3) Storage Bus #1: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) Annihilation Plane: Sem GUI para configurar.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 1.2 0.8" max="3.8 1.8 1">
        (5) Import Bus: Filtrado para baldes.
        <ItemImage id="minecraft:bucket" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (6) Storage Bus #2: Em sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está configurado para travar processamento "Com sinal de redstone" e modo de bloqueio ativado,
  com os <ItemLink id="processing_pattern" />s relevantes.
  
    ![Padrão do Carregador](../assets/diagrams/water_empty_pattern.png)
    ![Padrão do Carregador](../assets/diagrams/lava_empty_pattern.png)

* A <ItemLink id="interface" /> (2) está em sua configuração padrão.
* O primeiro <ItemLink id="storage_bus" /> (3) está em sua configuração padrão.
* O <ItemLink id="annihilation_plane" /> (4) não tem GUI e não pode ser configurado.
* O <ItemLink id="import_bus" /> (5) está filtrado para baldes.
  <ItemImage id="minecraft:bucket" scale="2" />
* O segundo <ItemLink id="storage_bus" /> (6) está em sua configuração padrão.

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para dentro da <ItemLink id="interface" />.
   (Na verdade, como otimização, ele empurra diretamente através do ponto de armazenamento como se ele fosse uma extensão das faces do provedor. Os itens nunca entram de fato na interface.)
2. Por meio dos mecanismos descritos em [sub-redes de tubulação](pipe-subnet.md#providing-to-multiple-places),
   o balde acaba no <ItemLink id="minecraft:dispenser" />.
3. O <ItemLink id="minecraft:comparator" /> detecta o balde no ejetor e, assim, alimenta simultaneamente o ejetor e trava
   o <ItemLink id="pattern_provider" />.
4. O ejetor despeja o fluido do balde; agora ele tem um balde vazio dentro de si.
5. O <ItemLink id="import_bus" /> puxa o balde vazio para fora do ejetor e o armazena através do
   <ItemLink id="storage_bus" /> no provedor de padrões, devolvendo-o à rede principal.
6. O comparador vê que o ejetor está vazio, desbloqueando o provedor.
