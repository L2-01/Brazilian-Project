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

O **Ionizador Atmosférico** é um dispositivo de controle climático. Ele consome **Condensado Climático** e energia AE para forçar o clima do mundo a um estado específico, permitindo alimentar o Coletor de Raios com raios naturais confiáveis.

## Condensado Climático

Há três tipos de Condensado Climático, um por estado do clima:

<ItemGrid>
  <ItemIcon id="ae2lt:clear_condensate" />
  <ItemIcon id="ae2lt:rain_condensate" />
  <ItemIcon id="ae2lt:thunderstorm_condensate" />
</ItemGrid>

| Condensado | Clima Alvo | Custo em AE | Duração |
|------------|----------------|---------|----------|
| Condensado Límpido | Limpo | 500.000 AE | 12.000 ~ 180.000 ticks |
| Condensado de Chuva | Chuva | 1.000.000 AE | 12.000 ~ 24.000 ticks |
| Condensado de Tempestade | Tempestade | 8.000.000 AE | 3.600 ~ 15.600 ticks |

## Fluxo de Operação

1. Conecte o Ionizador Atmosférico à rede ME
2. Coloque o Condensado Climático necessário no slot de entrada
3. A máquina puxa AE continuamente da rede ME para ionizar
4. Com a ionização completa, o clima do mundo é forçado ao estado alvo
5. O condensado é consumido

## Notas

* O Ionizador Atmosférico consome **energia AE** da rede ME, não FE
* O Condensado de Tempestade tem o maior custo por uso (8.000.000 AE) — garanta que a rede tenha energia suficiente disponível
* Em dimensões que não suportam clima, a máquina não funciona
* Quando o clima alvo já é o clima atual, a máquina não consome condensado
