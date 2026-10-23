---
navigation:
    title: "Efeitos em Criaturas"
    parent: fundamentals/index.md
    position: 2
---

# Efeitos em Criaturas (Efeitos de Poção)

## Gélido
Gélido desacelera os alvos. Também os congela pela duração do efeito.
### Modificadores de atributo
- Velocidade de Ataque: -25% x nível do efeito.
- Velocidade de Movimento: -25% x nível do efeito.
- Velocidade de Voo: -25% x nível do efeito.
- Velocidade de Escavação: -25% x nível do efeito.

-------

## Corrosão
Corrosão enfraquece a armadura do alvo.
### Modificadores de atributo
- Armadura: -33% x nível do efeito.
- Resistência da Armadura: -33% x nível do efeito.

-------

## Penumbra
Penumbra reduz *todo* o dano de ataque de um alvo, desde que possa ser rastreado até ele. Além disso,
o alvo afetado não pode aplicar nenhum efeito de poção durante a duração do efeito.

### Modificadores de atributo
- `limacore:damage_multiplier`: -25% x nível do efeito
