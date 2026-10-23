---
navigation:
  parent: introduction/index.md
  title: Super Matriz de Montagem
  position: 10
  icon: extendedae_plus:assembler_matrix_hybrid_plus
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:super_assembler_matrix_frame
  - extendedae_plus:super_assembler_matrix_wall
  - extendedae_plus:assembler_matrix_hybrid_plus
  - extendedae_plus:assembler_matrix_upload_core
---

# Super Matriz de Montagem

<Row>
  <BlockImage id="extendedae_plus:super_assembler_matrix_frame" scale="4" />
  <BlockImage id="extendedae_plus:super_assembler_matrix_wall" scale="4" />
  <BlockImage id="extendedae_plus:assembler_matrix_hybrid_plus" scale="4" />
</Row>

A **Super Matriz de Montagem** é um provedor de fabricação multibloco para o AE2. Depois de formada, conecte qualquer bloco ativo da matriz à rede ME e use seus padrões de fabricação armazenados pelo sistema normal de autofabricação do AE2.

## Pré-visualização da Estrutura

<GameScene zoom="5" background="transparent" interactive={true}>
  <ImportStructure src="../../structure/super_assembler_matrix.snbt"></ImportStructure>
</GameScene>

## Estrutura Padrão

Construa um cuboide selado de **3x3x3** até **9x9x9** blocos.

- Toda aresta externa deve usar uma **Estrutura da Super Matriz de Montagem**.
- Todo bloco de superfície externa que não for aresta deve usar uma **Parede da Super Matriz de Montagem** ou um bloco de Vidro da Matriz de Montagem do ExtendedAE.
- Toda posição interna deve usar um **Núcleo Híbrido da Super Matriz de Montagem**.
- Toda posição interna deve ser preenchida por um Núcleo Híbrido. Núcleos originais da matriz do ExtendedAE não formam esta estrutura.

Cada Núcleo Híbrido combina o efeito de um Núcleo de Padrões, um Núcleo de Fabricação e um Núcleo de Velocidade: fornece **72 espaços de padrão**, **512 trabalhos de fabricação** e o efeito de velocidade de **cinco Núcleos de Velocidade comuns**. Somente padrões de fabricação compatíveis com o montador molecular do AE2 podem ser inseridos.

<Recipe id="extendedae_plus:super_assembler_matrix_frame" />

<Recipe id="extendedae_plus:super_assembler_matrix_wall" />

## Estrutura Definitiva

A **Super Matriz de Montagem Definitiva** é uma estrutura fixa de **14x16x14**. Seu layout exato contém 312 Núcleos Híbridos e quatro Núcleos de Carregamento da Matriz de Montagem.

Quando formada, ela fornece **22.464 espaços de padrão** e uma capacidade de fabricação paralela efetivamente ilimitada (`2.147.483.647`). O layout exato foi pensado para ser colocado com o <ItemLink id="extendedae_plus:ultimate_super_assembler_matrix_builder" />.

> As posições vazias no layout fixo não são partes estruturais. Elas podem conter outros blocos sem impedir a formação da Matriz Definitiva.
