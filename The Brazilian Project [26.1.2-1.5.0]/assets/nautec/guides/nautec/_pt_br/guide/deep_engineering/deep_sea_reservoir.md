---
navigation:
  title: Reservatório do Mar Profundo
  icon: nautec:deep_sea_reservoir
  position: 15
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:deep_sea_reservoir
  - nautec:reservoir_upgrade_2
  - nautec:reservoir_upgrade_3
  - nautec:reservoir_upgrade_4
---

# <Color id="light_purple">Reservatório do Mar Profundo</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="deep_sea_reservoir" scale="2"/>
  Um tanque 3x3x3 que armazena um fluido em quantidades que nenhum outro tanque chega perto.
</Column>

## <Color id="gold">Colocando-o</Color>

O Reservatório é um único item que ocupa um espaço 3x3x3. Coloque-o sobre um bloco e ele se constrói no 3x3x3 acima daquele bloco, centrado nele, com seu medidor virado para você. Todos os blocos daquele espaço precisam estar vazios primeiro (ar, água ou plantas sobre as quais se possa construir), então ele também funciona no fundo do mar.

Se a água alcançar um Reservatório que foi construído seco, ela o inunda através da moldura do jeito que a água flui: pelos lados e por cima, nunca por baixo.

Quebrar qualquer parte dele derruba o Reservatório inteiro como um único item. Esse item mantém seu nível e cada gota de fluido dentro, então você pode mover um Reservatório cheio para qualquer lugar.

***

## <Color id="gold">Enchendo e Esvaziando</Color>

* Toda face externa de cada bloco do 3x3x3 alcança o mesmo tanque, então canos podem se conectar onde quer que o toquem.
* Clique com o botão direito segurando um balde ou outro recipiente de fluido para enchê-lo ou esvaziá-lo.
* Clique com o botão direito e a mão vazia para abri-lo. Clicar no medidor da tela com um recipiente de fluido no cursor também o enche ou esvazia.
* A faixa de vidro na frente mostra o fluido dentro, preenchido até o nível atual.
* Um Comparador lê o quão cheio ele está.

Ele comporta um fluido por vez. Uma vez completamente vazio, aceita qualquer fluido novamente.

***

## <Color id="gold">Níveis</Color>

| Nível | Comporta | Melhoria |
|---|---|---|
| I | 500.000.000 baldes | o Reservatório base |
| II | 2.000.000.000 baldes | <ItemLink id="reservoir_upgrade_2"/> |
| III | 10.000.000.000 baldes | <ItemLink id="reservoir_upgrade_3"/> |
| IV | 50.000.000.000 baldes | <ItemLink id="reservoir_upgrade_4"/> |

Cada nível muda o visual do Reservatório: uma moldura de aço com tiras rebitadas no II, tiras de cobre, canos e uma roda de válvula no III, e acabamento de cristal de prismarinho brilhante no IV.

As melhorias são aplicadas em ordem. Clique com o botão direito no Reservatório com a próxima, ou coloque-a no slot de melhoria da tela, e ela é aplicada na hora.

**Remover Melhoria** na tela retira a melhoria do topo e a devolve para você, baixando o Reservatório um nível. Se o fluido dentro não couber no nível menor, o botão pede um segundo clique e diz quanto será perdido. Qualquer coisa acima da capacidade do nível menor é descartada.

***

## <Color id="gold">Fabricação</Color>

<Recipe id="nautec:deep_sea_reservoir"/>

<Recipe id="nautec:reservoir_upgrade_2"/>

<Recipe id="nautec:reservoir_upgrade_3"/>

<Recipe id="nautec:reservoir_upgrade_4"/>

A capacidade de cada nível está em `config/nautec-common.toml`.
