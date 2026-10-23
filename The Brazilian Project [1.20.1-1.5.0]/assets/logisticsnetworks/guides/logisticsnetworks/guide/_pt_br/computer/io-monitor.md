---
navigation:
  title: Monitor de E/S
  parent: computer/index.md
  position: 2
---

# Monitor de E/S

A visão de telemetria ao vivo de uma rede montada. Mostra todo canal ativo da rede inteira — agregado por índice de canal — e permite detalhar cada um com um gráfico de vazão.

Abra-a pelos botões de subsistema da rede montada. Aperte **EXIT** no canto superior esquerdo para voltar ao diretório.

## Lista de Canais

![Lista de canais do Monitor de E/S — mostra CH0 (Itens) e CH1 (Fluidos)](../computer/images/io-monitor-channels.png)

Cada linha mostra um índice de canal que tem pelo menos um nó nesta rede rodando algo:

- **CH0** / **CH1** / ... — o índice do canal (0 a 8). Corresponde aos números dos espaços de canal na tela do nó.
- **Tipo** — o que o canal está movendo: **Itens**, **Fluidos**, **Energia**, **Químicos** ou **Fonte**. Colorido conforme o tipo.
- **Contagem de nós** — quantos nós desta rede têm este canal ativado.

A borda esquerda de cada linha tem uma **barra colorida** correspondente ao tipo do canal — verde para itens, azul para fluidos e assim por diante. Útil para identificar o tipo de relance sem ler o texto da direita.

A agregação é **por índice de canal**, não por nó. Se você tem 10 nós rodando uma transferência de Itens no CH0, a lista mostra uma linha `CH0 Items 10 nodes`, não 10 linhas. Clique na linha para detalhar o gráfico.

## Gráfico de Vazão

![Gráfico de vazão do Monitor de E/S — barras ao vivo do CH0 chegando a ~200K/s](../computer/images/io-monitor-graph.png)

Clicar numa linha de canal abre o gráfico dele. O gráfico mostra uma **linha do tempo ao vivo da vazão de transferência** daquele canal:

- **120 pontos de dados** no total. Cada barra é uma amostra; a barra mais à direita é a mais nova.
- Atualiza aproximadamente uma vez por segundo conforme a telemetria chega.
- A escala se adapta ao pico — o cabeçalho mostra o valor de pico (ex.: `200.0K /s`) com a unidade apropriada ao tipo:
  - **Itens** — itens por segundo.
  - **Fluidos** — milibalde por segundo (`mB/s`).
  - **Energia** — Forge Energy / RF por segundo.
  - **Químicos** — milibalde por segundo.
  - **Fonte** — fonte por segundo.
- O indicador **AO VIVO** no canto inferior esquerdo acende quando novos dados estão chegando.

## Lendo o Gráfico

- Barras altas e constantes = vazão constante. Configuração trabalhando duro.
- Gráfico vazio = o canal existe mas nenhuma transferência está acontecendo. Verifique filtros, estado e se o bloco de origem realmente tem o recurso.
- Padrão com picos = transferências em rajadas. Geralmente canais atrasados (Atraso alto) ou produtores intermitentes.
- Queda repentina para zero = o canal parou (origem esgotada, a Redstone o desligou, rede desmontada do nó etc.).

Aperte **EXIT** na página do gráfico para voltar à lista de canais.
