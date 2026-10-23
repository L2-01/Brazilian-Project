---
navigation:
  title: Monitor de E/S
  parent: computer/index.md
  position: 2
---

# Monitor de E/S

A visão de telemetria ao vivo de uma rede montada. Uma página mostra todos os canais, um gráfico de vazão ao vivo para o canal escolhido e exatamente quais itens e fluidos estão se movendo nele.

Abra-a pelos botões de subsistema da rede montada. Use **Voltar** no canto superior esquerdo para retornar ao diretório. A página segue o tema de UI selecionado.

## Trilho de canais

A coluna da esquerda lista os nove canais (**CH0** a **CH8**). Cada linha mostra:

- O nome do canal, ou **Canal N** se ele não tiver um.
- O número do canal e sua taxa ao vivo do último segundo, colorida por tipo: itens, fluidos ou energia.

Canais sem nós ativados nesta rede ficam esmaecidos e não podem ser selecionados. Use **Interação Primária (padrão: Clique Esquerdo)** em qualquer outra linha para trocar o gráfico para ela instantaneamente.

As taxas são agregadas **por índice de canal** entre todos os nós da rede.

## Gráfico de vazão

- Uma barra por segundo, a mais recente à direita. Escolha a janela com **30s / 1m / 2m**.
- O cabeçalho mostra a taxa atual do canal na sua unidade: itens por segundo, `mB/s` para fluidos e `RF/s` para energia.
- Passe o mouse sobre uma barra para ver o valor exato e quantos segundos atrás ela foi.
- O histórico começa quando você abre a página e cobre até os últimos dois minutos.

## Detalhamento de recursos

Canais de item e fluido listam o que está se movendo sob o gráfico:

- Ícone, nome, taxa por segundo e participação no total do canal na janela selecionada.
- Itens são distinguidos com exatidão: poções diferentes, livros encantados ou itens nomeados ganham suas próprias linhas.
- Passe o mouse sobre uma linha para ver o tooltip completo do item mais quanto se moveu na janela.
- Use Interação Primária numa linha para mostrar só aquele recurso no gráfico e no cabeçalho. Use de novo, ou o **✕** ao lado do nome, para voltar ao total.
- **Outros** agrupa tudo fora dos 16 recursos mais movimentados a cada segundo.
- Role a lista quando houver mais de três linhas.

Canais de energia carregam um único recurso, então mostram cartões de **Média**, **Pico** e **Movido** em vez de uma lista.

## Lendo o gráfico

- Barras altas constantes significam vazão constante.
- Um gráfico vazio significa que o canal existe, mas nada está se movendo. Verifique filtros, modo de redstone e se a fonte realmente tem o recurso.
- Um padrão irregular significa transferências em rajadas, geralmente Atraso alto ou um produtor intermitente.
- Uma queda súbita a zero significa que o canal parou: fonte esgotada, redstone o desligou, ou o nó saiu da rede.
