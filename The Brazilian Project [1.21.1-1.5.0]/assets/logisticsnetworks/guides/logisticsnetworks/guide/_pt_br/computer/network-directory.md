---
navigation:
  title: Diretório de Redes
  parent: computer/index.md
  position: 1
---

# Diretório de Redes

O painel esquerdo da tela do Computador. Lista toda rede do servidor e permite escolher qual montar.

![Gerenciador de Rede com o Diretório de Redes listando quatro redes](../computer/images/network-manager-idle.png)

## O Que a Lista Mostra

Cada entrada no diretório mostra o **nome da rede** (o padrão é literalmente `Network` — qualquer outro texto significa que alguém a renomeou) e a **contagem de nós** daquela rede. Redes fixadas ganham uma estrela destacada no canto superior direito da entrada; as não fixadas mostram uma estrela esmaecida.

![Detalhe de uma entrada de rede — favoritada, atualmente selecionada](../computer/images/network-entry.png)

- O prefixo `>` ao lado do nome marca a entrada como **selecionada** — ela ainda não está montada, só destacada. Use a **Interação Primária (padrão: Botão Esquerdo)** de novo (ou use-a em **RUN**, ou duas vezes na entrada) para montar.
- A estrela amarela preenchida significa que esta rede está fixada (veja abaixo).

## Busca

O campo de texto no topo do diretório filtra a lista por correspondência de texto no nome da rede. Até 32 caracteres. Insensível a maiúsculas. Limpe-o para ver todas as redes de novo.

## Paginação

Só cabem 4 entradas por página. O rodapé mostra `1-4 / 16` — o intervalo exibido e a contagem total de redes. Role a roda do mouse sobre o diretório para passar pelas demais.

## Fixação (Redes Favoritas)

Use a Interação Primária no ícone de **estrela** na borda direita de uma entrada para alternar a fixação. Redes fixadas sobem para o topo da lista — útil quando você tem dezenas de redes e só se importa com algumas.

O estado de fixação é gravado no bloco do Computador, não no seu jogador nem na própria rede. Computadores diferentes podem ter conjuntos de fixadas diferentes e, se o bloco for quebrado, as fixações são redefinidas.

## Painel de Sessão Ociosa

Até você montar uma rede, o painel direito mostra um pequeno bloco de ajuda com três dicas de teclado:

- **DIR** — Navegar nas redes (aqui é onde você já está, o diretório).
- **TAB** — Selecionar sessão (escolhe entre Monitor de E/S e Tabela de Nós depois de montar).
- **RUN** — Abrir subsistema (pula para o subsistema selecionado).

O painel também mostra o emblema de contagem total de redes (`16 NETWORKS` na captura) e luzes de status (`IDLE` / `READY`) que acendem conforme você avança no fluxo.

## Montando uma Rede

Use a Interação Primária uma vez numa entrada para selecioná-la, depois em **RUN** (ou na entrada uma segunda vez) para montar. O texto ocioso some e os botões de subsistema destravam. Daqui você pode abrir o [Monitor de E/S](io-monitor.md) ou a [Tabela de Nós](node-table.md).

Para trocar de rede, aperte **EXIT** na página do subsistema para voltar ao diretório e escolha outra.
