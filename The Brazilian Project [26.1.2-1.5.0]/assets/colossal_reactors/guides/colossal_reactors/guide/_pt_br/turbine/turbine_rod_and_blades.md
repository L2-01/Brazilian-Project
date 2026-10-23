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
3. **Em seguida** — 8, 12, 16… até o limite do pacote (padrão **31** anéis por barra, até **124** hélices numa única barra).

O jogo sempre escolhe o lado que mantém o layout equilibrado antes de passar para o próximo anel.

## Hélices no mundo

- As hélices são **etéreas**: você não consegue andar nelas, minerá-las à mão nem pegá-las diretamente.

- Se você **quebrar a barra**, todas as hélices dela são removidas e dropadas como itens **sobre o bloco da barra** — você não precisa procurar pelo interior da turbina.

## Bônus das hélices por altura

Ao longo da direção do controlador de barras, as hélices são contadas **por camada** (como um andar em cada altura de um eixo vertical).

| Como as camadas se comparam | Efeito |
|--------------------|--------|
| A camada superior tem **mais** hélices que a de baixo | Bônus de saída de **+3%** por etapa (padrão do pacote) |
| Mesma quantidade de hélices | Sem mudança |
| A camada superior tem **menos** hélices | Cadeia de bônus **perdida**; cada queda também aplica cerca de **−3%** |

Para o melhor bônus, adicione anéis **de baixo para cima** (o layout **Eficiente** do construtor faz isso). Preencher todas as camadas ao máximo de imediato (**Produtivo**) pula esse bônus de subida, mas atinge a vazão máxima de vapor mais cedo.

Em alguns pacotes, apenas **anéis pares** (4, 8, 12 hélices numa camada etc.) contam integralmente para a capacidade de vapor — confira a configuração do mod se os números parecerem baixos.

## Layouts do construtor

O [Construtor da Turbina](turbine_builder.md) pode colocar barras e hélices para você:

- **Eficiente** — barras em xadrez; os anéis de hélices crescem etapa a etapa (melhor para o bônus de altura).
- **Produtivo** — barras em todos os lugares permitidos; cada camada recebe a contagem máxima de anéis imediatamente.

Colocar hélices à mão com o item segue a mesma ordem de anéis do construtor.
