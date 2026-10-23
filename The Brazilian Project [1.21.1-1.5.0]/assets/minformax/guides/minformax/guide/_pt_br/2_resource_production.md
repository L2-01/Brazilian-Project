---
item_ids:
  - minformax:farmer
  - minformax:fluid_replicator
  - minformax:block_replicator
  - minformax:ore_coalescer
navigation:
  title: 2. Automação, Replicadores e Processamento
  icon: minformax:ultimate_ingot
---

# Automação, Replicadores e Processamento

Escale sua produção para além dos drops de mobs. Este capítulo detalha a produção agrícola, máquinas de replicação de itens/fluidos e a fábrica suprema de processamento de minérios.

---

## 1. Colheita Automatizada: O Agricultor

O <ItemLink id="minformax:farmer" /> é sua máquina principal para lidar com materiais agrícolas. Ele elimina a necessidade de agricultura manual.

<Row>
    <BlockImage id="minformax:farmer" scale="4" />
    <RecipeFor id="minformax:farmer" />
</Row>

* **Configuração:** Coloque o Agricultor e conecte-o a uma fonte de energia FE.
* **Configuração:** Insira uma semente, plantação ou muda no seu espaço.
* **Logística:** Garanta que uma **unidade de armazenamento adjacente** esteja conectada para receber sua produção. O bloco gerenciará continuamente os ciclos de plantio e colheita de forma autônoma. Todas as plantações e saídas são totalmente navegáveis no JEI.

---

## 2. Duplicação Simplificada: Replicadores

Quando você precisa de um suprimento infinito de um bloco de construção ou fluido específico, pode usar os Replicadores. Tanto o <ItemLink id="minformax:block_replicator" /> quanto o <ItemLink id="minformax:fluid_replicator" /> são máquinas minimalistas sem GUI, projetadas para loops de alta velocidade.

<Row>
  <BlockImage id="minformax:block_replicator" scale="4" />
  <RecipeFor id="minformax:block_replicator" />
  <BlockImage id="minformax:fluid_replicator" scale="4" />
  <RecipeFor id="minformax:fluid_replicator" />
</Row>

* **Como Inserir Blocos:** Segure o item de bloco físico desejado na mão e clique com o **Botão Direito** no Replicador de Blocos para inseri-lo.
* **Como Injetar Fluidos:** clique com o **Botão Direito** no Replicador de Fluido com um balde de fluido cheio ou contêiner para travar o tipo de líquido.
* **Logística de Saída:** Como esses blocos não têm telas de inventário, eles **exigem um bloco de armazenamento adjacente** para funcionar. Eles repassam as saídas instantaneamente. Consulte o JEI para ver todos os itens e fluidos compatíveis.

---

## 3. Processamento de Alto Nível: O Coalescedor de Minério

O <ItemLink id="minformax:ore_coalescer" /> representa a fábrica de refino suprema para processamento de minérios brutos.
<Row>
    <BlockImage id="minformax:ore_coalescer" scale="4" />
    <RecipeFor id="minformax:ore_coalescer" />
</Row>
* **Apenas Blocos de Minério:** A máquina **só aceita blocos de minério** (ex.: Minério de Diamante, Blocos de Minério de Ferro). É incompatível com variantes de minério bruto.
* **Alta Capacidade:** Construída com capacidade expandida de espaços de inventário interno para lidar com saídas de nível industrial.
* **Energia:** Requer um suprimento contínuo de energia FE para operar.

---

### Exemplo de Chão de Fábrica
Esta configuração mostra um Coalescedor de Minério, um Replicador de Blocos e um Agricultor automatizado despejando drops num baú simultaneamente.

<GameScene zoom={3.5} interactive={true}>
    <Block id="minecraft:chest" x="0" y="0" z="0" />
    <Block id="minformax:ore_coalescer" x="0" y="0" z="1" />
    <Block id="minformax:block_replicator" x="-1" y="0" z="0" />
    <Block id="minformax:farmer" x="1" y="0" z="0" />
</GameScene>
