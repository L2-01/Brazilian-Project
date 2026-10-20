---
navigation:
  parent: introduction/index.md
  title: Acelerador de Entidade
  position: 6
  icon: extendedae_plus:entity_speed_ticker
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:entity_speed_ticker
---

# Acelerador de Entidade

O **Acelerador de Entidade** consome energia da rede AE2 para acelerar entidades de bloco no espaço à sua frente, funcionando de forma semelhante a uma "Tocha de Velocidade".

<GameScene zoom="8" background="transparent">
<ImportStructure src="../../structure/entity_speed_ticker.snbt"></ImportStructure>
</GameScene>

## Mecanismo de Operação

1. **Requisito de Ativação:** O acelerador deve conter pelo menos um **<ItemLink id="extendedae_plus:entity_speed_card" tag="{'EAS:mult':2}" />** para habilitar a aceleração.
2. **Efeito de Aceleração:** Pode acelerar entidades de bloco em até **1024×**.
3. **Fornecimento de Energia:** A aceleração consome energia da rede AE continuamente. Quando a energia AE é insuficiente, a aceleração pausa automaticamente até a energia ser restaurada.
    - Se o mod *Applied Flux* estiver instalado, a energia FE armazenada nos discos da rede pode ser consumida para continuar a aceleração quando a energia AE for insuficiente (prioridade configurável).
4. **Opções de Configuração:** O consumo base de energia, a lista-negra de entidades e o multiplicador de energia por entidade podem ser ajustados no arquivo de configuração.

![Interface do Acelerador de Entidade](../../picture/entity_speed_ticker_en.png)

## Mecanismo de Consumo de Energia

### Cálculo de Energia Base

O consumo de energia do Acelerador de Entidade é determinado pelo valor de configuração base `baseCost` e pelo multiplicador de aceleração alvo.

Sendo:
- \( M \) = multiplicador alvo (2, 4, 8, ..., 1024)
- \( B \) = energia base da configuração (padrão 512)
- \( L \) = log₂(M)

**Fórmula de consumo base de energia:**

![eformula1](../../picture/eformula1.png)

**Tabela de Referência de Energia Base (baseCost = 512)**

| Multiplicador | Energia Base (AE) |
|------------|----------------|
| 2          | 256            |
| 4          | 1.024          |
| 8          | 2.048          |
| 16         | 8.192          |
| 32         | 16.384         |
| 64         | 65.536         |
| 128        | 131.072        |
| 256        | 524.288        |
| 512        | 268.435.456    |
| 1024       | 2.147.483.648  |

### Eficiência do Cartão de Energia

Instalar Cartões de Energia reduz o consumo de energia. O efeito aumenta com o número de cartões, mas com retornos decrescentes.

Sendo \( N \) = número de cartões de energia instalados

**Fórmula da Proporção de Energia:**  
![eformula1](../../picture/eformula2.png)

**Tabela de Eficiência dos Cartões de Energia:**

| Número de Cartões | Eficiência | Proporção Real de Energia |
|----------------|------------|------------------|
| 0              | 0%         | 100%             |
| 1              | 10%        | 90%              |
| 2              | 14,5%      | 85,5%            |
| 3              | 17,15%     | 82,85%           |
| 4              | 19,0%      | 81,0%            |
| 5              | 20,21%     | 79,79%           |
| 6              | 21,15%     | 78,85%           |
| 7              | 21,9%      | 78,1%            |
| ≥8             | 50%        | 50%              |

### Cálculo Final de Energia

**Fórmula da Energia Final:**

**energiaFinal = energiaBase × proporcaoEnergia**

**Exemplo de Cálculo:**

- Multiplicador Alvo: 64×
- Cartões de Energia Instalados: 3
- Energia Base: 65.536 AE
- Proporção de Energia: 82,85%
- **Consumo Final de Energia:** 65.536 × 0,8285 ≈ 54.267 AE

> O consumo real de energia pode variar dependendo da configuração específica de cada entidade.
