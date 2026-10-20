---
navigation:
  title: Cartão de Depuração
  icon: debug_card
item_ids:
  - ae2:debug_card
---

Esta página descreve como usar o cartão de depuração para investigar alguns problemas.
Você provavelmente não precisa ler isto, a menos que seja um desenvolvedor do AE2 / de addons,
ou que tenhamos pedido para você ler isto para ajudar a diagnosticar um problema, ou que esteja curioso sobre como o AE2 funciona internamente.

### Preparação

Você precisa ativar `unsupportedDeveloperTools` na configuração do AE2.
Tenha muito cuidado com algumas dessas opções — há um motivo para estarem atrás de uma opção de configuração que contém **unsupported** (não suportado).
O item <ItemLink id="debug_card" /> é razoavelmente seguro de usar; você deve dar um a si mesmo e segurá-lo na mão principal.

Certifique-se também de ter instalado o WTHIT (Fabric) ou o Jade (Forge).

Ao olhar para um bloco ou parte do AE2, você deve ver algo parecido com isto:
![Uma imagem da exibição do cartão de depuração.](assets/large/debug-card-display.png)

### Conectividade de nós

O indicador **Node Exposed** destaca por quais lados este dispositivo permite conexões externas.
Isso deve corresponder ao que está visível no mundo; caso contrário, é um bug.

### Taxas de tique

Para minimizar lag, a maioria dos dispositivos do AE2 que executam tiques dorme quando não tem trabalho a fazer, e então "acorda" lentamente com o tempo.
É por isso que pontos de importação e exportação demoram a atingir a velocidade máxima.
Essa informação é visível na exibição de informações de depuração:

#### Status de tique

- **Sleeping**: o dispositivo está dormindo, ou seja, não fará nada até ser acordado.
- **Awake**: o dispositivo não está dormindo, ou seja, deve ter algum trabalho agendado.
- **Alertable**: o dispositivo tem permissão para ir de dormindo para acordado, se quiser.
- **Queued**: o dispositivo definitivamente tem algum trabalho agendado para depois.

**Se um dispositivo está acordado, mas não está na fila, é um bug!**

#### Taxa de tique

A "velocidade atual" do dispositivo, ou seja, quantos tiques de jogo (1 tique = 0,05s) ele espera entre duas ações.
Esse valor deve diminuir conforme o dispositivo acorda, e voltar a subir quando o dispositivo não tem trabalho a fazer.

#### Último

A última vez que o dispositivo executou um tique.

**Se um dispositivo está acordado, mas o último tique aconteceu há mais tempo do que a taxa de tique permitiria, é um bug!**
