---
navigation:
    title: "Torretas"
    icon: arc_turret
    position: 33
---

# Torretas A/DS

A linha de produtos Sistema de Defesa Automatizado, A/DS, é especializada em manter uma área livre de ameaças. Todas as
torretas são [máquinas melhoráveis](../fundamentals/upgrade_system.md).

## Torretas Disponíveis

- [*Ionos*](arc_turret.md)
- [*Atmos*](rocket_turret.md)
- [*Noctis*](railgun_turret.md)

## Operação

Torretas funcionam exclusivamente com <Color id="energy">Energia</Color>, sem itens adicionais. O inventário dentro das
torretas é um inventário de saída, usado apenas se uma melhoria de captura de drops de saque estiver instalada.

## Mira

Cada torreta tem seu próprio filtro de alvos padrão, algumas sendo mais seletivas que outras. Essa lógica de alvos pode
ser sobrescrita por módulos de melhoria.

## Estados da torreta

Torretas têm 5 estados distintos em que podem estar a qualquer momento: **Inativa**, **Buscando**, **Carregando**,
**Atirando** e **Resfriamento**. Cada estado executa sua própria lógica, sendo a maioria autoexplicativa.

### Inativa

O estado de uma torreta recém-fabricada ou de uma que ficou sem energia. Uma vez por segundo, ela verifica seu buffer
de energia para ver se tem energia suficiente para ao menos uma operação. Se tiver, muda para Buscando.

### Buscando

Torretas ativas passam a maior parte do tempo neste estágio. A torreta busca alvos válidos na sua área de busca num
intervalo de tempo determinado pelo tipo de torreta. Se alvos forem encontrados, são carregados na fila e a torreta
muda para o estado **Carregando**.

### Carregando/Resfriamento

Esses 2 estados se comportam de forma idêntica; a única diferença é o tempo gasto no estado. Considere-o o preparo ou
o resfriamento entre tiros. Cada torreta tem seus próprios tempos de carregamento/resfriamento.
