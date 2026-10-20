---
navigation:
  parent: example-setups/example-setups-index.md
  title: Automação de Jogar na Água
  icon: fluix_crystal
---

# Automação de receitas de Jogar na Água

Note que, como isto usa um <ItemLink id="pattern_provider" />, ele é feito para se integrar ao seu esquema de
[autofabricação](../ae2-mechanics/autocrafting.md).

Algumas receitas exigem que itens sejam jogados na água (embora um esquema semelhante possa ser usado para jogar itens em outros lugares).
Isso pode ser automatizado com um <ItemLink id="formation_plane" />, um <ItemLink id="annihilation_plane" /> e alguma
infraestrutura de suporte (isto é essencialmente 2 [sub-redes de canos](pipe-subnet.md) modificadas).

Este esquema é feito para ser usado em combinação com a [automação do carregador](charger-automation.md) para fornecer os <ItemLink id="charged_certus_quartz_crystal" />s.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/throw_in_water.snbt" />

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (1) Provedor de Padrões: Na sua configuração padrão, com os padrões de processamento relevantes.

        ![Fluix Pattern](../assets/diagrams/fluix_pattern_small.png) ![Flawed Budding Pattern](../assets/diagrams/flawed_budding_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 1" max="2 1 2">
        (2) Interface: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 .7 1" max="2 1 2">
        (3) Plano de Formação: Configurado para largar as entradas como itens.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 2 1" max="2 2.3 2">
        (4) Plano de Aniquilação: Sem GUI para configurar.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (5) Ponto de Armazenamento: Filtrado para as saídas dos padrões
        <Row><ItemImage id="fluix_crystal" scale="2" /><BlockImage id="flawless_budding_quartz" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="3.9 0.5 1.5" color="#00ff00">
        Para a Rede Principal e a Automação do Carregador
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/charger_automation.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
    </DiamondAnnotation>

  <IsometricCamera yaw="180" pitch="0" />
</GameScene>

## Configurações e Padrões

* O <ItemLink id="pattern_provider" /> (1) está na sua configuração padrão, com os <ItemLink id="processing_pattern" />s relevantes
  * Para <ItemLink id="fluix_crystal" />, a receita padrão do JEI/REI funciona bem:

    ![Fluix Pattern](../assets/diagrams/fluix_pattern.png)

  * Para a <ItemLink id="flawed_budding_quartz" />, provavelmente é melhor fazê-la diretamente de <ItemLink id="quartz_block" />,
    o que evita problemas com a entrada de uma receita sendo a saída de outra, fazendo o ponto de armazenamento não conseguir filtrar:

    ![Flawed Budding Pattern](../assets/diagrams/flawed_budding_pattern.png)

* A <ItemLink id="interface" /> (2) está na sua configuração padrão.
* O <ItemLink id="formation_plane" /> (3) está configurado para largar as entradas como itens.
* O <ItemLink id="annihilation_plane" /> (4) não tem GUI e não pode ser configurado.
* O <ItemLink id="storage_bus" /> (5) está filtrado para as saídas dos padrões.

## Como Funciona

1.  O <ItemLink id="pattern_provider" /> empurra os ingredientes para a <ItemLink id="interface" /> do seu lado, na sub-rede verde
2.  A interface (estando configurada para não armazenar nada por padrão) tenta empurrar seu conteúdo para o [armazenamento da rede](../ae2-mechanics/import-export-storage.md)
3.  O único armazenamento na sub-rede verde é o <ItemLink id="formation_plane" />, que larga na água os itens que recebe
4.  O <ItemLink id="annihilation_plane" /> na sub-rede laranja tenta coletar os itens que acabaram de ser largados, mas não consegue, porque
    o <ItemLink id="storage_bus" /> em cima do provedor de padrões (o único armazenamento na sub-rede laranja) está filtrado para só aceitar os resultados de fabricações possíveis
5.  Os itens realizam sua transformação no mundo.
6.  O plano de aniquilação agora consegue coletar os itens à sua frente, já que o ponto de armazenamento tem permissão para armazená-los.
7.  O ponto de armazenamento armazena os itens resultantes no provedor de padrões, devolvendo-os à rede.
