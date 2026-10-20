---
navigation:
  title: Ionizador Atmosférico
  icon: ae2lt:atmospheric_ionizer
  parent: machines/machines-index.md
item_ids:
  - ae2lt:atmospheric_ionizer
  - ae2lt:clear_condensate
  - ae2lt:rain_condensate
  - ae2lt:thunderstorm_condensate
---

# Ionizador Atmosférico

<Row>
  <BlockImage id="ae2lt:atmospheric_ionizer" scale="4" />
</Row>

O **Ionizador Atmosférico** é um dispositivo de controle de clima. Ele consome **Condensado de Clima** e energia AE para forçar o clima do mundo a um estado específico, deixando você alimentar o Coletor de Raios com descargas de raios naturais confiáveis.

## Condensado de Clima

Há três tipos de Condensado de Clima, um por estado de clima:

<ItemGrid>
  <ItemIcon id="ae2lt:clear_condensate" />
  <ItemIcon id="ae2lt:rain_condensate" />
  <ItemIcon id="ae2lt:thunderstorm_condensate" />
</ItemGrid>

| Condensado | Clima Alvo | Custo de AE | Duração |
|------------|----------------|---------|----------|
| Condensado Límpido | Limpo | 500.000 AE | 12.000 ~ 180.000 tiques |
| Condensado de Chuva | Chuva | 1.000.000 AE | 12.000 ~ 24.000 tiques |
| Condensado de Tempestade | Tempestade | 8.000.000 AE | 3.600 ~ 15.600 tiques |

## Fluxo de Operação

1. Conecte o Ionizador Atmosférico à rede ME
2. Coloque o Condensado de Clima necessário no espaço de entrada
3. A máquina puxa AE da rede ME continuamente para ionizar
4. Uma vez completa a ionização, o clima do mundo é forçado ao estado alvo
5. O condensado é consumido

## Notas

* O Ionizador Atmosférico consome **energia AE** da rede ME, não FE
* O Condensado de Tempestade tem o maior custo por uso (8.000.000 AE) — certifique-se de que a rede tem energia suficiente disponível
* Em dimensões que não suportam clima, a máquina não consegue trabalhar
* Quando o clima alvo já é o clima atual, a máquina não consome condensado
