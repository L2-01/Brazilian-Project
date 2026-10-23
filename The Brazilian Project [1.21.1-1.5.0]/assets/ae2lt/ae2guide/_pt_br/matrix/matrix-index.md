---
navigation:
  title: Matriz de Deformação da Matéria Tianshu
  icon: ae2lt:matter_warping_matrix_controller
  parent: index.md
  position: 45
---

# Matriz de Deformação da Matéria Tianshu

A **Matriz de Deformação da Matéria Tianshu** é um grande multibloco de fabricação para a rede ME. Ela executa padrões armazenados em seus Armazenamentos de Padrões, usando despacho, amplificação e controle térmico configuráveis para produção de alta vazão de materiais base e componentes intermediários.

A matriz é uma **fornecedora de fabricação**, não um armazenamento de fabricação. Uma CPU de Fabricação ME ainda planeja cada tarefa e fornece seus ingredientes. A matriz aceita o trabalho, monta os resultados e os insere diretamente de volta na rede.

<SubPages />

## Fluxo Básico

1. [Construa a estrutura fixa 7×11×7](construction.md), coloque um Núcleo Principal no centro e preencha as 80 posições de Unidades Periféricas restantes
2. Insira padrões em pelo menos um Armazenamento de Padrões
3. Conecte a Porta da Matriz a uma rede ME energizada
4. Solicite uma tarefa de fabricação num terminal ME; a matriz participa como fornecedora dos padrões que armazena

## Requisitos de Operação

* A estrutura deve estar formada e sua configuração de núcleo deve ser válida
* Exatamente uma Porta da Matriz e um núcleo principal devem estar presentes
* Pelo menos um Armazenamento de Padrões deve estar instalado
* A porta deve estar conectada a uma rede ME ativa; seu consumo fixo em repouso é **8 AE/t**, e o multibloco formado consome **1 canal**. Enquanto trabalha, a matriz também consome **1 AE** para cada cópia de padrão que aceita com sucesso

A estrutura não exige FE externo e não consome Raios diretamente.
