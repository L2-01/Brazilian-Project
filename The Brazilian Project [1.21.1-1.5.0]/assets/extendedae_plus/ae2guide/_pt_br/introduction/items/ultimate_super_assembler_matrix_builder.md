---
navigation:
  parent: introduction/index.md
  title: Construtor Definitivo da Super Matriz de Montagem
  position: 13
  icon: extendedae_plus:ultimate_super_assembler_matrix_builder
categories:
  - extendedae_plus items
item_ids:
  - extendedae_plus:ultimate_super_assembler_matrix_builder
---

# Construtor Definitivo da Super Matriz de Montagem

<ItemImage id="extendedae_plus:ultimate_super_assembler_matrix_builder" scale="4" />

O **Construtor Definitivo da Super Matriz de Montagem** coloca e forma imediatamente a estrutura fixa da Super Matriz de Montagem Definitiva. Ele fornece uma pré-visualização travada após uma origem ser selecionada; segure **Ctrl** durante a pré-visualização para mostrar as partes individuais da estrutura.

## Fluxo de Construção

1. Clique com o botão direito numa face de bloco para selecionar o bloco vazio adjacente como origem da construção.
2. Inspecione a pré-visualização. Agache e clique com o botão direito noutro bloco para substituir a origem selecionada.
3. Clique com o botão direito num bloco novamente para construir na origem selecionada.
4. Agache e clique com o botão direito no ar para cancelar a origem selecionada sem construir.

O construtor verifica cada posição de bloco necessária antes de colocar qualquer coisa. Ele não sobrescreve blocos existentes, e uma colocação que falha deixa o mundo inalterado.

## Uso no Criativo e no Sobrevivência

No modo Criativo, a estrutura é colocada sem consumir materiais.

No modo Sobrevivência, primeiro agache e clique com o botão direito numa **Interface ME** para vincular sua rede ME. Antes de construir, a ferramenta simula o custo total de materiais nessa rede. Se todos os materiais estiverem disponíveis, ela os extrai e coloca a estrutura completa. Se não, o chat lista cada item faltante e sua quantidade; nenhum material é consumido.

<Recipe id="extendedae_plus:ultimate_super_assembler_matrix_builder" />

> A ferramenta armazena em si mesma a origem selecionada e a Interface ME vinculada. Mantenha o mesmo item construtor ao continuar uma colocação pendente.
