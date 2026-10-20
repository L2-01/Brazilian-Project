---
navigation:
    title: "Torretas"
    icon: arc_turret
    position: 33
---

# Torretas A/DS

A linha de produtos Sistema de Defesa Automatizado, A/DS, se especializa em manter uma área livre de ameaças. Todas as torretas são
[máquinas melhoráveis](../fundamentals/upgrade_system.md).

## Torretas Disponíveis

- [*Ionos*](arc_turret.md)
- [*Atmos*](rocket_turret.md)
- [*Noctis*](railgun_turret.md)

## Operação

As torretas funcionam apenas com <Color id="energy">Energia</Color>, sem itens adicionais necessários. O inventário dentro das torretas
é um inventário de saída usado apenas se uma melhoria de captura de itens largados estiver instalada.

## Mira

Cada torreta tem seu próprio filtro de alvos padrão, algumas sendo mais seletivas que outras. Essa lógica de alvos pode ser
sobrescrita por módulos de melhoria.

## Estados das torretas

As torretas têm 5 estados distintos em que podem estar a qualquer momento: **Inativa**, **Buscando**, **Carregando**, **Disparando** e
**Recarga**. Cada estado executa sua própria lógica, a maioria autoexplicativa.

### Inativa

O estado de uma torreta recém-fabricada ou de uma torreta que ficou sem energia. Uma vez por segundo, ela verificará seu
buffer de energia para ver se tem energia suficiente para pelo menos uma operação. Se tiver, ela muda para Buscando.

### Buscando

Torretas ativas passam a maior parte do tempo neste estágio. A torreta buscará alvos válidos na sua área de busca
num intervalo de tempo determinado pelo tipo de torreta. Se alvos forem encontrados, eles são carregados na fila e a
torreta muda para o estado **Carregando**.

### Carregando/Recarga

Esses 2 estados se comportam de forma idêntica, a única diferença sendo o tempo gasto no estado. Considere isso a preparação
ou a recarga entre disparos. Cada torreta tem seus próprios tempos de carregamento/recarga.