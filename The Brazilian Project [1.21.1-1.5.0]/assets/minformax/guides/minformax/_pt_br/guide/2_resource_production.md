---
item_ids:
  - minformax:farmer
  - minformax:fluid_replicator
  - minformax:block_replicator
  - minformax:ore_coalescer
navigation:
  title: 2. Automação, Replicadores & Processamento
  icon: minformax:ultimate_ingot
---

# Automação, Replicadores & Processamento

Escale sua produção para além das recompensas de criaturas. Este capítulo detalha a produção agrícola, as máquinas de replicação de itens/fluidos e a fábrica definitiva de processamento de minérios.

---

## 1. Colheita Automatizada: O Agricultor

O <ItemLink id="minformax:farmer" /> é sua máquina principal para lidar com materiais agrícolas. Ele elimina a necessidade de cultivo manual.

<Row>
    <BlockImage id="minformax:farmer" scale="4" />
    <RecipeFor id="minformax:farmer" />
</Row>

* **Montagem:** Coloque o Agricultor e conecte-o a uma fonte de energia FE.
* **Configuração:** Insira uma semente, plantação ou muda no espaço dele.
* **Logística:** Garanta que uma **unidade de armazenamento adjacente** esteja conectada para receber suas colheitas. O bloco gerencia continuamente os ciclos de plantio e colheita de forma autônoma. Todas as plantações e saídas são totalmente navegáveis no JEI.

---

## 2. Duplicação Simplificada: Replicadores

Quando você precisa de um suprimento infinito de um bloco de construção ou fluido específico, pode usar os Replicadores. Tanto o <ItemLink id="minformax:block_replicator" /> quanto o <ItemLink id="minformax:fluid_replicator" /> são máquinas minimalistas, sem interface, projetadas para loops de alta velocidade.

<Row>
  <BlockImage id="minformax:block_replicator" scale="4" />
  <RecipeFor id="minformax:block_replicator" />
  <BlockImage id="minformax:fluid_replicator" scale="4" />
  <RecipeFor id="minformax:fluid_replicator" />
</Row>

* **Como Inserir Blocos:** Segure o item de bloco físico desejado na mão e **clique com o botão direito** no Replicador de Blocos para inseri-lo.
* **Como Injetar Fluidos:** **Clique com o botão direito** no Replicador de Fluido com um balde ou contêiner cheio de fluido para travar o tipo de líquido.
* **Logística de Saída:** Como esses blocos não têm telas de inventário, eles **exigem um bloco de armazenamento adjacente** para operar. Eles repassam as saídas instantaneamente. Consulte o JEI para ver todos os itens e fluidos compatíveis.

---

## 3. Processamento de Alto Nível: O Coalescedor de Minério

O <ItemLink id="minformax:ore_coalescer" /> representa a refinaria definitiva para processamento de minérios brutos.
<Row>
    <BlockImage id="minformax:ore_coalescer" scale="4" />
    <RecipeFor id="minformax:ore_coalescer" />
</Row>
* **Apenas Minérios em Bloco:** A máquina **só aceita minérios em bloco** (ex.: Minério de Diamante, Blocos de Minério de Ferro). Ela é incompatível com variantes de minério bruto.
* **Alta Capacidade:** Construído com capacidade ampliada de espaços de inventário interno para lidar com saídas de nível industrial.
* **Energia:** Requer um fornecimento contínuo de energia FE para operar.

---

### Exemplo de Chão de Fábrica
Esta montagem exibe um Coalescedor de Minério, um Replicador de Blocos e um Agricultor automatizado despejando recompensas num baú simultaneamente.

<GameScene zoom={3.5} interactive={true}>
    <Block id="minecraft:chest" x="0" y="0" z="0" />
    <Block id="minformax:ore_coalescer" x="0" y="0" z="1" />
    <Block id="minformax:block_replicator" x="-1" y="0" z="0" />
    <Block id="minformax:farmer" x="1" y="0" z="0" />
</GameScene>
