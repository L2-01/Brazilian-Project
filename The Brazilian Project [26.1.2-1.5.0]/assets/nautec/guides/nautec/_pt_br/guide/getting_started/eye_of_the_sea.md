---
navigation:
  title: Olho do Mar
  icon: nautec:eye_of_the_sea
  position: 15
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:eye_of_the_sea
---

# <Color id="light_purple">Olho do Mar</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="eye_of_the_sea" scale="2"/>
  Um Olho de Ender oceânico que você mantém. Jogue-o e ele voa em direção à estrutura mais próxima que está procurando.
</Column>

***

## <Color id="gold">Jogando</Color>

Clique com o botão direito para jogar o olho. Ele vibra por um instante enquanto busca (uma mensagem acima da sua hotbar diz isso, e você não pode jogá-lo de novo até a busca terminar), então ele sobe e voa em direção à estrutura correspondente mais próxima, como um Olho de Ender, e estoura em bolhas após uns quatro segundos. Ele nunca larga e nunca é consumido, então você pode jogá-lo quantas vezes quiser, com uma espera de dois segundos entre jogadas.

Se nada correspondente estiver a cerca de 1.600 blocos, o olho fica na sua mão e uma mensagem avisa.

Geodos de Cristal ficam enterrados sob o fundo do oceano, então quando o olho começar a circular ou a cair, o meio do geodo está abaixo de você. Cave direto para baixo a partir dali.

***

## <Color id="gold">Mudando o Alvo</Color>

Agache e clique com o botão direito para trocar o que o olho procura. O tooltip e uma mensagem acima da hotbar mostram o alvo atual. Na ordem:

| Alvo | Encontra |
|---|---|
| Geodos de Cristal | os geodos de pedra e ardosiabissal contendo um <ItemLink id="prismarine_crystal"/> |
| Ruínas do NauTec | os arcos de prismarinho escuro com um <ItemLink id="aquatic_catalyst"/> |
| Postos de Pesquisa | as estações de pesquisa afundadas, veja [Estruturas](structures.md) |
| Portais | as plataformas de Portal Subaquático, veja [Portal](nautec:deep_engineering/gateway.md) |
| Ruínas do Oceano | ruínas oceânicas vanilla, frias e quentes |
| Monumentos Oceânicos | monumentos oceânicos vanilla |

Um olho novo começa em Geodos de Cristal, e cada olho lembra do próprio alvo. Portais que você mesmo constrói não são alvos. Veja [Estruturas](structures.md) para o que cada um guarda.

***

## <Color id="gold">Sorte na Água</Color>

Toda jogada que acha um alvo também agita a água ao seu redor. Nos próximos 5 minutos, [zonas de pesca de sorte](fishing.md) se formam perto de você com o dobro de frequência. Jogar de novo reinicia os 5 minutos.

***

## <Color id="gold">Fabricação</Color>

Uma Pérola de Ender e um Fragmento de Prismarinho, fabricados juntos em qualquer arranjo.

<Recipe id="nautec:eye_of_the_sea"/>

O alcance da busca, a espera entre jogadas e a duração e força do bônus de pesca estão em `config/nautec-common.toml`.