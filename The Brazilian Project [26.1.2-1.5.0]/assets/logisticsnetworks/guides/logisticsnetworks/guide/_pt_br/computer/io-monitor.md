---
navigation:
  title: Monitor de E/S
  parent: computer/index.md
  position: 2
---

# Monitor de E/S

A visão de telemetria ao vivo de uma rede montada. Uma página mostra todos os canais, um gráfico de vazão ao vivo do canal que você escolher e exatamente quais itens e fluidos estão se movendo nele.

Abra-o pelos botões de subsistema da rede montada. Use **Voltar** no canto superior esquerdo para retornar ao diretório. A página segue o tema de interface que você selecionou.

## Trilho de Canais

A coluna da esquerda lista todos os nove canais (**CH0** a **CH8**). Cada linha mostra:

- O nome do canal, ou **Channel N** se ele não tiver um.
- O número do canal e sua taxa ao vivo do último segundo, colorida por tipo: itens, fluidos ou energia.

Os canais sem nós ativados nesta rede ficam apagados e não podem ser selecionados. Use a **Interação Primária (padrão: Botão Esquerdo)** em qualquer outra linha para trocar o gráfico para ela na hora.

As taxas são agregadas **por índice de canal** entre todos os nós da rede.

## Gráfico de Vazão

- Uma barra por segundo, a mais nova à direita. Escolha a janela com **30s / 1m / 2m**.
- O cabeçalho mostra a taxa atual do canal na sua unidade: itens por segundo, `mB/s` para fluidos e `RF/s` para energia.
- Passe o mouse sobre uma barra para ver seu valor exato e há quantos segundos foi.
- O histórico começa quando você abre a página e cobre até os últimos dois minutos.

## Detalhamento de Recursos

Os canais de item e fluido listam o que está se movendo sob o gráfico:

- Ícone, nome, taxa por segundo e fatia do total do canal na janela selecionada.
- Os itens são distinguidos com exatidão: poções, livros encantados ou itens nomeados diferentes ganham linhas próprias.
- Passe o mouse sobre uma linha para ver a dica completa do item mais quanto se moveu na janela.
- Use a Interação Primária numa linha para mostrar só aquele recurso no gráfico e no cabeçalho. Use de novo, ou o **✕** ao lado do nome, para voltar ao total.
- **Outros** junta tudo que ficar fora dos 16 recursos mais movimentados de cada segundo.
- Role a lista quando houver mais de três linhas.

Os canais de energia carregam um único recurso, então mostram cartões de **Média**, **Pico** e **Movido** em vez de uma lista.

## Lendo o Gráfico

- Barras altas e estáveis significam vazão constante.
- Um gráfico vazio significa que o canal existe, mas nada está se movendo. Verifique filtros, modo de redstone e se a origem realmente tem o recurso.
- Um padrão de picos significa transferências em rajadas, normalmente Atraso alto ou um produtor intermitente.
- Uma queda súbita a zero significa que o canal parou: origem esgotada, o redstone o desligou ou o nó saiu da rede.
