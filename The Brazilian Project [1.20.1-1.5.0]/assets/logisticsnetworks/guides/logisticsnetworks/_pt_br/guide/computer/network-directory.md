---
navigation:
  title: Diretório de Redes
  parent: computer/index.md
  position: 1
---

# Diretório de Redes

O painel esquerdo da tela do Computador. Lista todas as redes do servidor e permite escolher qual montar.

![Gerenciador de Rede com o Diretório de Redes listando quatro redes](../computer/images/network-manager-idle.png)

## O Que a Lista Mostra

Cada entrada no diretório mostra o **nome da rede** (o padrão é literalmente `Network` — qualquer outro texto significa que alguém a renomeou) e a **contagem de nós** daquela rede. Redes fixadas ganham uma estrela destacada no canto superior direito da entrada; as não fixadas mostram uma estrela apagada.

![Detalhe de uma entrada de rede — favoritada, atualmente selecionada](../computer/images/network-entry.png)

- O prefixo `>` ao lado do nome marca a entrada como **selecionada** — ela ainda não está montada, apenas destacada. Clique nela de novo (ou clique em "RUN" / clique duplo) para montar.
- A estrela amarela preenchida significa que esta rede está fixada (veja abaixo).

## Busca

O campo de texto no topo do diretório filtra a lista por correspondência de substring no nome da rede. Até 32 caracteres. Insensível a maiúsculas. Limpe-o para ver todas as redes novamente.

## Paginação

Apenas 4 entradas cabem por página. O rodapé mostra `1-4 / 16` — o intervalo atualmente exibido e a contagem total de redes. Role a roda do mouse sobre o diretório para navegar pelo resto.

## Fixação (Redes Favoritas)

Clique no ícone de **estrela** na borda direita de uma entrada para alternar a fixação. Redes fixadas sobem para o topo da lista — útil quando você tem dezenas de redes e só se importa com algumas.

O estado de fixação é armazenado no bloco Computador, não no seu jogador nem na própria rede. Computadores diferentes podem ter conjuntos de fixadas diferentes, e se o bloco for quebrado as fixações são resetadas.

## Painel de Sessão Ociosa

Até você montar uma rede, o painel direito mostra um pequeno bloco de ajuda com três dicas de teclado:

- **DIR** — Navegar nas redes (é aqui que você já está, o diretório).
- **TAB** — Selecionar sessão (escolher entre Monitor de E/S e Tabela de Nós após montar).
- **RUN** — Abrir subsistema (entrar no subsistema selecionado).

O painel também mostra o emblema de contagem total de redes (`16 NETWORKS` na captura) e luzes de status (`IDLE` / `READY`) que acendem conforme você progride no fluxo.

## Montando uma Rede

Clique numa entrada uma vez para selecioná-la, depois clique em **RUN** (ou clique na entrada uma segunda vez) para montar. O texto de ocioso desaparece e os botões de subsistema desbloqueiam. A partir daqui você pode abrir o [Monitor de E/S](io-monitor.md) ou a [Tabela de Nós](node-table.md).

Para trocar de rede, aperte **SAIR** na página do subsistema para voltar ao diretório, depois escolha outra.
