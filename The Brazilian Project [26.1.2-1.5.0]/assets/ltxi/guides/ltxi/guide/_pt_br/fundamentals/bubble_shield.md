---
navigation:
    title: Escudo de Bolha
    position: 3
    parent: fundamentals/index.md
---

# Escudos de Bolha

## Sobre

O <Color id="shield">Escudo de Bolha</Color> é um campo de força pessoal usável por todas as entidades vivas. Ele serve
principalmente como um reservatório de dano sobre a vida, como a Absorção. Também bloqueia efeitos de poção nocivos, ao
custo de um pouco da vida do escudo.

## Entidades não-jogador

O escudo geral usado por entidades vivas funciona como um buffer básico de vida. Ele não tem recargas internas.
Qualquer dano restante ao quebrar o escudo vaza para a vida da entidade.

## Jogadores

Os escudos de bolha de jogadores são mais avançados e muito mais eficazes em proteger você de ameaças. Este escudo tem
uma recarga interna de 1 segundo entre perdas de vida do escudo, seja por ataques ou por bloquear efeitos de poção. O
escudo de bolha recarrega automaticamente até sua **Capacidade de Escudo** após 5 segundos sem receber dano nem bloquear
efeitos. Alguns módulos de [melhoria](upgrade_system.md) podem sobrecarregar seu escudo. A vida de escudo vinda dessas
fontes não se regenera naturalmente.

### Travamento de escudo

Escudos de jogador sempre negam o dano por completo, mesmo que ele seja maior que a vida do escudo. Quando seu escudo
quebra, você fica invulnerável a dano por 3 segundos (exceto por dano que ignore invulnerabilidade).
