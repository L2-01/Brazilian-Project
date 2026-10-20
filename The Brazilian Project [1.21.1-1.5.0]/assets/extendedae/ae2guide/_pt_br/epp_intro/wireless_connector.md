---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Conector ME sem Fio
    icon: extendedae:wireless_connect
categories:
- extended devices
item_ids:
- extendedae:wireless_connect
- extendedae:wireless_tool
---

# Conector ME sem Fio

<Row gap="20">
<BlockImage id="extendedae:wireless_connect" scale="6"></BlockImage>
<ItemImage id="extendedae:wireless_tool" scale="6"></ItemImage>
</Row>

O Conector ME sem Fio pode vincular duas redes como um <ItemLink id="ae2:quantum_link" />, mas tem alcance limitado e não pode
conectar através de dimensões. Ele suporta apenas conexões um-para-um; use uma <ItemLink id="extendedae:wireless_hub" />
para conexões muitos-para-muitos.

## Vinculando Conectores sem Fio

Clique nos dois Conectores sem Fio que você quer vincular com o Kit de Configuração ME sem Fio para conectá-los.

Agache e clique para limpar os ajustes atuais do Kit de Configuração ME sem Fio.

O Conector ME sem Fio muda de textura quando um vínculo é estabelecido com sucesso.

Conectores ME sem Fio não vinculados

<GameScene zoom="5" background="transparent">
  <ImportStructure src="../structure/wireless_connector_off.snbt"></ImportStructure>
</GameScene>

Conectores ME sem Fio vinculados

<GameScene zoom="5" background="transparent">
  <ImportStructure src="../structure/wireless_connector_on.snbt"></ImportStructure>
</GameScene>

## Cor

Conectores sem Fio podem ser coloridos como cabos e só se conectam a cabos e conectores da mesma cor.

Você precisa de um <ItemLink id="ae2:color_applicator" /> para colorir um conector.

Você pode configurar seus Conectores sem Fio assim:

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/wireless_connector_setup.snbt"></ImportStructure>
</GameScene>

## Uso de Energia

Conectores ME sem Fio consomem mais energia quanto mais distantes estiverem. A curva custo-distância não é linear, então o custo
de energia pode ficar muito alto quando estão muito distantes.

Você pode usar <ItemLink id="ae2:energy_card" />s para economizar energia. Cada cartão reduz o custo de energia em 10%.
