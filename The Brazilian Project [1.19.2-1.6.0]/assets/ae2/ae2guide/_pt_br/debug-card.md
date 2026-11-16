---
navigation:
  title: Cartão de Depuração
  icon: debug_card
item_ids:
  - ae2:debug_card
---

Esta página descreve como usar o cartão de depuração para investigar alguns problemas.
Você provavelmente não precisa ler isto, a menos que seja um desenvolvedor do AE2 / de addons,
ou tenhamos pedido para você ler para ajudar a diagnosticar um problema, ou tenha curiosidade sobre como o AE2 funciona internamente.

### Preparação

Você precisa habilitar `unsupportedDeveloperTools` na configuração do AE2.
Tenha muito cuidado com algumas dessas opções — há um motivo para ficarem atrás de uma opção contendo **unsupported**.
O item <ItemLink id="debug_card" /> é razoavelmente seguro de usar; dê um a si mesmo e segure-o na mão principal.

Também certifique-se de ter o WTHIT (Fabric) ou o Jade (Forge) instalado.

Ao olhar para um bloco ou parte do AE2, você deverá ver algo assim:
![Uma imagem da exibição do cartão de depuração.](assets/large/debug-card-display.png)

### Conectividade de nós

O indicador **Node Exposed** destaca de quais lados este dispositivo permite conexões externas.
Isso deve corresponder ao que é visível no mundo; caso contrário, é um bug.

### Taxas de tique

Para minimizar lag, a maioria dos dispositivos do AE2 que executam a cada tique "dorme" quando não tem trabalho a fazer,
e depois "acorda" lentamente com o tempo. É por isso que os pontos de importação e exportação demoram para atingir a
velocidade máxima. Essa informação é visível na exibição de depuração:

#### Status de Tique

- **Sleeping**: o dispositivo está dormindo, ou seja, não fará nada até ser despertado.
- **Awake**: o dispositivo não está dormindo, ou seja, deve ter algum trabalho agendado.
- **Alertable**: o dispositivo pode passar de dormindo para acordado se quiser.
- **Queued**: o dispositivo definitivamente tem trabalho agendado para depois.

**Se um dispositivo está acordado, mas não está na fila, é um bug!**

#### Taxa de Tique

A "velocidade atual" do dispositivo, ou seja, quantos tiques de jogo (1 tique = 0,05s) ele espera entre duas ações.
Esse valor deve diminuir conforme o dispositivo acorda e voltar a subir quando ele não tiver mais trabalho.

#### Last

A última vez que o dispositivo foi executado.

**Se um dispositivo está acordado, mas o último tique aconteceu há mais tempo do que a taxa de tique permite, é um bug!**
