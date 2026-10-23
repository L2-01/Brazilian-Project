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
  Um Olho de Ender oceânico que você mantém. Jogue-o e ele voa em direção à estrutura mais próxima que procura.
</Column>

***

## <Color id="gold">Jogando-o</Color>

Clique direito para jogar o olho. Ele vibra por um instante enquanto procura (uma mensagem acima da barra avisa, e você não pode jogá-lo de novo até a busca acabar), então sobe e voa em direção à estrutura correspondente mais próxima, do mesmo jeito que um Olho de Ender, e estoura em bolhas após cerca de quatro segundos. Ele nunca dropa e nunca se esgota, então você pode jogá-lo quantas vezes quiser, com uma espera de dois segundos entre jogadas.

Se nada correspondente estiver a cerca de 1.600 blocos (3.200 blocos para um bioma), o olho fica na sua mão e uma mensagem avisa.

Geodos de Cristal ficam enterrados sob o fundo do oceano, então quando o olho começar a circular ou descer, o meio do geodo está debaixo de você. Cave reto para baixo a partir dali.

***

## <Color id="gold">Mudando o Alvo</Color>

Agache e clique direito para trocar o que o olho procura. A dica e uma mensagem acima da barra mostram o alvo atual. Em ordem:

| Alvo | Encontra |
|---|---|
| Geodos de Cristal | os geodos de pedra e ardosiabissal guardando um <ItemLink id="prismarine_crystal"/> |
| Ruínas do NauTec | os arcos de prismarinho escuro com um <ItemLink id="aquatic_catalyst"/> |
| Postos de Pesquisa | as estações de pesquisa afundadas, veja [Estruturas](structures.md) |
| Portais | as plataformas de Portal Submarino, veja [Portal](nautec:deep_engineering/gateway.md) |
| Ruínas Oceânicas | ruínas oceânicas frias e quentes vanilla |
| Monumentos Oceânicos | monumentos oceânicos vanilla |
| Recifes de prismarinho | o bioma Recife de prismarinho mais próximo, o melhor lugar para <ItemLink id="budding_prismarine"/> |
| Fossas abissais | o bioma Fossa abissal mais próximo |
| Bosques bioluminescentes | o bioma Bosque bioluminescente mais próximo |
| Fontes hidrotermais | o bioma Fontes hidrotermais mais próximo |

Um olho novo começa em Geodos de Cristal, e cada olho lembra seu próprio alvo. Portais que você mesmo constrói não são alvos. Um alvo de bioma voa até a borda da mancha mais próxima daquele bioma. Veja [Estruturas](structures.md) para o que cada uma guarda.

***

## <Color id="gold">Sorte na Água</Color>

Toda jogada que encontra um alvo também agita a água ao seu redor. Pelos próximos 5 minutos, [zonas de pesca com sorte](fishing.md) se formam perto de você duas vezes mais rápido. Jogar de novo reinicia os 5 minutos.

***

## <Color id="gold">Fabricação</Color>

Uma Pérola de Ender e um Fragmento de Prismarinho, fabricados juntos em qualquer arranjo.

<Recipe id="nautec:eye_of_the_sea"/>

O alcance da busca, a espera entre jogadas e a duração e força do bônus de pesca estão em `config/nautec-common.toml`.
