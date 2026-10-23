---
navigation:
  parent: turbine/turbine-index.md
  title: Construtor da Turbina
  icon: turbine_builder
  position: 30
item_ids:
  - colossal_reactors:turbine_builder
categories:
  - multiblock
---

# Construtor da Turbina

<BlockImage id="turbine_builder" scale="4" />

O **Construtor da Turbina** constrói a turbina para você a partir dos itens no inventário dele — semelhante ao [Construtor do Reator](../multiblock/reactor_builder.md).

## Fluxo de trabalho típico

1. **Coloque** o construtor na face onde você quer que a casca da turbina comece.
2. **Abra** a tela e defina **largura, altura e profundidade** (dentro do limite de tamanho do seu pacote).
3. Abasteça o construtor com **revestimento**, **vidro**, **controlador de barras**, **barras**, **hélices** e os **blocos de armazenamento** que você quiser para as bobinas.
4. Escolha um **layout**:
   - **Eficiente** — menos colunas de barras (xadrez); as hélices crescem anel a anel ao longo do eixo (**+3%** de bônus de altura possível — veja [Barras e hélices](turbine_rod_and_blades.md)).
   - **Produtivo** — barras em todas as colunas permitidas; cada camada recebe anéis completos de imediato (vapor máximo mais cedo).
5. Escolha o **tipo de bobina** (alterna entre os metais que o mod suporta) e **quantas camadas de bobina** (padrão **3**, mude com ◀ ▶ na tela).
6. Use a **prévia** e o painel de **simulação** para ver a RF/t estimada, o uso de vapor e os materiais necessários.
7. **Marcar entrada** diz ao construtor quais espaços do inventário fornecem quais blocos para cada etapa.
8. Pressione **Construir** quando estiver pronto. Você pode adicionar fluido ao tanque do construtor se o seu pacote usar isso nas verificações de configuração.

Ordem de construção: **casca externa** → **controlador de barras e barras** → **hélices** → **blocos de bobina** nas camadas interiores do topo.

## Painel de simulação

Mostra se o layout é válido, a **RF/t** e o **vapor** esperados, os bônus de bobina e hélice e uma **lista de materiais** — mesma ideia do construtor do reator. Os nomes dos botões podem variar por versão; leia as dicas na tela enquanto trabalha.
