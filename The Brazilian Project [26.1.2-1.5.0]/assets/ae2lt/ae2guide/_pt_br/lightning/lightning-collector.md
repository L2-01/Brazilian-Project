---
navigation:
  title: Coletor de Raios
  icon: ae2lt:lightning_collector
  parent: lightning/lightning-index.md
item_ids:
  - ae2lt:lightning_collector
  - ae2lt:electro_chime_crystal
  - ae2lt:perfect_electro_chime_crystal
---

# Coletor de Raios

<Row>
  <BlockImage id="ae2lt:lightning_collector" scale="4" />
</Row>

O **Coletor de Raios** é o ponto de partida do sistema de Raios. Quando um raio atinge o coletor, ele injeta energia de Raios diretamente na rede ME.

## Uso Básico

Coloque o Coletor de Raios **a céu aberto onde raios consigam alcançá-lo**, e conecte-o a uma rede ME. Duas condições precisam ser atendidas para que uma descarga seja produtiva:

* A rede precisa estar online
* A rede precisa ter capacidade de armazenamento suficiente para aceitar os Raios prestes a serem produzidos (senão a descarga é desperdiçada)

A categoria de Raio produzido depende do que atinge o coletor:

* **Raio artificial** (invocado por um jogador carregando um Cristal de Sobrecarga, ou descarregado por uma Bobina de Tesla) → **Raio de Alta Tensão**
* **Raio natural** (um relâmpago de tempestade de verdade) → **Raio de Altíssima Tensão**

Após cada coleta bem-sucedida, o coletor entra num curto recarregamento (padrão 0 tiques, configurável).

## Cristal Eletrosonoro e Rendimento

<ItemImage id="ae2lt:electro_chime_crystal" scale="2" float="left" />

O coletor tem um **espaço de cristal** dedicado onde você pode inserir um **Cristal Eletrosonoro**. Se há um cristal instalado e quão avançado está seu cultivo determinam o rendimento de cada descarga.

| Estado do Cristal | Rendimento |
|---------------|-------|
| Sem cristal | Aleatório dentro de uma **faixa base** fixa (padrão AT 1~2, RAT 1~4) |
| Cristal Eletrosonoro em cultivo | Escala linearmente entre "rendimento inicial" e "rendimento final" com o progresso de cultivo, mais uma pequena oscilação aleatória |
| Cristal Eletrosonoro Perfeito | **Rendimento fixo** (padrão 16 para AT e RAT), sem aleatoriedade |

## Cultivando o Cristal Eletrosonoro

O Cristal Eletrosonoro progride por quatro estágios baseados no valor de cultivo:

| Estágio | Progresso |
|-------|----------|
| Dormente | < 20% |
| Agitando | 20% ~ 55% |
| Ressoante | 55% ~ 85% |
| Sobrecarregado | ≥ 85% |

* O cristal só ganha valor de cultivo quando o coletor é atingido por **raios naturais** (as descargas que produzem Raio de Altíssima Tensão). Raios artificiais não contribuem para o cultivo
* Uma vez que o valor de cultivo atinge o máximo, o Cristal Eletrosonoro se transforma automaticamente num **Cristal Eletrosonoro Perfeito**
* O Cristal Eletrosonoro Perfeito não cultiva mais, mas fornece um rendimento máximo estável

## Dicas de Automação

* O coletor precisa estar conectado a uma rede ME online, senão descargas nele são desperdiçadas
* Se você não quer esperar por tempestades naturais, use o [Ionizador Atmosférico](../machines/atmospheric-ionizer.md) com Condensado de Tempestade para forçar tempo de tempestade
* Para uma solução totalmente independente do clima, use a [Bobina de Tesla](tesla-coil.md) para produzir Raios de AT / RAT sob demanda
