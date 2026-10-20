---
navigation:
  title: Tabela de Nós
  parent: computer/index.md
  position: 3
---

# Tabela de Nós

A visão por nó de uma rede montada. Lista cada nó que pertence à rede — com seu tipo de bloco, localização e um par de botões de ação para pular até ele no mundo ou editar sua config remotamente.

Abra-a pelos botões de subsistema depois de montar uma rede. Aperte **EXIT** no canto superior esquerdo para voltar.

## A Tabela

![Tabela de Nós mostrando quatro linhas — Baú, Barril, Barril, Baú](../computer/images/node-table.png)

Cada linha mostra um nó da rede. Colunas:

- **Dispositivo** — um ícone de item do bloco em que o nó está preso, mais o nome de exibição daquele bloco (`Chest`, `Barrel`, `Furnace` etc.).
- **Localização** — a dimensão e as coordenadas do bloco. A dimensão usa um código curto (`OVR` = Overworld, `NTH` = Nether, `END` = End, dimensões personalizadas mostram seu próprio código curto). As coordenadas vêm como `X, Y, Z`.
- **Ações** — dois botões de ícone no lado direito de cada linha.

![Detalhe de uma linha de nó — Baú no Overworld em 29,-60,70 com botões de destacar + configurações](../computer/images/node-row.png)

### Ações da Linha

- **Destacar** (o ícone de lâmpada) — use a **Interação Primária (padrão: Botão Esquerdo)** para alternar um contorno brilhante no nó no mundo, tornando-o fácil de achar. O contorno fica até você usar a Interação Primária na lâmpada de novo ou fechar a tela do Computador.
- **Configurações** (o ícone de engrenagem / terminal) — abre a tela de configuração completa daquele nó **remotamente**, de onde você estiver. Você não precisa ir ficar ao lado do nó para editar seus canais ou filtros.

Use **Voltar à tabela** depois de editar para restaurar a rede montada, a posição de rolagem, os grupos expandidos, a seleção e o texto de rótulo pendente. Abrir um filtro a partir destas configurações mantém o mesmo caminho de volta.

## Agrupamento por Rótulo

Os nós com rótulo são agrupados sob aquele rótulo. O nome do rótulo aparece como linha de cabeçalho; use a Interação Primária no cabeçalho para colapsar o grupo inteiro numa linha, e use de novo para expandir. Os nós sem rótulo aparecem soltos no fim da lista.

O estado de colapso é lembrado durante a sessão — expanda os grupos em que está trabalhando e colapse o resto para manter a tabela legível em redes grandes.

Os rótulos são definidos no campo [Cabeçalho → Definir Rótulo](../nodes/header.md) de cada nó, ou copiados automaticamente quando você cola com a [Chave → Copiar/Colar](../wrench/copy-paste.md).

## Seleção e Rótulos em Massa

Use as caixas de seleção das linhas para selecionar nós. Uma caixa de seleção de grupo seleciona todos os membros; seu estado parcial significa que só alguns membros estão selecionados. **Mesmo bloco** seleciona os nós presos exatamente ao mesmo tipo de bloco da origem selecionada.

Digite um rótulo e aplique-o à seleção. Um rótulo existente fornece as configurações atuais do seu grupo. Para um rótulo novo, escolha a fonte das configurações na sua seleção. Layouts de melhoria compartilhados exigem melhorias físicas do seu inventário ou do armazenamento vinculado; suprimentos faltantes deixam os nós selecionados inalterados. Aplique um rótulo vazio para desagrupá-los.

## Mostrar / Ocultar em Massa

Dois botões no canto superior direito da Tabela de Nós:

- **SHOW** — **liga a visibilidade de renderização** de todos os nós da rede montada. Todos os nós são desenhados no mundo com opacidade total, segurando uma chave ou não.
- **HIDE** — **desliga a visibilidade de renderização** de todos os nós da rede montada. Os nós só são desenhados enquanto você segura uma chave, com opacidade reduzida.

Para relembrar o que a alternância Visível faz por nó, veja [Cabeçalho → Visível](../nodes/header.md).

## Paginação

A contagem de linhas visíveis se adapta à altura disponível. As localizações usam uma linha separada para manter as coordenadas completas legíveis. Role a roda do mouse para folhear redes maiores.

## Bom Saber

- A Tabela de Nós é ao vivo. Nós adicionados, removidos ou re-rotulados aparecem/desaparecem sem precisar reabrir o Computador.
- As Configurações remotas abrem a mesma tela de nó completa que você veria no mundo — filtros, melhorias, todos os canais. As mudanças são confirmadas da mesma forma que se você estivesse na frente do nó.
- Os contornos de destaque são do lado do cliente e só visíveis para você, não para os outros jogadores do servidor.
