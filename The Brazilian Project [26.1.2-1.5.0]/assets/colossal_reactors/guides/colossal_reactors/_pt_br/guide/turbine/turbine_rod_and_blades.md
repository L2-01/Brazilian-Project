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
  - Multibloco
---

# Barras e hélices

<Row gap="16" fullWidth={true}>
  <ItemImage id="turbine_rod" scale="4" />
  <ItemImage id="turbine_blade" scale="4" />
</Row>

## Colocando hélices

A **Hélice de Turbina** não é colocada como um bloco normal. **Clique com o botão direito numa Barra da Turbina** segurando uma hélice para anexar a próxima hélice naquela barra. Cada clique usa uma hélice do seu inventário.

As hélices crescem para fora em **anéis** ao redor da barra, mantidas uniformes nos quatro lados:

1. **Primeiro passo** — 2 hélices em lados opostos.
2. **Próximo** — 4 hélices (uma de cada lado).
3. **Depois** — 8, 12, 16… até o limite do pacote (padrão **31** anéis por barra, até **124** hélices numa única barra).

O jogo sempre escolhe o lado que mantém o layout balanceado antes de passar para o próximo anel.

## Hélices no mundo

- As hélices são **etéreas**: você não pode andar dentro delas, minerá-las à mão ou apanhá-las diretamente.

- Se você **quebrar a barra**, todas as hélices daquela barra são removidas e largadas como itens **no bloco da barra** — você não precisa procurar pelo interior da turbina.

## Bônus de hélices por altura

Ao longo da direção do controlador de barras, as hélices são contadas **por camada** (como um andar em cada altura num eixo vertical).

| Como as camadas se comparam | Efeito |
|--------------------|--------|
| A camada superior tem **mais** hélices que a de baixo | **+3%** de bônus de saída por passo (padrão do pacote) |
| Mesma contagem de hélices | Sem mudança |
| A camada superior tem **menos** hélices | Cadeia de bônus **perdida**; cada queda também aplica cerca de **−3%** |

Para o melhor bônus, adicione anéis **de baixo para cima** (o layout **Eficiente** do construtor faz isso). Preencher cada camada no máximo imediatamente (**Produtivo**) pula esse bônus de subida mas alcança a vazão máxima de vapor mais cedo.

Em alguns pacotes, apenas **anéis pares** (4, 8, 12 hélices numa camada, e assim por diante) contam integralmente para a capacidade de vapor — confira a configuração do mod se os números parecerem baixos.

## Layouts do construtor

O [Construtor da Turbina](turbine_builder.md) pode colocar barras e hélices para você:

- **Eficiente** — barras em xadrez; os anéis de hélices crescem em altura passo a passo (melhor para o bônus de altura).
- **Produtivo** — barras em todo lugar permitido; cada camada recebe a contagem máxima de anéis imediatamente.

Colocar hélices à mão com o item segue a mesma ordem de anéis do construtor.
