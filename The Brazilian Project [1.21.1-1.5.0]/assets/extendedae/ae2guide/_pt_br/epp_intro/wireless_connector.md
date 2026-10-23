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

O Conector ME sem Fio pode ligar duas redes como o <ItemLink id="ae2:quantum_link" />, mas tem alcance limitado e não pode
conectar entre dimensões. O Conector ME sem Fio só suporta conexões um-para-um. Use a <ItemLink id="extendedae:wireless_hub" />
se quiser conexões muitos-para-muitos.

## Vinculando os Conectores sem Fio

Use o Kit de Configuração ME sem Fio para clicar nos dois Conectores sem Fio que você quer vincular.

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

Conectores sem Fio podem ser coloridos como cabos e só se conectam a cabos/conectores da mesma cor.

Você precisa de um <ItemLink id="ae2:color_applicator" /> para colorir um conector.

Assim, você pode montar seus conectores sem fio desta forma:

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/wireless_connector_setup.snbt"></ImportStructure>
</GameScene>

## Consumo de energia

Conectores ME sem Fio consomem mais energia quanto mais distantes estão. Como a curva custo-distância não é linear, o custo de
energia pode ficar muito alto quando estão longe demais.

Você pode usar <ItemLink id="ae2:energy_card" /> para economizar energia; cada cartão reduz o custo de energia em 10%.

