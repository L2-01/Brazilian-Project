---
navigation:
  title: Monitor de E/S
  parent: computer/index.md
  position: 2
---

# Monitor de E/S

A visão de telemetria ao vivo de uma rede montada. Mostra todos os canais ativos em toda a rede — agregados por índice de canal — e permite aprofundar em cada um para ver um gráfico de vazão.

Abra-o pelos botões de subsistema da rede montada. Aperte **SAIR** no canto superior esquerdo para voltar ao diretório.

## Lista de Canais

![Lista de canais do Monitor de E/S — mostra CH0 (Itens) e CH1 (Fluidos)](../computer/images/io-monitor-channels.png)

Cada linha mostra um índice de canal que tem pelo menos um nó nesta rede executando algo:

- **CH0** / **CH1** / ... — o índice do canal (0 a 8). Corresponde aos números dos espaços de canal na tela do nó.
- **Tipo** — o que o canal está movendo: **Itens**, **Fluidos**, **Energia**, **Químicos** ou **Fonte**. Colorido para combinar com o tipo.
- **Contagem de nós** — quantos nós desta rede têm este canal ativado.

A borda esquerda de cada linha tem uma **barra colorida** correspondente ao tipo do canal — verde para itens, azul para fluidos, e assim por diante. Útil para identificar o tipo de relance sem ler o texto à direita.

A agregação é **por índice de canal**, não por nó. Se você tem 10 nós executando uma transferência de Itens no CH0, a lista mostra uma linha `CH0 Itens 10 nós`, não 10 linhas. Clique na linha para abrir o gráfico.

## Gráfico de Vazão

![Gráfico de vazão do Monitor de E/S — barras ao vivo do CH0 com pico perto de 200K/s](../computer/images/io-monitor-graph.png)

Clicar numa linha de canal abre seu gráfico. O gráfico mostra uma **linha do tempo ao vivo da vazão de transferência** daquele canal:

- **120 pontos de dados** no total. Cada barra é uma amostra; a barra mais à direita é a mais nova.
- Atualiza aproximadamente uma vez por segundo conforme a telemetria chega.
- A escala se adapta ao pico — o cabeçalho mostra o valor de pico (ex.: `200.0K /s`) com a unidade apropriada para o tipo:
  - **Itens** — itens por segundo.
  - **Fluidos** — milibaldes por segundo (`mB/s`).
  - **Energia** — Forge Energy / RF por segundo.
  - **Químicos** — milibaldes por segundo.
  - **Fonte** — fonte por segundo.
- O indicador **LIVE** no canto inferior esquerdo acende quando novos dados estão chegando.

## Lendo o Gráfico

- Barras altas constantes = vazão constante. Configuração trabalhando firme.
- Gráfico vazio = o canal existe mas nenhuma transferência está acontecendo. Verifique filtros, estado e se o bloco de origem realmente tem o recurso.
- Padrão irregular = transferências em rajadas. Geralmente canais com atraso (Atraso alto) ou produtores intermitentes.
- Queda súbita para zero = o canal parou (origem esgotada, Redstone o desligou, rede desmontada do nó, etc.).

Aperte **SAIR** na página do gráfico para voltar à lista de canais.
