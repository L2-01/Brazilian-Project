---
navigation:
  parent: index.md
  title: Novos P2P
  icon: appliedpneumatics:air_p2p_tunel
  position: 30
item_ids:
  - air_p2p_tunel
  - heat_p2p_tunel
---

# P2P de Ar / Temperatura

<Row>
    <ItemImage id="air_p2p_tunel" scale="4" />
    <ItemImage id="heat_p2p_tunel" scale="4" />
</Row>

O **Túnel P2P de Ar** permite que **ar comprimido** seja transmitido pela rede AE entre uma entrada e múltiplas saídas.

O **Túnel P2P de Calor** permite que **calor** seja trocado entre uma entrada e múltiplas saídas.

## Como Usar

1. Coloque um **túnel P2P** e sintonize-o como **Túnel P2P de Ar** clicando com o botão direito com qualquer item que tenha capacidade de ar, ou sintonize-o como **Túnel P2P de Calor** clicando com o botão direito com um Bloco de Ferro Comprimido, Tubo de Calor ou Dissipador de Calor.
2. Coloque um ou mais **túneis P2P** como saídas e vincule-os à entrada com um Cartão de Memória.
3. Coloque um bloco com capacidade de temperatura ou ar adjacente para iniciar a transmissão.

## Observações

### P2P de Ar
- Sintonize clicando com o botão direito com qualquer item que possa armazenar ar. A entrada do P2P de Ar expõe para o exterior a **pressão média** de todas as saídas. Quando um sistema pneumático de pressão mais alta é conectado a ela, o ar fluirá para a entrada; a entrada então distribui o ar recebido às saídas **ponderado pela diferença de pressão** entre a média e cada saída.

### P2P de Temperatura
- Sintonize clicando com o botão direito com um Bloco de Ferro Comprimido, Tubo de Calor ou Dissipador de Calor. A entrada do P2P de Temperatura expõe para o exterior a **temperatura média ponderada pela capacidade térmica** de todas as saídas. Quando conectada a outro sistema térmico, a entrada troca calor com ele e depois distribui o calor trocado às saídas **ponderado por (capacidade térmica de cada saída × a diferença de temperatura entre a entrada e essa saída)**.
