---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Componentes de Multibloco
  position: 15
  icon: ufo:quantum_hyper_mechanical_casing
item_ids:
  - ufo:quantum_hyper_mechanical_casing
  - ufo:entropy_singularity_casing
  - ufo:entropy_assembler_core_casing
  - ufo:entropy_computer_condensation_matrix
---

# Componentes de Multibloco

Esses blocos definem o casco, a estrutura interna e as camadas de computação dos
multiblocos UFO. Suas posições são estruturais: substituir um por um bloco visualmente
semelhante não satisfaz a validação.

## Carcaça Hiper Mecânica Quântica

<BlockImage id="ufo:quantum_hyper_mechanical_casing" scale="3"></BlockImage>

O casco estrutural comum do Fabricador de Matéria Quântica, do Fatiador Quântico,
do Montador de Processador Quântico e da Crioforja Quântica. Substituições por escotilhas universais
são aceitas apenas em posições explicitamente permitidas por cada controlador.

<Recipe id="ufo:quantum_hyper_mechanical_casing" />

## Carcaça da Singularidade de Entropia

<BlockImage id="ufo:entropy_singularity_casing" scale="3"></BlockImage>

O casco externo de suporte de carga do Nexus Estelar. Ele não pode ser trocado por
uma Carcaça Hiper Mecânica Quântica nem por uma escotilha arbitrária.

<Recipe id="ufo:entropy_singularity_casing" />

## Carcaça do Núcleo do Montador de Entropia

<BlockImage id="ufo:entropy_assembler_core_casing" scale="3"></BlockImage>

Esta carcaça forma o denso corpo interno de computação do Nexus Estelar. Mantenha
suas posições internas exatamente como mostradas pela cena interativa de construção.

<Recipe id="ufo:entropy_assembler_core_casing" />

## Matriz de Condensação do Computador de Entropia

<BlockImage id="ufo:entropy_computer_condensation_matrix" scale="3"></BlockImage>

As matrizes de condensação ocupam posições internas fixas e não devem ser
substituídas por blocos de casco. Elas fazem parte da geometria de computação do Nexus.

<Recipe id="ufo:entropy_computer_condensation_matrix" />

## Regras de Construção

- Construa da camada mais baixa para cima e compare cada camada com a cena.
- Trate as posições de controlador, campo e condensação como fixas.
- Adicione automação opcional apenas por portas documentadas para aquela máquina.
- Se a formação falhar, verifique a orientação e o primeiro bloco divergente reportado
  pelo controlador antes de reconstruir as camadas ao redor.
