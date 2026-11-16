---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Conector ME sem Fio
    icon: expatternprovider:wireless_connect
categories:
- extended devices
item_ids:
- expatternprovider:wireless_connect
- expatternprovider:wireless_tool
---

# Conector ME sem Fio

<Row gap="20">
<BlockImage id="expatternprovider:wireless_connect" scale="6"></BlockImage>
<ItemImage id="expatternprovider:wireless_tool" scale="6"></ItemImage>
</Row>

O Conector ME sem Fio pode vincular duas redes como o <ItemLink id="ae2:quantum_link" />, mas com alcance limitado e sem
suporte entre dimensões. O Conector ME sem Fio só suporta conexões de um-para-um. Use a <ItemLink id="expatternprovider:wireless_hub" />
se quiser conexões de muitos-para-muitos.

## Vinculando os Conectores sem Fio

Clique nos dois Conectores sem Fio que você quer vincular com o Kit de Configuração ME sem Fio para vinculá-los entre si.

Agache + clique para limpar a configuração atual do Kit de Configuração ME sem Fio.

O Conector ME sem Fio muda de textura quando um vínculo é estabelecido com sucesso.

Conectores ME sem Fio desvinculados

<GameScene zoom="5" background="transparent">
  <ImportStructure src="../structure/wireless_connector_off.snbt"></ImportStructure>
</GameScene>

Conectores ME sem Fio vinculados

<GameScene zoom="5" background="transparent">
  <ImportStructure src="../structure/wireless_connector_on.snbt"></ImportStructure>
</GameScene>

## Cor

Os Conectores sem Fio podem ser coloridos como cabos e só se conectam a cabos/conectores da mesma cor.

Você precisa de um <ItemLink id="ae2:color_applicator" /> para colorir o conector.

Assim você pode configurar seus conectores sem fio desta forma:

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/wireless_connector_setup.snbt"></ImportStructure>
</GameScene>

## Consumo de Energia

Os Conectores ME sem Fio consomem mais energia quanto mais distantes estiverem. A curva custo-distância não é linear, então o custo
de energia pode ficar muito alto quando eles estão longe demais.

Você pode usar <ItemLink id="ae2:energy_card" /> para economizar energia. Cada cartão reduz o custo de energia em 10%.
