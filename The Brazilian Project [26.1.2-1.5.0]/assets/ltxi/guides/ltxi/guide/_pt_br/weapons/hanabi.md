---
navigation:
    title: Hanabi
    icon: hanabi
    parent: weapons/index.md
    position: 133
---

# *Hanabi* 33/GL

<ItemImage id="hanabi" scale="3" />

## Atributos

- Dano base: Varia (veja abaixo)
- Projétil: Granadas de Orbe
- Velocidade do projétil: 30 m/s
- Gatilho: Semiautomático
- Resfriamento do gatilho: 0.75 seg

## Munições

A Hanabi pode disparar vários tipos de munição. Após extensa pesquisa de campo, substituímos as granadas explosivas
padrão pelas nossas novas munições Faiscantes. Outros tipos precisam ser desbloqueados via
[Módulos de Melhoria de Equipamento](../fundamentals/upgrade_system.md).

### Faiscante

Esta munição cria uma forte explosão primária, depois se divide em 14 Bombinhas que causam enorme dano explosivo numa
grande área circular.

- Raio de explosão: 10.0
- Dano base: 30.0
- Dano de Bombinha: 10.0
- Tag de dano `#minecraft:is_explosion`.

### Chama

<UpgradeEntry id="flame_grenade_core" />

Cria um campo de chamas estacionário que persiste por **5 segundos** e queima continuamente tudo dentro dele. Não
recomendado contra alvos muito móveis.

- Raio de explosão: 9.0
- Dano base: 10.0
- Dano do campo de chamas: 4.0 a cada 4 tiques (100.0 de dano potencial total)
- O dano é tagueado `#minecraft:is_fire`, tanto o impacto quanto as chamas.
- 3x de dano bônus contra inimigos `#ltxi:weak_to_flame`
  - Errantes, Ursos-Polares, Golems de Neve

### Crio

<UpgradeEntry id="cryo_grenade_core" />

Munições Crio explodem inimigos numa grande área com gelo. Recomendadas para controle de multidões ou inimigos fracos
a gelo.

- Raio de explosão: 12.0
- Dano base: 4.0
- 8x de dano bônus contra inimigos `#ltxi:weak_to_cryo`
  - Por padrão, esta tag é `#minecraft:freeze_hurts_extra`: Marchadores, Blazes, Cubos de Magma
- Aplica [*Gélido III*](../fundamentals/mob_effects.md#frostbite) por 20 segundos

### Elétrico

<UpgradeEntry id="electric_grenade_core" />

A especialidade das munições Elétricas é combate molhado e subaquático.

- Raio de explosão: 10.0, *20.0 se a munição impactar em chuva ou água*
- Dano base: 30.0
- 3x de dano bônus se qualquer um dos critérios for atendido:
  - O alvo está em chuva ou água
  - É tagueado `#ltxi:weak_to_electric`: Tartarugas, Axolotes, Guardiões, Guardiões-Mestre, Peixes, Golfinhos, Lulas, Lulas-Brilhantes, Girinos

### Ácido

<UpgradeEntry id="acid_grenade_core" />

Munições de Ácido são especializadas contra alvos fortemente blindados ou de alta ameaça. Seu raio de explosão é menor,
mas causam dano aumentado para compensar.

- Raio de explosão: 5.0
- Dano base: 60.0
- Aplica [*Corrosão III*](../fundamentals/mob_effects.md#corroding) por 10 segundos

### Gás Sombrio

<UpgradeEntry id="gloom_gas_grenade_core" />

Munições de Gás Sombrio enfraquecem o dano e as habilidades do inimigo.

- Raio de explosão: 5.0
- Dano base: 4.0
- Aplica [*Penumbra III*](../fundamentals/mob_effects.md#gloom) por 30 segundos
