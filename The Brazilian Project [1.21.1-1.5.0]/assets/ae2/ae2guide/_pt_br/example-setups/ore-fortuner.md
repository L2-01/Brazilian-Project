---
navigation:
  parent: example-setups/example-setups-index.md
  title: Fortuna Automática em Minérios
  icon: minecraft:raw_iron
---

# Automação de Fortuna em Minérios

O <ItemLink id="annihilation_plane" /> pode ser encantado com qualquer encantamento de picareta, incluindo fortuna, então um caso de uso óbvio é
aplicar fortuna em alguns e fazer <ItemLink id="formation_plane" />s e <ItemLink id="annihilation_plane" />s colocarem e
quebrarem minérios rapidamente.

Note que, como <ItemLink id="import_bus" />s "ganham velocidade", o esquema começará devagar e chegará à velocidade máxima em alguns segundos.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 0 2" max="3 1 3">
        (1) Ponto de Importação: Tem alguns Cartões de Aceleração.
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 2" max="2 1 2.3">
        (2) Planos de Formação: Nas suas configurações padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 0.7" max="2 1 1">
        (3) Planos de Aniquilação: Sem GUI para configurar, mas encantados com Fortuna.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 0" max="3 1 1">
        (4) Ponto de Armazenamento: Na sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="3.5 0.5 2.5" color="#00ff00">
        Entrada
    </DiamondAnnotation>

<DiamondAnnotation pos="3.5 0.5 0.5" color="#00ff00">
        Saída
    </DiamondAnnotation>

<DiamondAnnotation pos="4 0.5 1.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

*   O <ItemLink id="import_bus" /> (1) tem alguns <ItemLink id="speed_card" />s nele. Mais são necessários quanto mais planos de formação
    houver na matriz, pois eles fazem o ponto de importação puxar mais itens de uma vez.
*   Os <ItemLink id="formation_plane" />s (2) estão nas suas configurações padrão.
*   Os <ItemLink id="annihilation_plane" />s (3) não têm GUI e não podem ser configurados, mas estão encantados com fortuna.
*   O <ItemLink id="storage_bus" /> (4) está na sua configuração padrão.

## Como Funciona

1.  O <ItemLink id="import_bus" /> na sub-rede verde importa blocos do primeiro barril para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md)
2.  O único armazenamento na sub-rede verde é o <ItemLink id="formation_plane" />, que coloca os blocos.
3.  O <ItemLink id="annihilation_plane" /> na sub-rede laranja quebra os blocos, aplicando fortuna a eles.
4.  O <ItemLink id="storage_bus" /> na sub-rede laranja armazena os resultados da quebra no segundo barril.
