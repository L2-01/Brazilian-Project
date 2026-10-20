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
- Projétil: Cápsulas
- Velocidade do projétil: 30 m/s
- Gatilho: Semiautomático
- Recarga do gatilho: 0,75 s

## Cápsulas

A Hanabi pode disparar vários tipos de cápsulas. Por padrão, apenas cápsulas Explosivas estão disponíveis. Outros tipos devem ser desbloqueados via
[Módulos de Melhoria de Equipamento](../fundamentals/upgrade_system.md).

### Explosiva
Cápsula explosiva padrão. Sem graça, mas confiável.

- Raio de explosão: 10,0
- Dano base: 30,0
- Tag de dano `#minecraft:is_explosion`.

### Chama

Cria um campo de chamas estacionário que persiste por **5 segundos** e queima continuamente tudo dentro dele. Não
recomendada contra alvos muito móveis.

- Raio de explosão: 9,0
- Dano base: 10,0
- Dano do campo de chamas: 4,0 a cada 4 tiques (potencial de dano total de 100,0)
- O dano tem a tag `#minecraft:is_fire`, tanto o impacto quanto as chamas.
- 3x de dano bônus contra inimigos `#ltxi:weak_to_flame`
  - Errantes, Ursos-Polares, Golems de Neve

### Crio
As cápsulas de crio bombardeiam inimigos numa grande área com gelo. Recomendadas para controle de multidões ou inimigos fracos contra gelo.

- Raio de explosão: 12,0
- Dano base: 4,0
- 8x de dano bônus contra inimigos `#ltxi:weak_to_cryo`
  - Por padrão, essa tag é `#minecraft:freeze_hurts_extra`: Marchadores, Blazes, Cubos de Magma
- Aplica [*Congelamento III*](../fundamentals/mob_effects.md#frostbite) por 20 segundos

### Elétrica
A especialidade das cápsulas elétricas é o combate molhado e subaquático.

- Raio de explosão: 10,0, *20,0 se a cápsula impactar na chuva ou na água*
- Dano base: 30,0
- 3x de dano bônus se qualquer critério for atendido:
  - O alvo está na chuva ou na água
  - Tem a tag `#ltxi:weak_to_electric`: Tartarugas, Axolotes, Guardiões, Guardiões-Mestres, Peixes, Golfinhos, Lulas, Lulas-Brilhantes, Girinos

### Ácido
As cápsulas de ácido se especializam contra alvos fortemente blindados ou de alta ameaça. Seu raio de explosão é menor, mas
causam dano aumentado para compensar.

- Raio de explosão: 5,0
- Dano base: 60,0
- Aplica [*Corrosão III*](../fundamentals/mob_effects.md#corroding) por 10 segundos

### Gás Sombrio
As cápsulas de gás sombrio enfraquecem o dano e as habilidades inimigas.

- Raio de explosão: 5,0
- Dano base: 4,0
- Aplica [*Sombras III*](../fundamentals/mob_effects.md#gloom) por 30 segundos