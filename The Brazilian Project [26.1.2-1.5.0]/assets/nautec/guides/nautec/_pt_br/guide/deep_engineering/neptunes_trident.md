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
  Um tridente indestrutível que volta para você e solta uma onda de choque de maré onde atinge.
</Column>

O Tridente de Netuno funciona como um tridente vanilla com dano maior. Nunca quebra, e sempre voa de volta para você na velocidade de Lealdade III. Segure o uso e solte para arremessá-lo; ataque com ele para usá-lo corpo a corpo.

***

## <Color id="gold">Dano</Color>

| Ataque | Dano |
|---|---|
| Arremessado | 18 |
| Corpo a corpo | 19 (velocidade de ataque 1.2) |
| Giro de Correnteza | 18 |

Golpes corpo a corpo varrem como uma espada, atingindo criaturas ao lado do seu alvo.

***

## <Color id="gold">Onda de Choque de Maré</Color>

A primeira coisa que um tridente arremessado atinge, criatura ou bloco, solta uma onda de choque de maré ali. Um raio mostra onde ela ocorreu; o raio é só visual e não inicia incêndios.

* Atinge tudo num raio de 5 blocos com 14 de dano no centro, caindo para 7 na borda, e os empurra para longe do centro.
* Cada nível de Afiação soma 3 de dano. Cada nível de Repulsão soma ao empurrão.
* Não atinge você, seus mascotes domesticados, seus colegas de equipe, nem jogadores no criativo ou espectador.
* Depois de uma onda de choque, o tridente precisa de 3 segundos antes de soltar outra. Você pode continuar arremessando nesse tempo; esses arremessos só atingem sem onda. O slot do tridente no inventário mostra o tempo restante.

Raio, dano, os bônus por nível e a recarga estão em `config/nautec-common.toml` (`tridentShockwaveRadius`, `tridentShockwaveDamage`, `tridentShockwaveDamagePerSharpness`, `tridentShockwaveKnockback`, `tridentShockwaveKnockbackPerLevel`, `tridentShockwaveCooldown`).

***

## <Color id="gold">Encantamentos</Color>

Ele aceita os encantamentos de tridente e os de espada:

* Empalamento, Correnteza e Canalização
* Afiação, Ruína dos Mortos, Ruína dos Artrópodes, Repulsão, Aspecto Flamejante, Saque e Alcance Varredor
* Maldição do Desaparecimento

Lealdade já vem embutida, e ele nunca precisa de Inquebrável ou Remendo. Como em qualquer tridente, só um de Afiação, Ruína dos Mortos, Ruína dos Artrópodes e Empalamento pode ser aplicado. Afiação é o que também eleva o dano da onda de choque. Correnteza e Canalização não podem ir juntos.

Com Correnteza, usá-lo na água ou na chuva o lança em vez de arremessar, então um tridente de Correnteza não solta onda de choque. Canalização invoca um raio de verdade num alvo sob o céu aberto durante uma tempestade, igual a um tridente vanilla.

Sua encantabilidade é muito baixa, então use livros numa bigorna em vez de uma mesa de encantamentos.

***

## <Color id="gold">Conseguindo Um</Color>

A receita usa materiais da [Câmara de Ressonância](resonance_chamber.md) e da [Forja de Pressão Abissal](pressure_forge.md), então ponha as duas funcionando primeiro. Veja [Materiais Profundos](materials.md).

<Recipe id="nautec:neptunes_trident"/>