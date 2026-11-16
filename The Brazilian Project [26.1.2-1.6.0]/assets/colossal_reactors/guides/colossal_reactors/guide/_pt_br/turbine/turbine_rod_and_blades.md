---
navigation:
  parent: turbine/turbine-index.md
  title: Barras e hélices
  icon: turbine_blade
  position: 15
item_ids:
  - colossal_reactors:turbine_blade
  - colossal_reactors:turbine_rod
categories:
  - multiblock
---

# Barras e hélices

<Row gap="16" fullWidth={true}>
  <ItemImage id="turbine_rod" scale="4" />
  <ItemImage id="turbine_blade" scale="4" />
</Row>

## Colocando hélices

A **Hélice de Turbina** não é colocada como um bloco normal. **Clique com o botão direito numa Barra da Turbina** segurando uma hélice para anexar a próxima hélice naquela barra. Cada clique usa uma hélice do seu inventário.

As hélices crescem para fora em **anéis** ao redor da barra, mantidas iguais nos quatro lados:

1. **Primeira etapa** — 2 hélices em lados opostos.
2. **Depois** — 4 hélices (uma em cada lado).
3. **Em seguida** — 8, 12, 16... até o limite do pacote (padrão **31** anéis por barra, até **124** hélices numa única barra).

O jogo sempre escolhe o lado que mantém o layout equilibrado antes de passar para o próximo anel.

## Hélices no mundo

- As hélices são **etéreas**: você não consegue andar nelas, minerá-las à mão nem pegá-las diretamente.

- Se você **quebrar a barra**, todas as hélices dela são removidas e largadas como itens **sobre o bloco da barra** — você não precisa procurar pelo interior da turbina.

## Bônus das hélices por altura

Ao longo da direção do controlador de barras, as hélices são contadas **por camada** (como um andar em cada altura de um eixo vertical).

| Como as camadas se comparam | Efeito |
|--------------------|--------|
| A camada superior tem **mais** hélices que a de baixo | Bônus de saída de **+3%** por etapa (padrão do pacote) |
| Mesma quantidade de hélices | Sem mudança |
| A camada superior tem **menos** hélices | Cadeia de bônus **perdida**; cada queda também aplica cerca de **−3%** |

Para o melhor bônus, adicione anéis **de baixo para cima** (o layout **Eficiente** do construtor faz isso). Preencher todas as camadas ao máximo de imediato (**Produtivo**) pula esse bônus de subida, mas atinge a vazão máxima de vapor mais cedo.

Em alguns pacotes, apenas **anéis pares** (4, 8, 12 hélices numa camada etc.) contam integralmente para a capacidade de vapor — confira a configuração do mod se os números parecerem baixos.

## Penalidade por falta de controlador de barra

Se a turbina tiver **alguma coluna de barras** cuja célula da plataforma de fechamento **não** seja um [Controlador da Barra da Turbina](turbine_structure.md), a eficiência das hélices é multiplicada por **0,95 (−5%)**.

- Um controlador num layout de eixo único: sem penalidade.
- Layouts de várias colunas (**Hiperfluxo**, sementes do Site, construções à mão): coloque um controlador **em cada coluna de barras** para anular o −5%.

## Layouts do construtor

O [Construtor da Turbina](turbine_builder.md) pode colocar barras, hélices e controladores de barras para você:

- **Site** — barras a partir de uma semente de design importada; o crescimento das hélices segue o perfil de subida/completo da semente.
- **Fluxo** — uma única coluna de barras centralizada. Um segundo controle alterna entre **Eficiente** (anéis de hélices que **sobem** camada por camada) e **Produtivo** (anéis completos em todas as camadas).
- **Hiperfluxo** — melhor grade de múltiplas barras para a área (algoritmo da grade de barras do ModDecoded); o construtor coloca um **controlador de barra em cada coluna**. Mesma alternância Eficiente / Produtivo do Fluxo.
- **Personalizada / Nenhum** — casca (e bobinas na Personalizada) sem o conteúdo do rotor.

Colocar hélices à mão com o item segue a mesma ordem de anéis do construtor.
