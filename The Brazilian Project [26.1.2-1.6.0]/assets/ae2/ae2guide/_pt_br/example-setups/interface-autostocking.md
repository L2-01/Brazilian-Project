---
navigation:
  parent: example-setups/example-setups-index.md
  title: Autoestocagem por Interface
  icon: interface
---

# Autoestocagem por Interface

Alguém pode perguntar: "Como eu mantenho uma certa quantidade de vários itens em estoque, fabricando mais conforme necessário?"

Uma solução é usar uma <ItemLink id="interface" /> e um <ItemLink id="crafting_card" /> para requisitar automaticamente novos itens
da [fabricação automática](../ae2-mechanics/autocrafting.md) da sua rede. Esta configuração é mais adequada para manter uma pequena quantidade de uma grande
variedade de itens.

Esta configuração de demonstração é encurtada para não ficar muito larga; provavelmente o ideal é usar 4 <ItemLink id="interface" />s e 4 <ItemLink id="storage_bus" />es,
para aproveitar todos os 8 [canais](../ae2-mechanics/channels.md) de um [cabo](../items-blocks-machines/cables.md) comum.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_autostocking.snbt" />

<BoxAnnotation color="#dddddd" min="0 0 0" max="2 1 1">
        (1) Interfaces: Configuradas para manter os itens desejados dentro de si. Elas têm Cartões de Fabricação.
        <ItemImage id="crafting_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="2 1.3 1">
        (2) Pontos de Armazenamento: "Modo de Entrada/Saída" definido para "Extrair Apenas".
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* As <ItemLink id="interface" />s (1) são configuradas para manter os itens desejados dentro de si, clicando com o item desejado nos
   slots superiores ou arrastando do JEI para os slots superiores, e depois clicando no ícone de chave acima dos slots para definir a quantidade. Elas têm <ItemLink id="crafting_card" />s.
* Os <ItemLink id="storage_bus" />es (2) são configurados de modo que o "Modo de Entrada/Saída" fique em "Extrair Apenas".

## Como Funciona

1. Se uma <ItemLink id="interface" /> não conseguir obter o suficiente de um item configurado do [armazenamento de rede](../ae2-mechanics/import-export-storage.md)
   (e ela tiver um <ItemLink id="crafting_card" />), ela requisitará que a [fabricação automática](../ae2-mechanics/autocrafting.md) da rede fabrique mais daquele item.
2. Os <ItemLink id="storage_bus" />es permitem que a rede acesse o conteúdo das interfaces.
