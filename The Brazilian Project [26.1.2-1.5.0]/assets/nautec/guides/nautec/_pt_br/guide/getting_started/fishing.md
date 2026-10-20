---
navigation:
  title: Pesca
  icon: nautec:nautec_fishing_rod
  position: 13
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:nautec_fishing_rod
---

# <Color id="light_purple">Pesca</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="nautec_fishing_rod" scale="2"/>
  Zonas de sorte e a Vara de Pescar Prismática adicionam saque extra às suas capturas.
</Column>

Dois sistemas separados, e eles acumulam. As zonas de sorte mudam onde você lança, com qualquer vara. A Vara de Pescar Prismática adiciona uma rolagem bônus a cada captura e um minigame quando algo morde. Ambos somam à sua captura normal em vez de substituí-la.

***

## <Color id="gold">Zonas de Sorte</Color>

Manchas de água aberta que se formam na superfície perto de você enquanto você está num oceano ou rio. Esporos brilhantes à deriva pairam sobre uma zona e bolhas sobem dela, então dá para avistar uma à distância.

* Uma zona se forma num raio de cerca de 32 blocos de você, no máximo uma a cada ~45 segundos, e nunca a menos de 48 blocos de outra zona.
* Seu raio é de 2 a 6 blocos, e ela só se forma onde todo bloco nesse raio é água aberta. Espere-as longe da costa.
* Dura 5 minutos, e a primeira captura nela a esgota.

Lance seu boião numa delas. O boião fica parado dentro da zona, os peixes mordem duas vezes mais rápido, e cada captura ganha uma rolagem extra no saque da zona além da sua captura normal. Qualquer vara de pesca funciona, incluindo varas de outros mods.

Jogar um <ItemLink id="eye_of_the_sea"/> faz zonas se formarem perto de você com o dobro de frequência pelos próximos 5 minutos. Veja [Olho do Mar](eye_of_the_sea.md).

Todos esses números estão em `config/nautec-common.toml`, junto de `luckyZonesEnabled` para desligar as zonas.

***

## <Color id="gold">Saque das Zonas</Color>

Cada rolagem extra é uma captura comum na maioria das vezes e uma captura de tesouro cerca de uma vez em sete. Ambas mudam com a água em que você pesca.

| Água | Captura | Tesouro |
|---|---|---|
| Qualquer lugar | bacalhau, salmão, Saltadores de Silte, Sal, Fragmentos de Cristal de Prismarinho | Engrenagens Enferrujadas, Válvulas Antigas, Batedores Quebrados, Lentes de Prismarinho, Caixotes cheios de saque |
| Rios | argila, nenúfares | |
| Qualquer oceano | peixe tropical, alga | Conchas de Náutilo, Pepitas de Ouro Atlântico |
| Fossa abissal | Coral Abissal, Chips Aquáticos Danificados, bolsas de tinta | Órgãos Abissais, Drusa de Prismarinho, lulas vivas |
| Bosque bioluminescente | Membrana Luminosa, Alga Luminescente, Alga Profunda, Saltadores de Silte vivos | Pólipos Luminosos, Chips Aquáticos, Águas-Vivas-Lanterna vivas |
| Fontes hidrotermais | Chapas de Quitina, Vermes Tubulares Hidrotermais, blocos de magma | Bobinas de Canalização de Laser, pó de blaze |
| Recife de prismarinho | Frondes de Prismarinho, fragmentos de prismarinho, baiacus, peixes tropicais vivos | Fragmentos de Cristal de Prismarinho, Coração do Mar |

Uma captura viva é uma criatura em vez de um item: quando uma rolagem de zona dá uma, recolher a linha solta o animal no seu boião. Bacalhaus vivos podem surgir em qualquer lugar.

***

<Row>
  <ItemImage id="nautec_fishing_rod"/>
  ### <Color id="aqua">Vara de Pescar Prismática</Color>
</Row>

Lança como qualquer vara, e adiciona uma rolagem no saque de zona de sorte acima a cada captura que você recolhe, onde quer que pesque. Dentro de uma zona de sorte você ganha essa rolagem além da rolagem da própria zona.

Quando algo morde, uma barra de captura abre no rodapé da tela por 3 segundos. Acerte com Espaço, Enter ou o botão esquerdo do mouse. Entrada no primeiro instante após a barra aparecer é ignorada. A barra só abre quando nenhuma outra tela está aberta.

<Recipe id="nautec:nautec_fishing_rod"/>

***

## <Color id="gold">As Três Barras</Color>

Qual barra aparece é aleatório, e ela se nomeia no topo.

* Algo está mordendo: uma janela verde. Acerte uma vez enquanto o marcador estiver dentro dela.
* Está brigando com você: três janelas curtas. Acerte uma vez em cada, em ordem.
* Está fugindo com a linha: uma janela mais longa. Aperte quando o marcador entrar no verde, segure, e solte antes que ele saia.

O painel fica verde enquanto o marcador está dentro de uma janela. "Fisgou" significa que você venceu. "Escapou do anzol" significa que você errou, e a barra fica levantada em vermelho até se esgotar.

O peixe fica na linha enquanto a barra corre e por 2 segundos depois de fechar, tenha você vencido ou errado. Recolha com o botão direito quando a barra sumir.

***

## <Color id="gold">Recompensas</Color>

* Errou ou ignorou: sua captura normal mais a rolagem bônus da vara.
* Venceu: sua captura normal, uma rolagem de captura bônus e uma rolagem de tesouro bônus, mais um pouco de experiência.
* Venceu numa mordida de tesouro de sorte (cerca de uma vez em sete): duas rolagens de tesouro e uma rolagem de captura.

Errar nunca custa nada comparado a uma vara comum.