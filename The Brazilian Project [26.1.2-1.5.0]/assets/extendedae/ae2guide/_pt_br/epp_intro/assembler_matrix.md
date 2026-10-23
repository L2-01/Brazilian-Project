---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Matriz de Montagem
    icon: extendedae:assembler_matrix_frame
categories:
- extended devices
item_ids:
- extendedae:assembler_matrix_frame
- extendedae:assembler_matrix_wall
- extendedae:assembler_matrix_glass
- extendedae:assembler_matrix_pattern
- extendedae:assembler_matrix_crafter
- extendedae:assembler_matrix_speed
---

# Matriz de Montagem

<Row>
<BlockImage id="extendedae:assembler_matrix_frame" p:formed="true" p:powered="true" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_wall" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_glass" scale="5"></BlockImage>
</Row>
<Row>
<BlockImage id="extendedae:assembler_matrix_pattern" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_crafter" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_speed" scale="5"></BlockImage>
</Row>

A Matriz de Montagem é uma estrutura multibloco. Ela é uma combinação de <ItemLink id="ae2:molecular_assembler" /> e <ItemLink id="ae2:pattern_provider" />.
Ela pode executar muitos trabalhos de fabricação ao mesmo tempo (com <ItemLink id="ae2:crafting_accelerator" />s suficientes na sua rede ME) e economizar canais para você.

## Estrutura

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/assembler_matrix.snbt"></ImportStructure>
</GameScene>

É um paralelepípedo retangular, com arestas entre 3 e 7.

- Suas arestas são compostas de Estruturas da Matriz de Montagem.
- Suas faces são compostas de blocos de Parede da Matriz de Montagem ou Vidro da Matriz de Montagem.
- Seu interior é composto de Núcleos de Padrões, Fabricação ou Velocidade da Matriz de Montagem.

Uma Matriz de Montagem válida precisa conter pelo menos um Núcleo de Padrões e um Núcleo de Fabricação.
Ela precisa estar completamente preenchida e não pode ser oca.
Quando a Matriz de Montagem está corretamente formada e energizada, as linhas da Estrutura da Matriz de Montagem ficam azuis.

## Núcleo da Matriz de Montagem

Há 3 Núcleos da Matriz de Montagem diferentes.

- Núcleo de Padrões da Matriz de Montagem

A Matriz de Montagem só aceita padrões pelo seu Núcleo de Padrões. Cada Núcleo de Padrões fornece 36 espaços de padrão para a Matriz de Montagem.

- Núcleo de Fabricação da Matriz de Montagem

A Matriz de Montagem distribui os trabalhos de fabricação recebidos aos seus Núcleos de Fabricação. Cada Núcleo de Fabricação pode executar 8 trabalhos de fabricação ao mesmo tempo.

- Núcleo de Velocidade da Matriz de Montagem

Ele funciona como o <ItemLink id="ae2:speed_card" /> da Matriz de Montagem. Cinco Núcleos de Velocidade permitem que a Matriz de Montagem rode na velocidade máxima.
Instalar mais de cinco Núcleos de Velocidade não concede um impulso adicional de velocidade.

## GUI

Clicar com o botão direito numa Matriz de Montagem formada e online abre sua GUI.

![GUI](../pic/assembler_matrix.png)

Você pode adicionar ou pesquisar padrões nela e ver quantos trabalhos de fabricação ela está executando.
