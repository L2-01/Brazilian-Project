---
navigation:
  parent: turbine/turbine-index.md
  title: Construtor da Turbina
  icon: turbine_builder
  position: 30
item_ids:
  - colossal_reactors:turbine_builder
categories:
  - Multibloco
---

# Construtor da Turbina

<BlockImage id="turbine_builder" scale="4" />

O **Construtor da Turbina** constrói a turbina para você a partir dos itens no seu inventário — similar ao [Construtor do Reator](../multiblock/reactor_builder.md).

## Fluxo de trabalho típico

1. **Coloque** o construtor na face onde você quer que a carcaça da turbina comece.
2. **Abra** a tela e defina **largura, altura e profundidade** (dentro do limite de tamanho do seu pacote).
3. Abasteça o construtor com **revestimento**, **vidro**, **controlador de barras**, **barras**, **hélices** e os **blocos de armazenamento** que você quer para as bobinas.
4. Escolha um **layout**:
   - **Eficiente** — menos colunas de barras (xadrez); as hélices crescem anel a anel subindo o eixo (**+3%** de bônus de altura possível — veja [Barras e hélices](turbine_rod_and_blades.md)).
   - **Produtivo** — barras em toda coluna permitida; cada camada recebe anéis completos imediatamente (máximo de vapor mais cedo).
5. Escolha o **tipo de bobina** (alterna pelos metais que o mod suporta) e **quantas camadas de bobina** (padrão **3**, mude com ◀ ▶ na tela).
6. Use a **prévia** e o painel de **simulação** para ver RF/t estimado, uso de vapor e materiais necessários.
7. **Marcar entrada** diz ao construtor quais espaços do inventário suprem quais blocos para cada etapa.
8. Pressione **Build** quando estiver pronto. Você pode adicionar fluido ao tanque do construtor se o seu pacote usa isso para checagens de preparação.

Ordem de construção: **carcaça externa** → **controlador de barras e barras** → **hélices** → **blocos de bobina** nas camadas internas superiores.

## Painel de simulação

Mostra se o layout é válido, **RF/t** e **vapor** esperados, bônus de bobina e hélices, e uma **lista de materiais** — mesma ideia do construtor do reator. Os nomes dos botões podem variar por versão; leia as dicas de ferramenta na tela enquanto trabalha.
