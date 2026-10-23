---
navigation:
  parent: example-setups/example-setups-index.md
  title: Farm Avançada de Certus
  icon: certus_quartz_crystal
  position: 120
---

# Farm Avançada de Certus

Esta é basicamente a [Farm de Certus Semiautomática](semiauto-certus-farm.md), exceto que ela foi totalmente integrada ao seu
sistema ME.

Em vez de manter um grande estoque de blocos em brotamento e renová-los manualmente de tempos em tempos,
esta configuração usa a [Automação do Carregador](charger-automation.md) e a [Automação de Jogar na Água](throw-in-water-automation.md)
para fazer isso automaticamente.

Veja [Crescimento de Certus](../ae2-mechanics/certus-growth.md) para velocidades estimadas.

**ESTA É UMA CONSTRUÇÃO COMPLEXA COM COISAS ESCONDIDAS ATRÁS DE OUTRAS, GIRE A CÂMERA PARA VÊ-LA DE TODOS OS ÂNGULOS**

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
    Sub-rede Quebradora de Bloco de Certus
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) Formation Plane: Em sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0.7 2" max="3 1 3">
        (6) Import Bus: Filtrado para Drusa de Quartzo Certus Imperfeita.
        <BlockImage id="flawed_budding_quartz" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    Sub-rede Colocadora de Bloco em Brotamento
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="1.7 2 2" max="2 3 3">
        (7) Ponto de Armazenamento #3: Filtrado para Cristal de Quartzo Certus. Tem prioridade definida acima do seu armazenamento principal.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#aaaadd" min="2 1 2" max="3 2 3">
        (8) Interface: Configurada para manter 1 Drusa de Quartzo Certus Imperfeita dentro de si, tem um Cartão de Fabricação.
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

### Quebrador de Agregados:

* O primeiro <ItemLink id="annihilation_plane" /> (1) não tem GUI e não pode ser configurado, mas pode ser encantado com Fortuna.
* O primeiro <ItemLink id="storage_bus" /> (2) está filtrado para <ItemLink id="certus_quartz_crystal" />.

### Quebrador de Bloco de Certus:

* O segundo <ItemLink id="annihilation_plane" /> (3) não tem GUI e não pode ser configurado, mas precisa ser encantado com Toque Suave.
* O segundo <ItemLink id="storage_bus" /> (4) está filtrado para <ItemLink id="quartz_block" />.

### Colocador de Bloco em Brotamento:

* O <ItemLink id="formation_plane" /> (5) está em sua configuração padrão.
* O <ItemLink id="import_bus" /> (6) está filtrado para <ItemLink id="flawed_budding_quartz" />.

### Na Rede Principal:

* O terceiro <ItemLink id="storage_bus" /> (7) está filtrado para <ItemLink id="certus_quartz_crystal" />, e tem sua
  [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) definida acima do seu armazenamento principal.
* A <ItemLink id="interface" /> (8) está configurada para manter 1 Drusa de Quartzo Certus Imperfeita dentro de si, e tem um <ItemLink id="crafting_card" />.

## Como Funciona

### Quebrador de Agregados:

A sub-rede quebradora de agregados funciona de forma bem parecida com a sub-rede da [farm simples de certus](simple-certus-farm.md).

1. O <ItemLink id="annihilation_plane" /> tenta quebrar o que está à sua frente, mas só consegue quebrar <ItemLink id="quartz_cluster" />
   porque o único armazenamento da sub-rede é o <ItemLink id="storage_bus" />, filtrado para <ItemLink id="certus_quartz_crystal" />.
2. O <ItemLink id="storage_bus" /> armazena os cristais de quartzo certus no barril.

### Quebrador de Bloco de Certus

A sub-rede quebradora de bloco de certus serve para quebrar o bloco em brotamento esgotado quando ele vira um <ItemLink id="quartz_block" /> comum.
Ela funciona de forma parecida com a quebradora de agregados.

1. O <ItemLink id="annihilation_plane" /> tenta quebrar o que está à sua frente, mas só consegue quebrar <ItemLink id="quartz_block" />
   porque o único armazenamento da sub-rede é o <ItemLink id="storage_bus" />, filtrado para <ItemLink id="quartz_block" />.
   O plano precisa ter toque suave, para que o bloco em brotamento não degrade ao ser quebrado e o plano não o quebre prematuramente.
2. O <ItemLink id="storage_bus" /> armazena o bloco de quartzo certus na <ItemLink id="interface" />, permitindo que a
   [Automação de Jogar na Água](throw-in-water-automation.md) o use para criar uma nova <ItemLink id="flawed_budding_quartz" />.

### Colocador de Bloco em Brotamento

A sub-rede colocadora de bloco em brotamento serve para colocar uma nova <ItemLink id="flawed_budding_quartz" /> quando a sub-rede quebradora quebra a antiga esgotada.

1. O <ItemLink id="import_bus" /> importa um bloco em brotamento da <ItemLink id="interface" /> para o [armazenamento de rede](../ae2-mechanics/import-export-storage.md)
2. O único armazenamento da sub-rede é o <ItemLink id="formation_plane" />, que coloca o bloco em brotamento.

### Na Rede Principal

* O <ItemLink id="storage_bus" /> dá à rede principal (e também à [Automação do Carregador](charger-automation.md)) acesso a todos os cristais de quartzo certus do barril. Ele está configurado com
  alta [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) para que os cristais de quartzo certus sejam preferencialmente
  devolvidos ao barril em vez de irem para o seu armazenamento principal.
* A <ItemLink id="interface" /> dá à sub-rede colocadora de bloco em brotamento acesso a uma <ItemLink id="flawed_budding_quartz" /> e
    dá à sub-rede quebradora de bloco de certus uma forma de devolver os blocos esgotados à rede principal. O
    <ItemLink id="crafting_card" /> permite que a interface requisite novos blocos em brotamento da [fabricação automática](../ae2-mechanics/autocrafting.md) da rede principal.