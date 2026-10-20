---
navigation:
  title: Tabela de Nós
  parent: computer/index.md
  position: 3
---

# Tabela de Nós

A visão por nó de uma rede montada. Lista todos os nós que pertencem à rede — com seu tipo de bloco, localização e um par de botões de ação para pular até ele no mundo ou editar remotamente sua configuração.

Abra-a pelos botões de subsistema depois de montar uma rede. Aperte **SAIR** no canto superior esquerdo para voltar.

## A Tabela

![Tabela de Nós mostrando quatro linhas — Baú, Barril, Barril, Baú](../computer/images/node-table.png)

Cada linha mostra um nó da rede. Colunas:

- **Dispositivo** — um ícone de item do bloco ao qual o nó está preso, mais o nome de exibição daquele bloco (`Baú`, `Barril`, `Fornalha`, etc.).
- **Localização** — a dimensão e as coordenadas do bloco. A dimensão usa um código curto (`OVR` = Overworld, `NTH` = Nether, `END` = End, dimensões customizadas mostram seu próprio código curto). As coordenadas vêm como `X, Y, Z`.
- **Ações** — dois botões de ícone no lado direito de cada linha.

![Detalhe de uma linha de nó — Baú no Overworld em 29,-60,70 com botões de destaque + configurações](../computer/images/node-row.png)

### Ações da Linha

- **Destacar** (o ícone de lâmpada) — alterna um contorno brilhante no nó no mundo, facilitando encontrá-lo. O contorno permanece até você clicar na lâmpada de novo ou fechar a tela do Computador.
- **Configurações** (o ícone de engrenagem / terminal) — abre a tela de configuração completa daquele nó **remotamente**, de onde você estiver. Você não precisa ir ficar ao lado do nó para editar seus canais ou filtros.

## Agrupamento por Rótulo

Nós com rótulo são agrupados sob aquele rótulo. O nome do rótulo aparece como uma linha de cabeçalho; clique no cabeçalho para recolher o grupo inteiro em uma linha, clique de novo para expandir. Nós sem rótulo aparecem soltos no fim da lista.

O estado de recolhimento é lembrado durante a sessão — expanda os grupos em que está trabalhando e recolha o resto para manter a tabela legível em redes grandes.

Os rótulos são definidos no campo [Cabeçalho → Definir Rótulo](../nodes/header.md) de cada nó, ou copiados automaticamente quando você cola com a [Chave-Inglesa → Copiar/Colar](../wrench/copy-paste.md).

## Mostrar / Ocultar em Massa

Dois botões no canto superior direito da Tabela de Nós:

- **SHOW** — **liga a visibilidade de renderização** de todos os nós da rede montada. Todos os nós são desenhados no mundo com opacidade total, esteja você segurando uma chave-inglesa ou não.
- **HIDE** — **desliga** a visibilidade de renderização de todos os nós da rede montada. Os nós só são desenhados enquanto você segura uma chave-inglesa, com opacidade reduzida.

Para relembrar o que a alternância Visível faz por nó, veja [Cabeçalho → Visível](../nodes/header.md).

## Paginação

Sete linhas cabem por página. Role a roda do mouse para navegar por redes maiores.

## Bom Saber

- A Tabela de Nós é ao vivo. Nós adicionados, removidos ou rerrotulados aparecem/desaparecem sem precisar reabrir o Computador.
- Configurações remotas abrem a tela completa do nó que você veria no mundo — filtros, melhorias, todos os canais. As mudanças são aplicadas da mesma forma como se você estivesse na frente do nó.
- Os contornos de destaque são do lado do cliente e só visíveis para você, não para outros jogadores no servidor.
