---
navigation:
  parent: introduction/index.md
  title: Cartão de Velocidade de Entidade
  position: 6
  icon: extendedae_plus:entity_speed_card
categories:
  - extendedae_plus items
item_ids:
  - extendedae_plus:entity_speed_card
---

# Cartão de Velocidade de Entidade

<Row>
  <ItemImage id="extendedae_plus:entity_speed_card" tag="{'EAS:mult':2}" scale="3" />
  <ItemImage id="extendedae_plus:entity_speed_card" tag="{'EAS:mult':4}" scale="3" />
  <ItemImage id="extendedae_plus:entity_speed_card" tag="{'EAS:mult':8}" scale="3" />
  <ItemImage id="extendedae_plus:entity_speed_card" tag="{'EAS:mult':16}" scale="3" />
</Row>

O **Cartão de Velocidade de Entidade** é um componente de upgrade que pode ser inserido no <ItemLink id="extendedae_plus:entity_speed_ticker" /> para fornecer vários níveis de aceleração.  
O nível do cartão determina diretamente o **limite máximo do multiplicador de aceleração** que o Acelerador de Entidade pode alcançar.

## Níveis de Cartão e Efeitos

Um Acelerador de Entidade pode conter até **4 cartões de velocidade** simultaneamente.  
O multiplicador de aceleração final é igual ao **produto dos multiplicadores base de todos os cartões inseridos**, mas **não pode exceder** o **limite máximo de velocidade** definido pelo **cartão de maior nível** instalado.

| Tipo de Cartão | Multiplicador Base | Limite Máximo de Velocidade (por cartão) |
| :--- | :--- | :--- |
| Cartão de Velocidade de Entidade (x2) | ×2 | ×8 |
| Cartão de Velocidade de Entidade (x4) | ×4 | ×64 |
| Cartão de Velocidade de Entidade (x8) | ×8 | ×256 |
| Cartão de Velocidade de Entidade (x16) | ×16 | ×1024 |

> **Regra de Inserção Mista**:  
> Ao misturar cartões de níveis diferentes, o multiplicador total é o produto de todos os multiplicadores base, mas o resultado final **não pode exceder** o **limite máximo de velocidade** do cartão de maior nível instalado.
>
> **Exemplo**: Insira um **cartão x2** e três **cartões x4**.
>
> - Multiplicador calculado: 2 × 4³ = 128
> - Cartão de maior nível: **x4**, com limite de **×64**
> - **Multiplicador final de aceleração = ×64**

## Receita de Fabricação
<RecipesFor id="extendedae_plus:entity_speed_card" />
