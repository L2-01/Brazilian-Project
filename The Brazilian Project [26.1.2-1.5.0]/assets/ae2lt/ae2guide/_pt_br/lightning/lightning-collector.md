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

Coloque o Coletor de Raios **ao ar livre onde os raios possam alcançá-lo** e conecte-o a uma rede ME. Duas condições precisam ser atendidas para que uma descarga seja produtiva:

* A rede deve estar online
* A rede deve ter capacidade de armazenamento suficiente para aceitar os Raios prestes a ser produzidos (caso contrário o impacto é desperdiçado)

O tier de Raios produzido depende do raio coletado:

* **Raio artificial** (invocado por um jogador carregando um Cristal de Sobrecarga ou descarregado por uma Bobina de Tesla) → **Raio de Alta Tensão**
* **Raio natural** (um raio real de tempestade) → **Raio de Altíssima Tensão**

Após cada coleta bem-sucedida, o coletor entra numa curta recarga (padrão 0 ticks, configurável).

## Cristal Eletrosonoro e Rendimento

<ItemImage id="ae2lt:electro_chime_crystal" scale="2" float="left" />

O coletor tem um **slot de cristal** dedicado onde você pode inserir um **Cristal Eletrosonoro**. Se um cristal está instalado e o quanto seu cultivo avançou determinam o rendimento de cada impacto.

| Estado do Cristal | Rendimento |
|---------------|-------|
| Sem cristal | Aleatório dentro de uma **faixa base** fixa (padrão HV 1~2, EHV 1~4) |
| Cristal Eletrosonoro em cultivo | Escala linearmente entre o "rendimento inicial" e o "rendimento final" com o progresso de cultivo, mais uma pequena variação aleatória |
| Cristal Eletrosonoro Perfeito | **Rendimento fixo** (padrão 16 para HV e EHV), sem aleatoriedade |

## Cultivando o Cristal Eletrosonoro

O Cristal Eletrosonoro avança por quatro estágios conforme o valor de cultivo:

| Estágio | Progresso |
|-------|----------|
| Adormecido | < 20% |
| Em agitação | 20% ~ 55% |
| Ressonante | 55% ~ 85% |
| Sobrecarregado | ≥ 85% |

* O cristal só ganha valor de cultivo quando o coletor é atingido por **raios naturais** (os impactos que produzem Raio de Altíssima Tensão) e a rede tem capacidade suficiente para armazenar os Raios produzidos. Raios artificiais não contribuem para o cultivo
* Quando o valor de cultivo atinge o máximo, o Cristal Eletrosonoro transforma-se automaticamente num **Cristal Eletrosonoro Perfeito**
* O Cristal Eletrosonoro Perfeito não cultiva mais, mas fornece um rendimento máximo estável

## Dicas de Automação

* O coletor deve estar conectado a uma rede ME online, caso contrário as descargas nele são desperdiçadas
* Se você não quiser esperar tempestades naturais, use o [Ionizador Atmosférico](../machines/atmospheric-ionizer.md) com Condensado de Tempestade para forçar o clima de tempestade
* Para uma solução totalmente independente do clima, use a [Bobina de Tesla](tesla-coil.md) para produzir Raios HV / EHV sob demanda
