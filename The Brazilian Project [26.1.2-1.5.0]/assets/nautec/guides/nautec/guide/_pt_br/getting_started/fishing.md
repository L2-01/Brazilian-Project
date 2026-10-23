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

Dois sistemas separados, e eles se acumulam. Zonas de sorte mudam onde você lança, com qualquer vara. A Vara de Pescar Prismática adiciona um sorteio bônus a cada captura e um minigame quando algo morde. Ambos somam à sua captura normal em vez de substituí-la.

***

## <Color id="gold">Zonas de Sorte</Color>

Manchas de água aberta que se formam na superfície perto de você enquanto você está num oceano ou rio. Esporos brilhantes flutuam sobre uma zona e bolhas sobem dela, então você avista uma à distância.

* Uma zona se forma a até cerca de 32 blocos de você, no máximo uma a cada 45 segundos, e nunca a menos de 48 blocos de outra zona.
* Seu raio é de 2 a 6 blocos, e ela só se forma onde cada bloco desse raio é água aberta. Espere-as longe da costa.
* Ela dura 5 minutos, e a primeira captura dela a esgota.

Lance seu bóia dentro de uma. O bóia fica parado dentro da zona, os peixes mordem duas vezes mais rápido, e cada captura recebe um sorteio extra no saque da zona além da sua captura normal. Qualquer vara de pescar funciona, inclusive de outros mods.

Jogar um <ItemLink id="eye_of_the_sea"/> faz zonas se formarem perto de você duas vezes mais rápido pelos próximos 5 minutos. Veja [Olho do Mar](eye_of_the_sea.md).

Todos esses números estão em `config/nautec-common.toml`, junto com `luckyZonesEnabled` para desligar as zonas.

***

## <Color id="gold">Saque das Zonas</Color>

Cada sorteio extra é uma captura comum na maioria das vezes e uma captura de tesouro cerca de uma em sete vezes. Ambos mudam conforme a água em que você pesca.

| Água | Captura | Tesouro |
|---|---|---|
| Qualquer lugar | bacalhau, salmão, Saltadores de Silte, Sal, Fragmentos de Cristal de Prismarinho | Engrenagens Enferrujadas, Válvulas Antigas, Batedores Quebrados, Lentes de Prismarinho, Caixotes cheios de saque |
| Rios | argila, vitórias-régias | |
| Qualquer oceano | peixe tropical, alga | Conchas de Náutilus, Pepitas de Ouro Atlântico |
| Fossa abissal | Coral Abissal, Chips Aquáticos Danificados, bolsas de tinta | Órgãos Abissais, Drusa de Prismarinho, lula viva |
| Bosque bioluminescente | Membrana Luminosa, Alga Luminescente, Alga Profunda, Saltadores de Silte vivos | Pólipos Luminosos, Chips Aquáticos, Águas-Vivas-Lanterna vivas |
| Fontes hidrotermais | Chapas de Quitina, Vermes Tubulares Hidrotermais, blocos de magma | Bobinas de Canalização de Laser, pó de blaze |
| Recife de prismarinho | Frondes de Prismarinho, fragmentos de prismarinho, baiacu, peixes tropicais vivos | Fragmentos de Cristal de Prismarinho, Coração do Mar |

Uma captura viva é uma criatura em vez de um item: quando um sorteio de zona dá uma, recolher a linha solta o animal junto ao seu bóia. Bacalhau vivo pode aparecer em qualquer lugar.

***

<Row>
  <ItemImage id="nautec_fishing_rod"/>
  ### <Color id="aqua">Vara de Pescar Prismática</Color>
</Row>

Lança como qualquer vara, e adiciona um sorteio no saque de zona de sorte acima a cada captura que você recolhe, onde quer que pesque. Dentro de uma zona de sorte você ganha esse sorteio além do da própria zona.

Quando algo morde, uma barra de captura abre na parte inferior da tela por 3 segundos. Aperte com Espaço, Enter ou o botão esquerdo do mouse. A entrada no primeiro instante após a barra aparecer é ignorada. A barra só abre quando nenhuma outra tela está aberta.

<Recipe id="nautec:nautec_fishing_rod"/>

***

## <Color id="gold">As Três Barras</Color>

Qual barra aparece é aleatório, e ela se identifica no topo.

* Algo está mordendo: uma janela verde. Aperte uma vez enquanto o marcador está dentro dela.
* Está resistindo a você: três janelas curtas. Aperte uma vez em cada, em ordem.
* Está fugindo com a linha: uma janela mais longa. Aperte quando o marcador entrar no verde, segure, e solte antes que ele saia.

O painel fica verde enquanto o marcador está dentro de uma janela. "Fisgou" significa que você venceu. "Escapou do anzol" significa que você errou, e a barra fica em vermelho até acabar.

O peixe fica na linha enquanto a barra roda e por 2 segundos depois que ela fecha, tenha você vencido ou errado. Recolha com clique direito quando a barra sumir.

***

## <Color id="gold">Recompensas</Color>

* Errou ou ignorou: sua captura normal mais um sorteio bônus da vara.
* Venceu: sua captura normal, um sorteio bônus de captura e um sorteio bônus de tesouro, além de experiência.
* Venceu numa mordida de tesouro com sorte (cerca de uma em sete): dois sorteios de tesouro e um de captura em vez disso.

Errar nunca te custa nada em comparação com uma vara comum.
