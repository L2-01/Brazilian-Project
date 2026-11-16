---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Câmara de Reação
  icon: advanced_ae:reaction_chamber
categories:
  - advanced devices
item_ids:
  - advanced_ae:reaction_chamber
---

# Câmara de Reação

<BlockImage id="advanced_ae:reaction_chamber" scale="4"></BlockImage>

A câmara de reação é capaz de acelerar reações químicas usando um fluido catalisador e uma grande quantidade de
energia. Ao fazer isso, reações que ocorrem naturalmente podem ser forçadas a acontecer dentro da câmara, na maioria das
vezes com resultados mais eficientes, devido ao ambiente controlado.

## Energizando a Câmara

A câmara de reação pode consumir bastante energia quando acelerada. Usar Cartões de Aceleração aumenta a taxa com que o
custo total de energia é consumido, aumentando a energia necessária por tique. Ao usar energia diretamente do sistema ME,
a câmara tentará sacar a quantidade necessária para um tique de processamento e, se falhar, você pode notar uma
tremulação, quando a energia do sistema liga e desliga. Para remediar esse efeito, o sistema AE precisa estar equipado
com buffers de energia na forma de <ItemLink id="ae2:dense_energy_cell" />s. A Câmara também é capaz de puxar
energia diretamente de células de energia (do Applied Flux) se estiverem disponíveis nos drives, para se recarregar e
fabricar sem consumir dos buffers de energia do ME. Reduzir a quantidade de cartões de aceleração também é uma opção se
não houver mais geração de energia disponível no momento. Para energizá-la adequadamente, há algumas opções.
* Nota: Provedores de Padrões ou Interfaces em forma de parte (ligados a um cabo) não fornecem conexão com a rede. Para
energizar a câmara com eles, você também precisará conectar um cabo fluix diretamente a ela.

### Provedor de Padrões de Bloco Completo

Um provedor de padrões de bloco completo é capaz de conectar a Câmara de Reação diretamente à rede AE2, permitindo que
energia seja extraída quando necessário e removendo a necessidade do buffer interno da câmara. Se a energia total
armazenada na rede for menor que a energia necessária por tique, o progresso será desacelerado e um aviso será exibido
na tela. Para este método, é recomendado que a rede esteja conectada a algumas <ItemLink id="ae2:dense_energy_cell" />s.

### Energia Externa

Uma forma alternativa de energizar a Câmara de Reação é através de energia externa. Qualquer fonte que possa empurrar
energia deve ser suficiente para encher seus buffers e iniciar o processamento. Se a energia fornecida estiver sendo
recebida a uma taxa insuficiente, um aviso será exibido na tela da câmara.

### Cartões de Indução (Mod Extra Necessário: Applied Flux)

Cartões de Indução podem ser inseridos em Provedores de Padrões em forma de parte de cabo ou em Provedores de Padrões
direcionais, permitindo que exportem energia armazenada em Células de Energia. Desde que esteja configurado
corretamente, deve encher o armazenamento de energia da Câmara de Reação, permitindo que ela funcione. Note, porém, que
Cartões de Indução, assim como alguns outros componentes AE2, têm um temporizador de aceleração, começando devagar e
aumentando a velocidade com o tempo. Isso significa que a velocidade de fabricação não será máxima no início devido à
falta de energia armazenada, mas conforme a fabricação continua, o Cartão de Indução deverá fornecer energia suficiente.
