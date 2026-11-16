---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Codificador de Padrões Avançado
  icon: advanced_ae:adv_pattern_encoder
categories:
  - advanced items
item_ids:
  - advanced_ae:adv_pattern_encoder
  - advanced_ae:adv_processing_pattern
---

# Codificador de Padrões Avançado

Para ensinar o Provedor de Padrões Avançado ME para onde enviar seus itens, um dispositivo especial é necessário para codificar essa
informação. Você pode usar o botão direito com ele na mão para abrir sua GUI.

<ItemImage id="advanced_ae:adv_pattern_encoder" scale="4"></ItemImage>

Padrões de Processamento codificados podem ser inseridos no espaço esquerdo, onde serão decodificados e todos os ingredientes brutos serão então
exibidos numa lista.

![PEGui1](../pic/ape_pattern.png)

Cada linha contém um conjunto de botões que representam todas as faces de bloco possíveis para as quais o ingrediente
pode ser enviado. Deixar a seleção no botão "A" enviará para qualquer face que esteja diretamente conectada ao
Provedor de Padrões, enquanto escolher uma face específica forçará que seja lá onde os itens serão inseridos. É importante
notar que padrões avançados só podem ser decodificados corretamente por <ItemLink id="advanced_ae:adv_pattern_provider" /> e
se comportarão como um padrão normal se usados em outros tipos de provedor de padrões.
Além disso, se um único item não puder ser inserido na face especificada, nenhum item será inserido direcionalmente e o
comportamento padrão do provedor de padrões será aplicado.
