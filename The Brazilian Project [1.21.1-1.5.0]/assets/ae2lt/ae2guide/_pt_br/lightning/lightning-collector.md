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

O **Coletor de Raios** é o ponto de partida do sistema de Raios. Quando um raio cai dentro da sua área de coleta, o coletor injeta energia de Raios diretamente na rede ME.

*`"Emprestando dos outros, buscando a si mesmo."`*

`— Bloco Misterioso`

## Uso Básico

Coloque um **Para-Raios vanilla diretamente em cima do coletor** e conecte o coletor a uma rede ME. Raios naturais e artificiais são verificados usando o bloco que contém a posição do impacto. A área de coleta é um **cubo 3×3×3 centrado no bloco do para-raios superior**, estendendo um bloco em todas as direções. Mantenha o para-raios exposto ao céu para tempestades naturais.

Quando áreas de coleta se sobrepõem, os coletores são tentados na ordem da distância dos seus para-raios superiores ao bloco atingido. Um coletor que não consegue armazenar energia permite que o próximo tente. **Cada raio pode ser coletado com sucesso por no máximo um coletor, uma vez.** Mesmo uma inserção parcial consome o raio; relâmpagos posteriores ou um save/reload não podem produzir mais energia dele.

Três condições precisam ser atendidas para que uma descarga seja produtiva:

* Um Para-Raios deve estar colocado no bloco diretamente acima do coletor
* A rede deve estar online
* A rede deve ter capacidade de armazenamento suficiente para aceitar os Raios prestes a serem produzidos (caso contrário, a descarga é desperdiçada)

O nível de Raio produzido depende do raio coletado:

* **Raio artificial** (por exemplo, invocado por um Cristal de Sobrecarga carregado ou largado) → **Raio de Alta Tensão**
* **Raio natural** (um raio de tempestade real) → **Raio de Altíssima Tensão**

Após cada coleta bem-sucedida, o coletor entra numa breve recarga (padrão 0 tiques, configurável). Cada coletor pode coletar com sucesso no máximo um raio por tique.

## Cristal Eletrosonoro e Rendimento

<ItemImage id="ae2lt:electro_chime_crystal" scale="2" float="left" />

O coletor tem um **espaço de cristal** dedicado onde você pode inserir um **Cristal Eletrosonoro**. Se um cristal está instalado e o progresso do seu cultivo determinam o rendimento de cada descarga.

| Estado do Cristal | Rendimento |
|---------------|-------|
| Sem cristal | Aleatório dentro de uma **faixa base** fixa (padrão HV 1~2, EHV 1~4) |
| Cristal Eletrosonoro em cultivo | Escala linearmente entre "rendimento inicial" e "rendimento final" conforme o progresso do cultivo, mais uma pequena variação aleatória |
| Cristal Eletrosonoro Perfeito | **Rendimento fixo** (padrão 16 tanto para HV quanto EHV), sem aleatoriedade |

## Cultivando o Cristal Eletrosonoro

O Cristal Eletrosonoro progride por quatro estágios conforme o valor de cultivo:

| Estágio | Progresso |
|-------|----------|
| Adormecido | < 20% |
| Em agitação | 20% ~ 55% |
| Ressonante | 55% ~ 85% |
| Sobrecarregado | ≥ 85% |

* O cristal só ganha valor de cultivo quando o coletor é atingido por **raio natural** (as descargas que produzem Raios de Altíssima Tensão) e a rede tem capacidade suficiente para armazenar os Raios produzidos. Raios artificiais não contribuem para o cultivo
* Quando o valor de cultivo atinge o máximo, o Cristal Eletrosonoro se transforma automaticamente num **Cristal Eletrosonoro Perfeito**
* O Cristal Eletrosonoro Perfeito não cultiva mais, mas fornece um rendimento máximo estável

## Dicas de Automação

* O coletor precisa ter um Para-Raios diretamente acima e estar conectado a uma rede ME online, caso contrário as descargas são desperdiçadas
* Se não quiser esperar por tempestades naturais, use o [Ionizador Atmosférico](../machines/atmospheric-ionizer.md) com Condensado de Tempestade para forçar clima de tempestade
* Para uma solução totalmente independente do clima, use a [Bobina de Tesla](tesla-coil.md) para produzir Raios HV / EHV sob demanda
