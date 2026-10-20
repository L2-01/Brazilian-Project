---
navigation:
  parent: example-setups/example-setups-index.md
  title: Farm de Ametista
  icon: minecraft:amethyst_shard
---

# Cultivo de Ametista

Embora o <ItemLink id="growth_accelerator" /> funcione na ametista, os métodos usuais de filtrar [brotos de certus](../items-blocks-machines/budding_certus.md)
com um <ItemLink id="annihilation_plane" /> não funcionam em brotos de ametista. Ao contrário dos brotos de certus não maduros, que largam
<ItemLink id="certus_quartz_dust" />, brotos de ametista não maduros não largam nada, então um plano de aniquilação sempre os quebrará,
porque uma rede sempre consegue armazenar "nada".

A forma de contornar isso é encantar o plano de aniquilação com Toque Suave. Assim os brotos de ametista não maduros *de fato* largam algo
(os vários estágios dos blocos físicos de broto), e portanto podem ser filtrados.

O <ItemLink id="minecraft:amethyst_cluster" /> deve então ser colocado de novo por um <ItemLink id="formation_plane" />, para então ser
re-quebrado por um <ItemLink id="annihilation_plane" /> sem Toque Suave, a fim de obter <ItemLink id="minecraft:amethyst_shard" />s.

Note que, devido à direcionalidade do agregado, deve haver uma face de bloco sólida diretamente oposta ao plano de formação.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/amethyst_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 1 1" max="3 2 2">
        (1) Plano de Aniquilação #1: Sem GUI para configurar, mas encantado com Toque Suave.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1 1" max="2.3 2 2">
        (2) Plano de Formação: Filtrado para Agregado de Ametista.
        <ItemImage id="minecraft:amethyst_cluster" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 0.7 1" max="2 1 2">
        (3) Plano de Aniquilação #2: Sem GUI para configurar, mas pode ser encantado com Fortuna.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="1.3 1 2">
        (4) Ponto de Armazenamento #1: Filtrado para Fragmento de Ametista.
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 .7" max="1 1 1">
        (5) Ponto de Armazenamento #2: Filtrado para Fragmento de Ametista. Tem prioridade definida acima do seu armazenamento principal.
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O primeiro <ItemLink id="annihilation_plane" /> (1) não tem GUI e não pode ser configurado, mas deve ser encantado com Toque Suave.
* O <ItemLink id="formation_plane" /> (2) está filtrado para <ItemLink id="minecraft:amethyst_cluster" />.
* O segundo <ItemLink id="annihilation_plane" /> (3) não tem GUI e não pode ser configurado, mas pode ser encantado com fortuna.
* O primeiro <ItemLink id="storage_bus" /> (4) está filtrado para <ItemLink id="minecraft:amethyst_shard" />.
* O segundo <ItemLink id="storage_bus" /> (5) está filtrado para <ItemLink id="minecraft:amethyst_shard" />, e tem sua
  [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) definida acima do seu armazenamento principal.

## Como Funciona

1. O primeiro <ItemLink id="annihilation_plane" /> tenta quebrar o que está à sua frente, mas só consegue quebrar <ItemLink id="minecraft:amethyst_cluster" />
    porque o único armazenamento na sub-rede é o <ItemLink id="formation_plane" />, filtrado para agregado de ametista. Isso só funciona porque
o plano está encantado com Toque Suave; caso contrário, ele conseguiria quebrar os brotos não maduros porque eles não largam nada.
2. O <ItemLink id="formation_plane" /> coloca o agregado no bloco oposto a ele.
3. O segundo <ItemLink id="annihilation_plane" /> quebra o agregado, produzindo <ItemLink id="minecraft:amethyst_shard" />.
4. O primeiro <ItemLink id="storage_bus" /> armazena os fragmentos no barril. Isto tecnicamente não precisa ser filtrado porque a única
coisa que o segundo plano de aniquilação deveria encontrar são agregados totalmente crescidos.
5. O segundo <ItemLink id="storage_bus" /> dá à rede principal acesso a todos os fragmentos de ametista no barril. Está configurado com
[prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) alta para que fragmentos de ametista sejam preferencialmente
colocados de volta no barril em vez de no seu armazenamento principal.
