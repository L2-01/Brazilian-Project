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

O **Ionizador Atmosférico** é um dispositivo de controle climático. Ele consome **Condensado de Tempo** e energia AE para forçar o clima do mundo a um estado específico, permitindo alimentar o Coletor de Raios com descargas naturais confiáveis.

## Condensado de Tempo

Existem três tipos de Condensado de Tempo, um para cada estado climático:

<ItemGrid>
  <ItemIcon id="ae2lt:clear_condensate" />
  <ItemIcon id="ae2lt:rain_condensate" />
  <ItemIcon id="ae2lt:thunderstorm_condensate" />
</ItemGrid>

| Condensado | Tempo Alvo | Custo de AE | Duração |
|------------|----------------|---------|----------|
| Condensado Límpido | Limpo | 500.000 AE | 12.000 ~ 180.000 tiques |
| Condensado de Chuva | Chuva | 1.000.000 AE | 12.000 ~ 24.000 tiques |
| Condensado de Tempestade | Tempestade | 8.000.000 AE | 3.600 ~ 15.600 tiques |

## Fluxo de Operação

1. Conecte o Ionizador Atmosférico à rede ME
2. Coloque o Condensado de Tempo necessário no espaço de entrada
3. A máquina puxa AE continuamente da rede ME para ionizar
4. Quando a ionização termina, o clima do mundo é forçado ao estado alvo
5. O condensado é consumido

## Notas

* O Ionizador Atmosférico consome **energia AE** da rede ME, não FE
* O Condensado de Tempestade tem o maior custo por uso (8.000.000 AE) — garanta que a rede tenha energia suficiente disponível
* Em dimensões que não suportam clima, a máquina não funciona
* Quando o tempo alvo já é o tempo atual, a máquina não consome condensado
