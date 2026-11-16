---
navigation:
  title: Monitor de E/S
  parent: computer/index.md
  position: 2
---

# Monitor de E/S

A visão de telemetria ao vivo de uma rede montada. Uma página mostra todos os canais, um gráfico de vazão ao vivo do canal escolhido e exatamente quais itens, fluidos e químicos estão se movendo nele.

Abra-a pelos botões de subsistema da rede montada. Use **Voltar** no canto superior esquerdo para retornar ao diretório. A página segue o tema de interface que você selecionou.

## Trilho de Canais

A coluna da esquerda lista os nove canais (**CH0** a **CH8**). Cada linha mostra:

- O nome do canal, ou **Canal N** se ele não tiver um.
- O número do canal e sua taxa ao vivo do último segundo, colorida por tipo: itens, fluidos, energia, químicos ou fonte.

Canais sem nós ativados nesta rede ficam esmaecidos e não podem ser selecionados. Use a **Interação Primária (padrão: Botão Esquerdo)** em qualquer outra linha para trocar o gráfico instantaneamente.

As taxas são agregadas **por índice de canal** entre todos os nós da rede.

## Gráfico de Vazão

- Uma barra por segundo, a mais nova à direita. Escolha a janela com **30s / 1min / 2min**.
- O cabeçalho mostra a taxa atual do canal na sua unidade: itens por segundo, `mB/s` para fluidos e químicos, `RF/s` para energia e fonte por segundo.
- Passe o cursor sobre uma barra para ver seu valor exato e há quantos segundos foi.
- O histórico começa quando você abre a página e cobre até os últimos dois minutos.

## Detalhamento de Recursos

Canais de itens, fluidos e químicos listam o que está se movendo sob o gráfico:

- Ícone, nome, taxa por segundo e participação no total do canal na janela selecionada.
- Itens são distinguidos com exatidão: poções diferentes, livros encantados ou itens nomeados ganham linhas próprias.
- Passe o cursor numa linha para o tooltip completo do item mais quanto se moveu na janela.
- Use a Interação Primária numa linha para mostrar só aquele recurso no gráfico e no cabeçalho. Use de novo, ou o **✕** ao lado do nome, para voltar ao total.
- **Outros** reúne tudo fora dos 16 recursos mais movimentados a cada segundo.
- Role a lista quando houver mais de três linhas.

Canais de Energia e Fonte carregam um único recurso, então mostram cartões de **Média**, **Pico** e **Movido** em vez de uma lista.

## Lendo o Gráfico

- Barras altas e constantes significam vazão constante.
- Um gráfico vazio significa que o canal existe, mas nada está se movendo. Verifique filtros, modo de redstone e se a origem realmente tem o recurso.
- Um padrão com picos significa transferências em rajadas, geralmente Atraso alto ou um produtor intermitente.
- Uma queda repentina para zero significa que o canal parou: origem esgotada, redstone o desligou ou o nó saiu da rede.
