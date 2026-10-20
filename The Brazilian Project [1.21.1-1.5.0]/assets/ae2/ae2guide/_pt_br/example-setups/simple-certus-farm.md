---
navigation:
  parent: example-setups/example-setups-index.md
  title: Farm Simples de Certus
  icon: certus_quartz_crystal
  position: 110
---

# Farm Simples de Certus

Como mencionado em [Crescimento do Certus](../ae2-mechanics/certus-growth.md), a automação da colheita de <ItemLink id="certus_quartz_crystal" />
envolve <ItemLink id="annihilation_plane" />s e <ItemLink id="storage_bus" />s. 
<ItemLink id="growth_accelerator" />s são usados para acelerar massivamente o crescimento dos brotos de quartzo certus, e então os planos
quebram o <ItemLink id="quartz_cluster" /> totalmente crescido. Eles são filtrados tirando proveito da característica suspeitosamente conveniente de que brotos
de certus não maduros largam <ItemLink id="certus_quartz_dust" /> em vez de não largar nada.

Esta farm funciona totalmente automaticamente com <ItemLink id="flawless_budding_quartz" />, mas com drusa de quartzo certus
imperfeita, barata e danificada você terá que substituir o bloco de drusa manualmente. Ou, como descrito em [Farm de Certus Semiautomática](semiauto-certus-farm.md)
e [Farm de Certus Avançada](advanced-certus-farm.md), automaticamente.

Veja [Crescimento do Certus](../ae2-mechanics/certus-growth.md) para velocidades estimadas.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/simple_certus_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="3.7 1 1" max="4 2 2">
        (1) Plano de Aniquilação: Sem GUI para configurar, mas pode ser encantado com Fortuna.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="3.3 2 2">
        (2) Ponto de Armazenamento #1: Filtrado para Cristal de Quartzo Certus.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 .7" max="2 2 1">
        (3) Ponto de Armazenamento #2: Filtrado para Cristal de Quartzo Certus. Tem prioridade definida acima do armazenamento principal.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O primeiro <ItemLink id="annihilation_plane" /> (1) não tem GUI e não pode ser configurado, mas pode ser encantado com fortuna.
* O primeiro <ItemLink id="storage_bus" /> (2) está filtrado para <ItemLink id="certus_quartz_crystal" />.
* O segundo <ItemLink id="storage_bus" /> (3) está filtrado para <ItemLink id="certus_quartz_crystal" />, e tem sua
  [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) definida acima do armazenamento principal.

## Como Funciona

1. O <ItemLink id="annihilation_plane" /> tenta quebrar o que está à sua frente, mas só consegue quebrar <ItemLink id="quartz_cluster" />
   porque o único armazenamento na sub-rede é o <ItemLink id="storage_bus" />, filtrado para <ItemLink id="certus_quartz_crystal" />.
4. O primeiro <ItemLink id="storage_bus" /> armazena os cristais de quartzo certus no barril.
5. O segundo <ItemLink id="storage_bus" /> dá à rede principal acesso a todos os cristais de quartzo certus no barril. Está configurado com
   [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) alta para que cristais de quartzo certus sejam preferencialmente
   colocados de volta no barril em vez de no seu armazenamento principal.
