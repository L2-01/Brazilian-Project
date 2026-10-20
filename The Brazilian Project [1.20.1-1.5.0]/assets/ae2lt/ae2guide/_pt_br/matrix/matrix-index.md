---
navigation:
  title: Matriz de Deformação da Matéria Tianshu
  icon: ae2lt:matter_warping_matrix_controller
  parent: index.md
  position: 45
---

# Matriz de Deformação da Matéria Tianshu

A **Matriz de Deformação da Matéria Tianshu** é um multibloco de fabricação de rede ME de grande porte. Ela executa os padrões armazenados nos seus Armazenamentos de Padrões, usando despacho configurável, amplificação e controle térmico para produção de alta taxa de materiais-base e componentes intermediários.

A matriz é um **provedor de fabricação**, não armazenamento de fabricação. Uma CPU de Fabricação ME ainda planeja cada trabalho e fornece seus ingredientes. A matriz aceita o trabalho, monta os resultados e os insere diretamente de volta na rede.

<SubPages />

## Fluxo Básico

1. [Construa a estrutura fixa 7×11×7](construction.md), coloque um Núcleo Principal no centro e preencha as 80 posições restantes de Unidades Periféricas
2. Insira padrões em pelo menos um Armazenamento de Padrões
3. Conecte a Porta da Matriz a uma rede ME energizada
4. Solicite um trabalho de fabricação num terminal ME; a matriz participa como provedora dos seus padrões armazenados

## Requisitos de Operação

* A estrutura deve estar formada e sua configuração de núcleo deve ser válida
* Deve haver exatamente uma Porta da Matriz e um núcleo principal
* Pelo menos um Armazenamento de Padrões deve estar instalado
* A porta deve estar conectada a uma rede ME ativa; seu consumo fixo em repouso é **8 AE/t**, e o multibloco formado consome **1 canal**. Enquanto trabalha, a matriz também consome **1 AE** para cada cópia de padrão que aceita com sucesso

A estrutura não requer FE externo e não consome Raios diretamente.
