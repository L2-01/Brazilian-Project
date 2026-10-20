---
navigation:
  title: Diretório de Redes
  parent: computer/index.md
  position: 1
---

# Diretório de Redes

O painel esquerdo da tela do Computador. Lista todas as redes do servidor e deixa você escolher qual montar.

![Gerenciador de Rede com o Diretório de Redes listando quatro redes](../computer/images/network-manager-idle.png)

## O que a Lista Mostra

Cada entrada do diretório mostra o **nome da rede** (o padrão é literalmente `Network` — qualquer outro texto significa que alguém a renomeou) e a **contagem de nós** daquela rede. As redes fixadas ganham uma estrela destacada no canto superior direito da entrada; as não fixadas mostram uma estrela apagada.

![Detalhe de uma entrada de rede — favoritada, selecionada no momento](../computer/images/network-entry.png)

- O prefixo `>` ao lado do nome marca a entrada como **selecionada** — ela ainda não está montada, só destacada. Use a **Interação Primária (padrão: Botão Esquerdo)** de novo (ou use-a em **RUN**, ou duas vezes na entrada) para montar.
- A estrela amarela preenchida significa que esta rede está fixada (veja abaixo).

## Busca

O campo de texto no topo do diretório filtra a lista por correspondência de trecho no nome da rede. Até 32 caracteres. Insensível a maiúsculas. Limpe-o para ver todas as redes de novo.

## Paginação

Só 4 entradas cabem por página. O rodapé mostra `1-4 / 16` — a faixa atualmente exibida e a contagem total de redes. Role a roda do mouse sobre o diretório para folhear o resto.

## Fixação (Redes Favoritas)

Use a Interação Primária no ícone de **estrela** na borda direita de uma entrada para alternar a fixação. As redes fixadas ordenam no topo da lista — útil quando você tem dezenas de redes e só se importa com algumas.

O estado de fixação fica guardado no bloco do Computador, não no seu jogador nem na própria rede. Computadores diferentes podem ter conjuntos de fixadas diferentes, e se o bloco for quebrado as fixações resetam.

## Painel de Sessão Ociosa

Até você montar uma rede, o painel direito mostra um pequeno bloco de ajuda com três dicas de teclado:

- **DIR** — Navegar nas redes (é onde você já está, o diretório).
- **TAB** — Selecionar sessão (escolher entre Monitor de E/S e Tabela de Nós após montar).
- **RUN** — Abrir subsistema (pular para o subsistema selecionado).

O painel também mostra o selo de contagem total de redes (`16 NETWORKS` na captura) e as luzes de estado (`IDLE` / `READY`) que acendem conforme você avança no fluxo.

## Montando uma Rede

Use a Interação Primária numa entrada uma vez para selecioná-la, depois em **RUN** (ou na entrada uma segunda vez) para montar. O texto de ocioso some e os botões de subsistema desbloqueiam. Daqui você pode abrir o [Monitor de E/S](io-monitor.md) ou a [Tabela de Nós](node-table.md).

Para trocar de rede, aperte **EXIT** na página do subsistema para voltar ao diretório e escolha outra.
