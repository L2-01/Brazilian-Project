---
navigation:
  parent: example-setups/example-setups-index.md
  title: Fabricação Recursiva
  icon: minecraft:netherite_upgrade_smithing_template
---

# Um Esquema de Fabricação Recursiva

Como dito em [autofabricação](../ae2-mechanics/autocrafting.md), o algoritmo de planejamento da autofabricação não consegue lidar com receitas em que
a saída principal é um dos ingredientes. Por exemplo, ele não consegue lidar com a clonagem de <ItemLink id="minecraft:netherite_upgrade_smithing_template" />s.

Uma solução é o uso da capacidade do <ItemLink id="level_emitter" /> de fingir ser um [padrão](../items-blocks-machines/patterns.md).

Isso será então usado para ligar um pequeno esquema que executa a fabricação constantemente. Neste caso, veremos um esquema
para clonar <ItemLink id="minecraft:netherite_upgrade_smithing_template" />s.

<RecipeFor id="minecraft:netherite_upgrade_smithing_template" />

***

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/recursive_recipe_setup.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Interface: configurada para estocar os ingredientes adicionais necessários: diamante e netherrack.
        <Row><ItemImage id="minecraft:diamond" scale="2" /> <ItemImage id="minecraft:netherrack" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 1 0.3" max="2.7 1.3 0.7">
        (2) Emissor de Nível: Configurado com "molde de ferraria de netherita", definido para "Emitir Redstone para fabricar item".
        <Row><ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (3) Ponto de Importação #1: Filtrado para os itens que a Interface está estocando. Tem um Cartão de Redstone. Modo de redstone definido para
        "Ativo com sinal".
        <Row>
        <ItemImage id="minecraft:diamond" scale="2" />
        <ItemImage id="minecraft:netherrack" scale="2" />
        <ItemImage id="redstone_card" scale="2" />
        </Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="4 1.3 2">
        (4) Ponto de Armazenamento #1: Definido com prioridade mais alta que o outro ponto de armazenamento. MUITO IMPORTANTE.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 0 1" max="4 1 2">
        (5) Montador Molecular: Tem nele o padrão para duplicar um molde de ferraria.

        ![Pattern](../assets/diagrams/smithing_template_pattern_small.png)

        Ele também tem um molde de ferraria já inserido manualmente quando você constrói isto pela primeira vez.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        (6) Ponto de Importação #2: Na sua configuração padrão.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="2 1 1.3">
        (7) Ponto de Armazenamento #2: Filtrado para "molde de ferraria de netherita". Definido com prioridade mais baixa que o outro ponto de armazenamento.
        <ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

## Configurações

* A <ItemLink id="interface" /> (1) está configurada para estocar os ingredientes adicionais necessários: diamante e netherrack.
* O <ItemLink id="level_emitter" /> (2) está configurado com "molde de ferraria de netherita", e definido para "Emitir Redstone para fabricar item".
* O primeiro <ItemLink id="import_bus" /> (3) está filtrado para os itens que a Interface está estocando. Tem um Cartão de Redstone. O modo de redstone está definido para "Ativo com sinal".
* O primeiro <ItemLink id="storage_bus" /> (4) está definido com [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) *mais alta* que o segundo ponto de armazenamento.
* O <ItemLink id="molecular_assembler" /> (5) tem o padrão para duplicar o molde de ferraria, e um molde de ferraria já inserido manualmente.

  ![Pattern](../assets/diagrams/smithing_template_pattern.png)

* O segundo <ItemLink id="import_bus" /> (6) está na sua configuração padrão.
* O segundo <ItemLink id="storage_bus" /> (7) está filtrado para "molde de ferraria de netherita". Tem [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) *mais baixa* que o primeiro ponto de armazenamento.

## Como Funciona

1. O <ItemLink id="level_emitter" /> finge ser um [padrão](../items-blocks-machines/patterns.md) devido ao <ItemLink id="crafting_card" />
   inserido e por estar definido para "Emitir Redstone para fabricar item". Assim, "molde de ferraria de netherita" aparece nos
   [terminais](../items-blocks-machines/terminals.md) como algo válido para [autofabricar](../ae2-mechanics/autocrafting.md).
2. Ao receber um pedido para fabricar aquele item, seja de um jogador ou do próprio sistema, o emissor de nível liga.
3. O primeiro <ItemLink id="import_bus" /> é ativado pelo emissor de nível, e puxa os ingredientes estocados na <ItemLink id="interface" />.
4. O único <ItemLink id="storage_bus" /> na rede capaz de armazenar esses ingredientes é o que está no montador.
5. O <ItemLink id="molecular_assembler" /> recebe os ingredientes (já tendo 1 molde de ferraria dentro), e executa a fabricação, produzindo 2 moldes de ferraria.
6. O segundo <ItemLink id="import_bus" /> extrai 1 molde de ferraria.
7. O primeiro ponto de armazenamento tem prioridade mais alta, então aquele molde de ferraria volta para o montador.
8. O segundo <ItemLink id="import_bus" /> extrai 1 molde de ferraria.
9. O montador não pode receber outro molde de ferraria, então o segundo molde vai para o ponto de armazenamento de prioridade mais baixa, inserindo-o na interface.
10. A <ItemLink id="interface" />, por não estar configurada para estocar moldes de ferraria, o insere na rede.
