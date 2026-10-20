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

O **Cartão de Canal** é um cartão de upgrade que encapsula a funcionalidade de escravo do <ItemLink id="extendedae_plus:wireless_transceiver" /> em um formato compacto.  
Quando instalado em dispositivos AE compatíveis, permite que eles se conectem diretamente a um mestre de transceptor sem fio na mesma frequência — sem necessidade de cabos.

## Função e Uso

### Recursos Básicos
- **Conexão Sem Fio**:  
  Dispositivos AE equipados com um Cartão de Canal procuram e se conectam automaticamente a um **mestre de transceptor sem fio** operando na **mesma frequência**, ganhando acesso aos canais de sua Rede ME.
- **Ajuste de Frequência**:
  - **Botão direito segurando o cartão**: **Aumenta** sua frequência.
  - **Shift + Botão direito**: **Diminui** sua frequência.

### Vinculação de Propriedade (v1.4.4+)
- **Operação de Vinculação**:  
  Segure o Cartão de Canal e use **Shift + Botão esquerdo** (sem mirar em um bloco) para vinculá-lo à sua **equipe** ou **UUID pessoal**.
- **Requisito de Vinculação**:  
  O cartão **precisa estar vinculado** antes de poder se conectar a um mestre de transceptor sem fio com propriedade correspondente.

### Dispositivos Suportados
O Cartão de Canal pode ser instalado nos seguintes dispositivos AE (e suas variantes do ExtendedAE) para conceder conectividade sem fio. Uma vez instalado, o dispositivo tentará automaticamente se conectar a um mestre de transceptor sem fio na mesma frequência.

- <ItemLink id="ae2:interface" />
- <ItemLink id="ae2:import_bus" />
- <ItemLink id="ae2:export_bus" />
- <ItemLink id="ae2:storage_bus" />
- <ItemLink id="ae2:pattern_provider" />

## Fluxo de Trabalho

1. Garanta que um **mestre** de transceptor sem fio com a frequência e o modo desejados esteja conectado à Rede ME de origem.
2. Segure o Cartão de Canal e use **Shift + Botão esquerdo** para concluir a vinculação de propriedade.
3. Ajuste a frequência do cartão com **Botão direito** ou **Shift + Botão direito**.
4. Instale o Cartão de Canal no dispositivo AE alvo (ex.: Interface ME).
5. O dispositivo se conectará automaticamente ao mestre de transceptor sem fio com a mesma frequência e propriedade correspondente.

> **Observação**:  
> Tanto o Cartão de Canal quanto o mestre de transceptor sem fio precisam ter **frequência correspondente** e **propriedade** (v1.4.4+) para estabelecer a conexão com sucesso.
