---
navigation:
  parent: example-setups/example-setups-index.md
  title: Abastecimento Automático por Interface
  icon: interface
---

# Abastecimento Automático por Interface

Alguém pode perguntar "Como eu mantenho certa quantidade de vários itens em estoque, fabricando mais conforme necessário?"

Uma solução é o uso de uma <ItemLink id="interface" /> e <ItemLink id="crafting_card" /> para pedir automaticamente novos itens
à [autofabricação](../ae2-mechanics/autocrafting.md) da sua rede. Este esquema é mais adequado para manter uma pequena quantidade de uma grande
variedade de itens.

Este esquema de demonstração foi encurtado para não ficar muito largo; provavelmente o mais ideal é usar 4 <ItemLink id="interface" />s e 4 <ItemLink id="storage_bus" />s,
para usar todos os 8 [canais](../ae2-mechanics/channels.md) de um [cabo](../items-blocks-machines/cables.md) comum.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_autostocking.snbt" />

<BoxAnnotation color="#dddddd" min="0 0 0" max="2 1 1">
        (1) Interfaces: Configuradas para manter os itens desejados em si. Elas têm Cartões de Fabricação.
        <ItemImage id="crafting_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="2 1.3 1">
        (2) Pontos de Armazenamento: "Modo de Entrada/Saída" definido para "Somente Extrair".
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* As <ItemLink id="interface" />s (1) estão configuradas para manter os itens desejados em si, clicando com o item desejado nos seus
   slots superiores ou arrastando do JEI para os slots superiores, e então clicando no ícone de chave inglesa acima dos slots para definir a quantidade. Elas têm <ItemLink id="crafting_card" />s.
* Os <ItemLink id="storage_bus" />s (2) estão configurados de modo que "Modo de Entrada/Saída" esteja definido para "Somente Extrair".

## Como Funciona

1. Se uma <ItemLink id="interface" /> não conseguir obter o suficiente de um item configurado do [armazenamento da rede](../ae2-mechanics/import-export-storage.md),
   (e ela tiver um <ItemLink id="crafting_card" />), ela pedirá que a [autofabricação](../ae2-mechanics/autocrafting.md) da rede fabrique mais daquele item.
2. Os <ItemLink id="storage_bus" />s permitem à rede acessar o conteúdo das interfaces.
