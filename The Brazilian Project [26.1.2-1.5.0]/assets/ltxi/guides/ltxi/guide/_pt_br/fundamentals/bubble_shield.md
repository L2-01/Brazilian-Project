---
navigation:
    title: Escudo de Bolha
    position: 3
    parent: fundamentals/index.md
---

# Escudos de Bolha

## Sobre

O <Color id="shield">Escudo de Bolha</Color> é um campo de força pessoal utilizável por todas as entidades vivas. Ele serve
principalmente como um amortecedor de dano sobre a vida, como Absorção. Ele também bloqueia efeitos de poção prejudiciais, ao custo de um pouco
de vida do escudo.

## Entidades Não-Jogador

O escudo geral usado por entidades vivas age como um buffer de vida básico. Ele não tem recargas internas.
Qualquer dano restante ao quebrar o escudo atravessará para a vida da entidade.

## Jogadores

Os escudos de bolha de jogadores são mais avançados e muito mais eficazes em protegê-lo de ameaças. Este escudo tem uma
recarga interna de 1 segundo entre perdas de vida do escudo, seja por ataques ou por bloquear efeitos de poção. O escudo
de bolha recarrega automaticamente até sua **Capacidade de Escudo** após 5 segundos sem sofrer dano nem bloquear efeitos.
Alguns módulos de [melhoria](upgrade_system.md) podem sobrecarregar seu escudo. A vida de escudo dessas fontes
não se regenera naturalmente.

### Bloqueio de dano pelo escudo

Os escudos de jogador sempre negarão totalmente o dano, mesmo que ele seja maior que a vida do escudo. Quando seu escudo quebra,
você fica invulnerável a dano por 3 segundos (salvo dano que ignore invulnerabilidade).