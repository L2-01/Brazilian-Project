---
navigation:
  title: Tridente de Netuno
  icon: nautec:neptunes_trident
  position: 6
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:neptunes_trident
---

# <Color id="light_purple">Tridente de Netuno</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="neptunes_trident" scale="2"/>
  Um tridente inquebrável que volta para você e libera uma onda de choque de maré onde acerta.
</Column>

O Tridente de Netuno funciona como um tridente vanilla com dano maior. Ele nunca quebra, e sempre voa de volta a você na velocidade de Lealdade III. Segure usar e solte para arremessá-lo; ataque com ele para usá-lo corpo a corpo.

***

## <Color id="gold">Dano</Color>

| Ataque | Dano |
|---|---|
| Arremessado | 18 |
| Corpo a corpo | 19 (velocidade de ataque 1.2) |
| Giro de Correnteza | 18 |

Os golpes corpo a corpo varrem como espada, acertando criaturas ao lado do seu alvo.

***

## <Color id="gold">Onda de Choque de Maré</Color>

A primeira coisa que um tridente arremessado acerta, criatura ou bloco, libera uma onda de choque de maré ali. Um relâmpago mostra onde ela disparou; aquele raio é só visual e não inicia incêndios.

* Ela atinge tudo num raio de 5 blocos por 14 de dano no centro, caindo para 7 na borda, e os empurra para longe do centro.
* Cada nível de Afiação adiciona 3 de dano. Cada nível de Repulsão aumenta o empurrão.
* Ela não atinge você, seus pets domesticados, seus aliados de equipe, nem jogadores em criativo ou espectador.
* Após uma onda de choque, o tridente precisa de 3 segundos antes de poder liberar outra. Você pode continuar arremessando nesse intervalo; esses arremessos só acertam sem onda de choque. O espaço de inventário do tridente mostra o tempo restante.

O raio, o dano, os bônus por nível e o tempo de recarga estão em `config/nautec-common.toml` (`tridentShockwaveRadius`, `tridentShockwaveDamage`, `tridentShockwaveDamagePerSharpness`, `tridentShockwaveKnockback`, `tridentShockwaveKnockbackPerLevel`, `tridentShockwaveCooldown`).

***

## <Color id="gold">Encantamentos</Color>

Ele aceita os encantamentos de tridente e os de espada:

* Empalamento, Correnteza e Canalização
* Afiação, Ruína, Praga dos Artrópodes, Repulsão, Aspecto Flamejante, Saque e Afiada
* Maldição do Desaparecimento

Lealdade já vem embutida, e ele nunca precisa de Inquebrável ou Remendo. Como em qualquer tridente, só um entre Afiação, Ruína, Praga dos Artrópodes e Empalamento pode ir nele. Afiação é o que também aumenta o dano da onda de choque. Correnteza e Canalização não podem ir juntos.

Com Correnteza, usá-lo na água ou na chuva o lança a você em vez de arremessá-lo, então um tridente de Correnteza não libera onda de choque. Canalização invoca um raio de verdade num alvo sob céu aberto durante uma tempestade, igual a um tridente vanilla.

Sua encantabilidade é muito baixa, então use livros numa bigorna em vez de uma mesa de encantamentos.

***

## <Color id="gold">Obtendo um</Color>

A receita usa materiais da [Câmara de Ressonância](resonance_chamber.md) e da [Forja de Pressão Abissal](pressure_forge.md), então coloque as duas para funcionar antes. Veja [Materiais Profundos](materials.md).

<Recipe id="nautec:neptunes_trident"/>
