---
navigation:
  parent: example-setups/example-setups-index.md
  title: Automação do Carregador
  icon: charger
---

# Automação do Carregador

Note que, como isto usa um <ItemLink id="pattern_provider" />, ele é feito para se integrar ao seu esquema de
[autofabricação](../ae2-mechanics/autocrafting.md). Se você só quer automatizar um <ItemLink id="charger" /> sozinho, use funis e baús e afins.

A automação de um <ItemLink id="charger" /> é bem simples. Um <ItemLink id="pattern_provider" /> empurra o ingrediente para o carregador, depois uma [sub-rede de canos](pipe-subnet.md)
ou outro cano de itens empurra o resultado de volta para o provedor.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/charger_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Provedor de Padrões: Na sua configuração padrão, com os padrões de processamento relevantes. Também fornece energia ao carregador.

        ![Charger Pattern](../assets/diagrams/charger_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="1 1.3 1">
        (2) Ponto de Importação: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (3) Ponto de Armazenamento: Na sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está na sua configuração padrão, com os <ItemLink id="processing_pattern" />s relevantes.
  Ele também fornece [energia](../ae2-mechanics/energy.md) ao <ItemLink id="charger" /> porque age como um [cabo](../items-blocks-machines/cables.md).
  
    ![Charger Pattern](../assets/diagrams/charger_pattern.png)

* O <ItemLink id="import_bus" /> (2) está na sua configuração padrão.
* O <ItemLink id="storage_bus" /> (3) está na sua configuração padrão.

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para o <ItemLink id="charger" />.
2. O carregador faz sua coisa de carregar.
3. O <ItemLink id="import_bus" /> na sub-rede verde puxa o resultado para fora do carregador e tenta armazená-lo no
   [armazenamento da rede](../ae2-mechanics/import-export-storage.md).
4. O único armazenamento na sub-rede verde é o <ItemLink id="storage_bus" />, que armazena os itens resultantes no provedor de padrões, devolvendo-os à rede principal.
