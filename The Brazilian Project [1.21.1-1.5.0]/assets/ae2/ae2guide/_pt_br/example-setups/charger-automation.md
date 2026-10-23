---
navigation:
  parent: example-setups/example-setups-index.md
  title: Automação do Carregador
  icon: charger
---

# Automação do Carregador

Note que, como usa um <ItemLink id="pattern_provider" />, isto é feito para se integrar à sua configuração de
[fabricação automática](../ae2-mechanics/autocrafting.md). Se você só quer automatizar um <ItemLink id="charger" /> isolado, use funis, baús e afins.

A automação de um <ItemLink id="charger" /> é bem simples. Um <ItemLink id="pattern_provider" /> empurra o ingrediente para dentro do carregador; depois uma [sub-rede de tubulação](pipe-subnet.md)
ou outro tubo de itens empurra o resultado de volta para o provedor.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/charger_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Provedor de Padrões: Em sua configuração padrão, com os padrões de processamento relevantes. Também fornece energia ao carregador.

        ![Padrão do Carregador](../assets/diagrams/charger_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="1 1.3 1">
        (2) Import Bus: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (3) Storage Bus: Em sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O <ItemLink id="pattern_provider" /> (1) está em sua configuração padrão, com os <ItemLink id="processing_pattern" />s relevantes.
  Ele também fornece ao <ItemLink id="charger" /> [energia](../ae2-mechanics/energy.md) porque age como um [cabo](../items-blocks-machines/cables.md).
  
    ![Padrão do Carregador](../assets/diagrams/charger_pattern.png)

* O <ItemLink id="import_bus" /> (2) está em sua configuração padrão.
* O <ItemLink id="storage_bus" /> (3) está em sua configuração padrão.

## Como Funciona

1. O <ItemLink id="pattern_provider" /> empurra os ingredientes para dentro do <ItemLink id="charger" />.
2. O carregador faz seu trabalho de carregamento.
3. O <ItemLink id="import_bus" /> na sub-rede verde puxa o resultado para fora do carregador e tenta armazená-lo no
   [armazenamento de rede](../ae2-mechanics/import-export-storage.md).
4. O único armazenamento da sub-rede verde é o <ItemLink id="storage_bus" />, que armazena os itens resultantes no provedor de padrões, devolvendo-os à rede principal.
