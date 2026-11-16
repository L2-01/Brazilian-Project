---
navigation:
  parent: introduction/index.md
  title: Cartão de Canal
  position: 2
  icon: extendedae_plus:channel_card
categories:
  - extendedae_plus items
item_ids:
  - extendedae_plus:channel_card
---

# Cartão de Canal

<ItemImage id="extendedae_plus:channel_card" scale="4" />

O **Cartão de Canal** é um cartão de melhoria que encapsula a funcionalidade do lado escravo do <ItemLink id="extendedae_plus:wireless_transceiver" /> num formato compacto.
Quando instalado em dispositivos AE compatíveis, permite que eles se conectem diretamente a um transceptor sem fio mestre na mesma frequência — sem cabos.

## Função e Uso

### Recursos Básicos
- **Conexão Sem Fio**:
  Dispositivos AE equipados com um Cartão de Canal buscam e se conectam automaticamente a um **transceptor sem fio mestre** operando na **mesma frequência**, ganhando acesso aos canais da sua rede ME.
- **Ajuste de Frequência**:
  - **Botão direito segurando o cartão**: **Aumenta** sua frequência.
  - **Shift + Botão direito**: **Diminui** sua frequência.

### Vinculação de Propriedade (v1.4.4+)
- **Operação de Vinculação**:
  Segure o Cartão de Canal e **Shift + Botão esquerdo** (sem mirar num bloco) para vinculá-lo à sua **equipe** ou **UUID pessoal**.
- **Requisito de Vinculação**:
  O cartão **precisa estar vinculado** antes de poder conectar-se a um transceptor sem fio mestre com propriedade correspondente.

### Dispositivos Suportados
O Cartão de Canal pode ser instalado nos seguintes dispositivos AE (e suas variantes do ExtendedAE) para conceder conectividade sem fio. Uma vez instalado, o dispositivo tentará conectar-se automaticamente a um transceptor sem fio mestre na mesma frequência.

- <ItemLink id="ae2:interface" />
- <ItemLink id="ae2:import_bus" />
- <ItemLink id="ae2:export_bus" />
- <ItemLink id="ae2:storage_bus" />
- <ItemLink id="ae2:pattern_provider" />

## Fluxo de Trabalho

1. Garanta que um transceptor sem fio **mestre** com a frequência e o modo desejados esteja conectado à rede ME de origem.
2. Segure o Cartão de Canal e use **Shift + Botão esquerdo** para concluir a vinculação de propriedade.
3. Ajuste a frequência do cartão com **Botão direito** ou **Shift + Botão direito**.
4. Instale o Cartão de Canal no dispositivo AE alvo (ex.: Interface ME).
5. O dispositivo se conectará automaticamente ao transceptor sem fio mestre com a mesma frequência e propriedade correspondente.

> **Nota**:
> Tanto o Cartão de Canal quanto o transceptor sem fio mestre precisam ter **frequência correspondente** e **propriedade** correspondente (v1.4.4+) para estabelecer a conexão com sucesso.
