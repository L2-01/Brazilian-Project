---
navigation:
  parent: example-setups/example-setups-index.md
  title: Autoestocagem por Emissor de Nível
  icon: level_emitter
---

# Autoestocagem por Emissor de Nível

Alguém pode perguntar: "Como eu mantenho uma certa quantidade de um item em estoque, fabricando mais conforme necessário?"

Uma solução é usar um <ItemLink id="export_bus" />, um <ItemLink id="level_emitter" /> e um <ItemLink id="crafting_card" /> para requisitar automaticamente novos itens
da [fabricação automática](../ae2-mechanics/autocrafting.md) da sua rede. Esta configuração serve para manter uma grande quantidade de um único item.

Você também pode fazer sua rede fabricar continuamente, omitindo o emissor de nível e o cartão de redstone.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/level_emitter_autostocking.snbt" />

  <BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (1) Ponto de Exportação: Filtrado para o item desejado. Tem um Cartão de Redstone e um Cartão de Fabricação. Modo de redstone definido para
        "Ativo com sinal", Comportamento de fabricação definido para "Não usar itens guardados".
        <Row><ItemImage id="redstone_card" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0.7 1 0" max="1 2 1">
        (2) Emissor de Nível: Configurado com o item e a quantidade desejados, definido para "Emitir quando níveis estão abaixo do limite".
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (3) Interface: Em sua configuração padrão.
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* O <ItemLink id="export_bus" /> (1) está filtrado para o item desejado. Ele tem um <ItemLink id="redstone_card" /> e um <ItemLink id="crafting_card" />.
  O "Modo de Redstone" está definido para "Ativo com sinal" e o "Comportamento de Fabricação" está definido para "Não usar itens guardados".
* O <ItemLink id="level_emitter" /> (2) está configurado com o item e a quantidade desejados, e definido para "Emitir quando níveis estão abaixo do limite".
* A <ItemLink id="interface" /> (3) está em sua configuração padrão.

## Como Funciona

1. Se a quantidade do item desejado no [armazenamento de rede](../ae2-mechanics/import-export-storage.md) estiver abaixo da quantidade especificada no
   <ItemLink id="level_emitter" />, ele emitirá um sinal de redstone.
2. Ao receber um sinal de redstone (e devido ao <ItemLink id="crafting_card" /> e por estar configurado para não usar itens estocados),
   o <ItemLink id="export_bus" /> requisitará que a [fabricação automática](../ae2-mechanics/autocrafting.md) da rede fabrique
   mais do item desejado e então o exporte.
3. Ao receber um item empurrado para dentro dela (e por não estar configurada para ter nada em seu inventário interno), a <ItemLink id="interface" /> empurrará esse item para o armazenamento de rede.