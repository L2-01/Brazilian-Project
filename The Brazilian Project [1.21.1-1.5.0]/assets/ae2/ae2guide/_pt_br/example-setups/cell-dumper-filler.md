---
navigation:
  parent: example-setups/example-setups-index.md
  title: Esvaziador ou Enchedor de Células
  icon: io_port
---

# Esvaziador ou Enchedor de Células

Alguém pode perguntar: "Como eu esvazio rapidamente uma célula em um baú, um conjunto de gavetas ou uma mochila — ou, inversamente, encho uma célula a partir deles?"

A resposta é usar um <ItemLink id="io_port" /> e um pouco de sub-redes para restringir onde ele pode colocar os itens ou de onde puxá-los.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/cell_dumper_filler.snbt" />

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 1">
        (1) Porto de E/S: Pode ser configurado para "Transferir dados à rede" ou "Transferir dados à Célula de Armazenamento" usando o botão de seta
        no meio da GUI. Tem 3 Cartões de Aceleração.
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0.7 0" max="1 1 1">
        (2) Storage Bus: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#33dd33" min="0 1 0" max="1 2 1">
        Coloque aqui o que você quiser encher ou esvaziar.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0.35 0.35" max="2.3 0.65 0.65">
        Fibra de Quartzo: Só é necessária se a fonte de energia for outra rede.
  </BoxAnnotation>

<DiamondAnnotation pos="3 0.5 0.5" color="#00ff00">
        Para alguma fonte de energia, como outra rede ou um aceitador de energia.
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O <ItemLink id="io_port" /> (1) pode ser configurado para "Transferir dados à rede" ou "Transferir dados à Célula de Armazenamento" usando o botão de seta
  no meio da GUI. Ele tem 3 cartões de aceleração para velocidade máxima.
* O <ItemLink id="storage_bus" /> (2) está em sua configuração padrão.

## Como Funciona

### No Modo "Transferir à Rede"

1. O <ItemLink id="io_port" /> tenta despejar o conteúdo da [célula de armazenamento](../items-blocks-machines/storage_cells.md) inserida
    no [armazenamento de rede](../ae2-mechanics/import-export-storage.md).
2. O único armazenamento da sub-rede é o <ItemLink id="storage_bus" />, que armazena os itens, fluidos etc. em o que quer que
    você coloque à frente dele.
* A <ItemLink id="energy_cell" /> fornece um buffer de [energia](../ae2-mechanics/energy.md) grande o suficiente para que a rede não
    fique sem energia pelo consumo de transferir tantos itens por tick.

### No Modo "Transferir à Célula de Armazenamento"

1. O <ItemLink id="io_port" /> tenta despejar o conteúdo do [armazenamento da rede](../ae2-mechanics/import-export-storage.md)
   na [célula de armazenamento](../items-blocks-machines/storage_cells.md) inserida.
2. O único armazenamento da sub-rede é o <ItemLink id="storage_bus" />, que puxa os itens, fluidos etc. para fora do que quer que
   você coloque à frente dele.
* A <ItemLink id="energy_cell" /> fornece um buffer de [energia](../ae2-mechanics/energy.md) grande o suficiente para que a rede não
  fique sem energia pelo consumo de transferir tantos itens por tick.