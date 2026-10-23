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
  Um tanque de 3x3x3 que comporta um fluido em quantidades que nenhum outro tanque chega perto.
</Column>

## <Color id="gold">Posicionando-o</Color>

O Reservatório é um item que preenche um espaço de 3x3x3. Coloque-o sobre um bloco e ele se constrói no 3x3x3 acima daquele bloco, centrado nele, com seu medidor virado para você. Todo bloco daquele espaço precisa estar vazio antes (ar, água ou plantas sobre as quais se possa construir), então ele funciona até no fundo do mar.

Se a água alcançar um Reservatório construído seco, ela inunda pela moldura como a água flui: pelos lados e de cima para baixo, nunca de baixo para cima.

Quebrar qualquer parte dele derruba o Reservatório inteiro como um único item. Esse item mantém seu nível e cada gota de fluido dentro, então você pode mover um Reservatório cheio para qualquer lugar.

***

## <Color id="gold">Enchendo e Esvaziando</Color>

* Toda face externa de cada bloco do 3x3x3 alcança o mesmo tanque, então tubos podem se conectar onde quer que o toquem.
* Clique direito com um balde ou outro recipiente de fluido para enchê-lo ou esvaziá-lo.
* Clique direito com a mão vazia para abri-lo. Clicar no medidor na tela com um recipiente de fluido no cursor também enche ou esvazia.
* A faixa de vidro na frente mostra o fluido dentro, cheio até seu nível atual.
* Um Comparador lê quão cheio ele está.

Ele comporta um fluido por vez. Uma vez completamente vazio, aceita qualquer fluido de novo.

***

## <Color id="gold">Níveis</Color>

| Nível | Comporta | Melhoria |
|---|---|---|
| I | 500.000.000 de baldes | o Reservatório base |
| II | 2.000.000.000 de baldes | <ItemLink id="reservoir_upgrade_2"/> |
| III | 10.000.000.000 de baldes | <ItemLink id="reservoir_upgrade_3"/> |
| IV | 50.000.000.000 de baldes | <ItemLink id="reservoir_upgrade_4"/> |

Cada nível muda a aparência do Reservatório: moldura de aço e faixas rebitadas no II, faixas de cobre, tubos e uma válvula de roda no III, e acabamento de cristal de prismarinho brilhante no IV.

As melhorias são aplicadas em ordem. Clique direito no Reservatório com a próxima, ou ponha-a no espaço de melhoria da tela, e ela aplica na hora.

**Remover Melhoria** na tela retira a melhoria de cima e a devolve a você, rebaixando o Reservatório um nível. Se o fluido dentro não couber no nível menor, o botão pede um segundo clique e diz quanto será perdido. Tudo que exceder a capacidade do nível menor é anulado.

***

## <Color id="gold">Fabricação</Color>

<Recipe id="nautec:deep_sea_reservoir"/>

<Recipe id="nautec:reservoir_upgrade_2"/>

<Recipe id="nautec:reservoir_upgrade_3"/>

<Recipe id="nautec:reservoir_upgrade_4"/>

A capacidade de cada nível está em `config/nautec-common.toml`.
