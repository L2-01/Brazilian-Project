---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Computador Quântico
  icon: advanced_ae:quantum_core
categories:
  - advanced devices
item_ids:
  - advanced_ae:quantum_unit
  - advanced_ae:quantum_core
  - advanced_ae:quantum_structure
  - advanced_ae:quantum_accelerator
  - advanced_ae:quantum_multi_threader
  - advanced_ae:quantum_storage_128
  - advanced_ae:quantum_storage_256
  - advanced_ae:data_entangler
---

# Computador Quântico

O computador quântico é um tipo especial de computador de fabricação. Ele é capaz de executar uma quantidade ilimitada de solicitações
de fabricação, desde que tenha armazenamento de fabricação suficiente.

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../structure/quantum_computer_multiblock.snbt"></ImportStructure>
</GameScene>

## Núcleo Quântico

<BlockImage id="advanced_ae:quantum_core" p:powered="true" p:formed="true" scale="4"></BlockImage>

O Núcleo Quântico é o coração do Computador Quântico. Ele tem 256M de armazenamento de fabricação e 8 threads de
co-processador por si só. É o único bloco que pode criar um computador quântico formado sozinho e fornecer todos os benefícios de um
computador quântico. No entanto, se usado para criar um multibloco, um computador muito mais poderoso pode ser criado. Quando usado como um
computador independente, a energia deve ser fornecida pelos lados de cima ou de baixo, onde ficam os conectores.

## Armazenamentos Quânticos

<Row gap="20">
<BlockImage id="advanced_ae:quantum_storage_128" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_storage_256" scale="4"></BlockImage>
</Row>

Esses blocos expandem o armazenamento de fabricação do núcleo quântico. Eles aumentam efetivamente a quantidade de tarefas concorrentes
que o computador quântico é capaz de executar. Há duas variações, com 128M e 256M de capacidade.

## Entrelaçador de Dados Quânticos

<BlockImage id="advanced_ae:data_entangler" scale="4"></BlockImage>

Os Entrelaçadores de Dados são um bloco especial que afeta todos os blocos de armazenamento presentes no multibloco. Eles permitem que os blocos de
armazenamento guardem dados em várias dimensões, multiplicando efetivamente seu armazenamento por 4. Apenas um deles pode ser colocado
em cada multibloco de computador quântico.

## Acelerador Quântico

<BlockImage id="advanced_ae:quantum_accelerator" scale="4"></BlockImage>

Os aceleradores quânticos adicionam 8 co-processadores ao multibloco do Computador Quântico. É importante notar que todos os padrões de fabricação
sendo executados pelo computador quântico podem compartilhar todos os co-processadores, então provavelmente é uma boa ideia investir
numa grande quantidade deles.

## Multi-Threader Quântico

<BlockImage id="advanced_ae:quantum_multi_threader" scale="4"></BlockImage>

Semelhante aos Entrelaçadores de Dados, os multi-threaders permitem que os aceleradores executem threads extras em dimensões separadas,
multiplicando seu poder de co-processamento por 4. Apenas um deles pode ser colocado em cada multibloco de computador quântico.

## Estrutura Quântica

<Row gap="20">
<BlockImage id="advanced_ae:quantum_structure" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_structure" p:formed="true" p:powered="true" scale="4"></BlockImage>
</Row>

Esses blocos fornecem a estrutura do computador quântico. Eles são usados como bloco de construção para o computador quântico e
conectam tudo junto.

## O multibloco

Para criar um computador quântico multibloco, algumas regras devem ser seguidas:
- O tamanho máximo é 7x7x7 (dimensões externas);
- Não pode haver espaços vazios dentro do multibloco. Eles podem ser preenchidos com <ItemLink id="advanced_ae:quantum_unit" />
sem benefícios adicionais;
- Exatamente um <ItemLink id="advanced_ae:quantum_core" />;
- No máximo um <ItemLink id="advanced_ae:data_entangler" />;
- No máximo um <ItemLink id="advanced_ae:quantum_multi_threader" />;
- Todos os blocos da camada externa devem ser <ItemLink id="advanced_ae:quantum_structure" />;
- Nenhum bloco do interior pode ser <ItemLink id="advanced_ae:quantum_structure" />.

## Configurações de Servidor

Vários valores podem ser ajustados pelas configurações de servidor. Como:
- Tamanho máximo do multibloco;
- Co-processadores em cada Acelerador Quântico;
- Quantidade máxima de Multi-Threaders Quânticos;
- Valor de multiplicação de threads do Multi-Threader;
- Quantidade máxima de Entrelaçadores de Dados;
- Valor de multiplicação de armazenamento do Entrelaçador de Dados;

Os limites da sua instância podem ser verificados nas dicas dos itens.
