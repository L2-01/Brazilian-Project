---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Matriz de Montagem
    icon: expatternprovider:assembler_matrix_frame
categories:
- extended devices
item_ids:
- expatternprovider:assembler_matrix_frame
- expatternprovider:assembler_matrix_wall
- expatternprovider:assembler_matrix_glass
- expatternprovider:assembler_matrix_pattern
- expatternprovider:assembler_matrix_crafter
- expatternprovider:assembler_matrix_speed
---

# Matriz de Montagem

<Row>
<BlockImage id="expatternprovider:assembler_matrix_frame" p:formed="true" p:powered="true" scale="5"></BlockImage>
<BlockImage id="expatternprovider:assembler_matrix_wall" scale="5"></BlockImage>
<BlockImage id="expatternprovider:assembler_matrix_glass" scale="5"></BlockImage>
</Row>
<Row>
<BlockImage id="expatternprovider:assembler_matrix_pattern" scale="5"></BlockImage>
<BlockImage id="expatternprovider:assembler_matrix_crafter" scale="5"></BlockImage>
<BlockImage id="expatternprovider:assembler_matrix_speed" scale="5"></BlockImage>
</Row>

A Matriz de Montagem é uma estrutura multibloco. É uma combinação de <ItemLink id="ae2:molecular_assembler" /> e <ItemLink id="ae2:pattern_provider" />.
Ela pode executar muitos trabalhos de fabricação ao mesmo tempo (com <ItemLink id="ae2:crafting_accelerator" />s suficientes na sua rede ME) e economizar canais para você.

## Estrutura

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/assembler_matrix.snbt"></ImportStructure>
</GameScene>

É um prisma retangular, com arestas de comprimento entre 3 e 7. 
- As arestas são compostas de Estrutura da Matriz de Montagem.
- As faces são compostas de Parede da Matriz de Montagem ou Vidro da Matriz de Montagem.
- O interior é composto de Núcleo de Padrões/Fabricação/Velocidade da Matriz de Montagem.

Uma Matriz de Montagem válida deve conter pelo menos um núcleo de padrões e um núcleo de fabricação.
Ela deve estar completamente preenchida e não pode ser oca.
Quando a Matriz de Montagem está formada corretamente e energizada, as linhas na Estrutura da Matriz de Montagem ficam azuis.

## Núcleo da Matriz de Montagem

Existem 3 Núcleos de Matriz de Montagem diferentes.

- Núcleo de Padrões da Matriz de Montagem

A Matriz de Montagem só aceita padrões dos seus núcleos de padrões. Cada núcleo de padrões fornece 36 espaços de padrão para a Matriz de Montagem.

- Núcleo de Fabricação da Matriz de Montagem

A Matriz de Montagem atribui os trabalhos de fabricação recebidos aos seus núcleos de fabricação. Cada núcleo de fabricação pode executar 8 trabalhos de fabricação ao mesmo tempo.

- Núcleo de Velocidade da Matriz de Montagem

Ele age como o <ItemLink id="ae2:speed_card" /> da Matriz de Montagem. 5 núcleos de velocidade permitem que a Matriz de Montagem rode na velocidade máxima.
Instalar mais de 5 núcleos de velocidade não dá aumento extra de velocidade.

## GUI

Clicar com o botão direito numa Matriz de Montagem formada e online abre sua GUI.

![GUI](../pic/assembler_matrix.png)

Você pode colocar padrões nela, pesquisar padrões e ver quantos trabalhos de fabricação ela está executando.
