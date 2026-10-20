---
navigation:
  parent: example-setups/example-setups-index.md
  title: Farm de Certus Avançada
  icon: certus_quartz_crystal
  position: 120
---

# Farm de Certus Avançada

Isto é basicamente só a [Farm de Certus Semiautomática](semiauto-certus-farm.md), só que totalmente integrada ao seu
sistema ME.

Em vez de ter um grande estoque de blocos de drusa e renová-los manualmente de tempos em tempos,
este esquema usa a [Automação do Carregador](charger-automation.md) e a [Automação de Jogar na Água](throw-in-water-automation.md)
para fazer isso automaticamente.

**ESTA É UMA CONSTRUÇÃO COMPLEXA COM COISAS ESCONDIDAS ATRÁS DE OUTRAS COISAS, GIRE A CÂMERA PARA VÊ-LA DE TODOS OS ÂNGULOS**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/advanced_certus_farm.snbt" />

  <BoxAnnotation color="#ddaaaa" min="3.7 2 1" max="4 3 2">
        (1) Plano de Aniquilação #1: Sem GUI para configurar, mas pode ser encantado com Fortuna.
  </BoxAnnotation>

  <BoxAnnotation color="#ddaaaa" min="2 2 1.7" max="3 3 2">
        (2) Ponto de Armazenamento #1: Filtrado para Cristal de Quartzo Certus.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 2.5 1.5" color="#ff0000">
    Sub-rede Quebradora de Agregados
  </DiamondAnnotation>

  <BoxAnnotation color="#aaddaa" min="3.7 1 1" max="4 2 2">
        (3) Plano de Aniquilação #2: Sem GUI para configurar, mas encantado com Toque Suave.
  </BoxAnnotation>

  <BoxAnnotation color="#aaddaa" min="2 1 1.7" max="3 2 2">
        (4) Ponto de Armazenamento #2: Filtrado para Bloco de Quartzo Certus.
        <BlockImage id="quartz_block" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 1.5 1.5" color="#00ff00">
    Sub-rede Quebradora de Blocos de Certus
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) Plano de Formação: Na sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0.7 2" max="3 1 3">
        (6) Ponto de Importação: Filtrado para Drusa de Quartzo Certus Imperfeita.
        <BlockImage id="flawed_budding_quartz" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    Sub-rede Colocadora de Blocos de Drusa
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="1.7 2 2" max="2 3 3">
        (7) Ponto de Armazenamento #3: Filtrado para Cristal de Quartzo Certus. Tem prioridade definida acima do seu armazenamento principal.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#aaaadd" min="2 1 2" max="3 2 3">
        (8) Interface: Configurada para manter 1 Drusa de Quartzo Certus Imperfeita em si, tem um Cartão de Fabricação.
        <Row><BlockImage id="flawed_budding_quartz" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="1.5 0.5 0" color="#00ff00">
        Para a Rede Principal, Automação do Carregador e Automação de Jogar na Água
        <Row>
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/charger_automation.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/throw_in_water.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
        </Row>
    </DiamondAnnotation>

  <IsometricCamera yaw="165" pitch="5" />
</GameScene>

## Configurações

### Quebradora de Agregados:

* O primeiro <ItemLink id="annihilation_plane" /> (1) não tem GUI e não pode ser configurado, mas pode ser encantado com Fortuna.
* O primeiro <ItemLink id="storage_bus" /> (2) está filtrado para <ItemLink id="certus_quartz_crystal" />.

### Quebradora de Blocos de Certus:

* O segundo <ItemLink id="annihilation_plane" /> (3) não tem GUI e não pode ser configurado, mas deve ser encantado com Toque Suave.
* O segundo <ItemLink id="storage_bus" /> (4) está filtrado para <ItemLink id="quartz_block" />.

### Colocadora de Blocos de Drusa:

* O <ItemLink id="formation_plane" /> (5) está na sua configuração padrão.
* O <ItemLink id="import_bus" /> (6) está filtrado para <ItemLink id="flawed_budding_quartz" />.

### Na Rede Principal:

* O terceiro <ItemLink id="storage_bus" /> (7) está filtrado para <ItemLink id="certus_quartz_crystal" />, e tem sua
  [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) definida acima do seu armazenamento principal.
* A <ItemLink id="interface" /> (8) está configurada para manter 1 Drusa de Quartzo Certus Imperfeita em si, e tem um <ItemLink id="crafting_card" />.

## Como Funciona

### Quebradora de Agregados:

A sub-rede quebradora de agregados funciona de forma muito semelhante à sub-rede da [farm simples de certus](simple-certus-farm.md).

1. O <ItemLink id="annihilation_plane" /> tenta quebrar o que está à sua frente, mas só consegue quebrar <ItemLink id="quartz_cluster" />
   porque o único armazenamento na sub-rede é o <ItemLink id="storage_bus" />, filtrado para <ItemLink id="certus_quartz_crystal" />.
2. O <ItemLink id="storage_bus" /> armazena os cristais de quartzo certus no barril.

### Quebradora de Blocos de Certus

A sub-rede quebradora de blocos de certus serve para quebrar o bloco de drusa esgotado quando ele vira um simples <ItemLink id="quartz_block" />.
Ela funciona de forma semelhante à quebradora de agregados.

1. O <ItemLink id="annihilation_plane" /> tenta quebrar o que está à sua frente, mas só consegue quebrar <ItemLink id="quartz_block" />
   porque o único armazenamento na sub-rede é o <ItemLink id="storage_bus" />, filtrado para <ItemLink id="quartz_block" />.
   O plano precisa ter Toque Suave, para que o bloco de drusa não degrade ao ser quebrado, e assim o plano não o quebre prematuramente.
2. O <ItemLink id="storage_bus" /> armazena o bloco de quartzo certus na <ItemLink id="interface" />, permitindo que a
   [Automação de Jogar na Água](throw-in-water-automation.md) o use para fazer uma nova <ItemLink id="flawed_budding_quartz" />.

### Colocadora de Blocos de Drusa

A sub-rede colocadora de blocos de drusa serve para colocar uma nova <ItemLink id="flawed_budding_quartz" /> quando a sub-rede quebradora quebra a antiga esgotada.

1. O <ItemLink id="import_bus" /> importa um bloco de drusa da <ItemLink id="interface" /> para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md)
2. O único armazenamento na sub-rede é o <ItemLink id="formation_plane" />, que coloca o bloco de drusa.

### Na Rede Principal

* O <ItemLink id="storage_bus" /> dá à rede principal (e também à [Automação do Carregador](charger-automation.md)) acesso a todos os cristais de quartzo certus no barril. Está configurado com
  [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) alta para que cristais de quartzo certus sejam preferencialmente
  colocados de volta no barril em vez de no seu armazenamento principal.
* A <ItemLink id="interface" /> dá à sub-rede colocadora de blocos de drusa acesso a uma <ItemLink id="flawed_budding_quartz" />, e
    dá à sub-rede quebradora de blocos de certus uma forma de devolver os blocos esgotados à rede principal. O
    <ItemLink id="crafting_card" /> permite à interface pedir novos blocos de drusa à [autofabricação](../ae2-mechanics/autocrafting.md) da rede principal.
