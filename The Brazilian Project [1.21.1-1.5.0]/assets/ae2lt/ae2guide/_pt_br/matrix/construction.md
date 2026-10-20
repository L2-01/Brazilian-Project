---
navigation:
  title: Estrutura e Construção Automática
  icon: ae2lt:matter_warping_matrix_casing
  parent: matrix/matrix-index.md
  position: 10
item_ids:
  - ae2lt:matter_warping_matrix_casing
  - ae2lt:matter_warping_matrix_constraint_frame
  - ae2lt:matter_warping_matrix_glass
  - ae2lt:matter_warping_matrix_controller
  - ae2lt:matter_warping_matrix_port
---

# Estrutura e Construção Automática

A matriz ocupa um volume fixo de **7×11×7**. O Controlador fica centrado num dos lados 7×11. A estrutura se estende 6 blocos na direção para a qual o Controlador aponta, 3 blocos para cada lado e 5 blocos tanto acima quanto abaixo dele.

A cena abaixo mostra uma estrutura formável completa com a capacidade mínima de padrões, um Núcleo Principal Estável, uma Unidade de Thread T1 e 79 Unidades em Branco Tianshu. Arraste para girar. As anotações identificam o Controlador, a posição padrão da Porta e um Armazenamento de Padrões.

<GameScene zoom="2.4" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/matter_warping_matrix.snbt" />
  <DiamondAnnotation pos="0.5 5.5 3.5" color="#f2d37a">Controlador da Matriz de Deformação da Matéria Tianshu</DiamondAnnotation>
  <DiamondAnnotation pos="6.5 5.5 3.5" color="#85f29e">Posição padrão da Porta</DiamondAnnotation>
  <DiamondAnnotation pos="1.5 1.5 1.5" color="#80c6ff">Um Armazenamento de Padrões T1</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Referência Rápida

A página de uso do Controlador no JEI (`U` por padrão) pode codificar um padrão para a lista de materiais com um clique.

### Materiais da Configuração Mínima

Os seguintes blocos são colocados pela construção automática:

| Material | Quantidade |
|----------|------:|
| <ItemLink id="ae2lt:matter_warping_matrix_casing" /> | 174 |
| <ItemLink id="ae2lt:matter_warping_matrix_constraint_frame" /> | 132 |
| <ItemLink id="ae2lt:matter_warping_matrix_glass" /> | 44 |
| <ItemLink id="ae2lt:matter_warping_matrix_port" /> | 1 |
| <ItemLink id="ae2lt:matter_warping_matrix_pattern_storage_t1" /> ou <ItemLink id="ae2lt:matter_warping_matrix_pattern_storage_t2" /> | 1–50 |

A configuração mínima de núcleo manual é:

| Material | Quantidade |
|----------|------:|
| <ItemLink id="ae2lt:tianshu_blank_unit" /> | 79 |
| <ItemLink id="ae2lt:matter_warping_matrix_stable_main_core" /> | 1 |
| <ItemLink id="ae2lt:matter_warping_matrix_thread_unit_t1" /> | 1 |

O Núcleo Principal deve ocupar o centro da estrutura.

## Lista de Materiais da Construção Automática

Essas quantidades valem quando apenas o Controlador foi colocado e todas as outras posições-alvo estão vazias. Blocos válidos existentes são preservados e descontados do requisito real.

| Material | Quantidade | Comportamento da construção automática |
|----------|------:|---------------------|
| <ItemLink id="ae2lt:matter_warping_matrix_casing" /> | 174 | Revestimento externo fixo |
| <ItemLink id="ae2lt:matter_warping_matrix_constraint_frame" /> | 132 | Inclui os dois candidatos a Porta não usados pela Porta |
| <ItemLink id="ae2lt:matter_warping_matrix_glass" /> | 44 | Camada de observação fixa |
| <ItemLink id="ae2lt:matter_warping_matrix_port" /> | 1 | Colocada oposta ao Controlador, a menos que já exista uma Porta |
| <ItemLink id="ae2lt:matter_warping_matrix_pattern_storage_t1" /> ou <ItemLink id="ae2lt:matter_warping_matrix_pattern_storage_t2" /> | 1–50 | Pelo menos 1 é obrigatório; armazenamentos adicionais no inventário do jogador são inseridos em baias vazias, até 50 |

O Controlador já está no mundo e não é consumido pelo botão. Uma estrutura completa também requer os seguintes componentes colocados manualmente:

| Núcleo interno | Quantidade | Notas |
|---------------|------:|-------|
| Qualquer núcleo principal | 1 | Deve ocupar o centro geométrico |
| Unidades periféricas | 80 | Toda posição periférica deve ser preenchida; Núcleos Principais finitos exigem pelo menos uma Unidade de Thread, então o mínimo é uma Unidade de Thread T1 e 79 Unidades em Branco Tianshu |

Começar de um local vazio requer portanto no mínimo **1 Controlador, 352 blocos de estrutura colocados pelo botão, 1 Núcleo Principal e 80 Unidades Periféricas**. Os 352 blocos de estrutura já incluem um Armazenamento de Padrões mínimo obrigatório.

## Usando a Construção Automática

1. Coloque o Controlador e reserve o volume completo na direção para a qual ele aponta
2. Coloque os Revestimentos, Armações, Vidros, a Porta e os Armazenamentos de Padrões desejados no **inventário do jogador**
3. Use **Construção Automática** a partir do Controlador
4. Após a construção automática terminar, coloque manualmente um Núcleo Principal e 80 Unidades Periféricas na câmara central do núcleo

A construção automática só lê o inventário do jogador. Ela não pode extrair blocos da rede ME nem de contêineres adjacentes. Se apenas um Armazenamento de Padrões for desejado, não carregue Armazenamentos de Padrões da Matriz adicionais ao usar o botão.

Se qualquer Revestimento, Armação, Vidro, candidato a Porta ou baía de Armazenamento de Padrões contiver um bloco inválido, a construção automática não coloca nada. Limpe a posição-alvo bloqueada e tente de novo.

## Regras de Formação Manual

* Exatamente **um** dos três candidatos a Porta deve conter uma Porta da Matriz; os outros dois devem ser Armações de Restrição
* As 50 baias de Armazenamento de Padrões podem estar vazias ou conter armazenamentos T1/T2, mas pelo menos um armazenamento é obrigatório
* Nenhuma das 81 posições do núcleo pode estar vazia: o centro deve ser um Núcleo Principal e todas as outras posições devem ser Unidades Periféricas
* Núcleos Principais Estável, Quântico e de Sobrecarga exigem pelo menos uma Unidade de Thread; Quântico e de Sobrecarga permitem no máximo 15 Unidades Amplificadoras Tianshu; o Estável rejeita amplificadores, enquanto o Multidimensional só aceita Unidades em Branco Tianshu
* Aberturas mostradas pela estrutura não são membros da estrutura e não precisam ser seladas

Quando o último bloco obrigatório é colocado, a matriz reescaneia e se forma automaticamente. O botão de Construção Automática não precisa ser pressionado novamente.
