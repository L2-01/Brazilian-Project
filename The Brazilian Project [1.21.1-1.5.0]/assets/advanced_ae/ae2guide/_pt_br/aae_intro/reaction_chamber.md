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
energia. Com isso, reações que ocorrem naturalmente podem ser forçadas a acontecer dentro da câmara, na maioria das vezes com
resultados mais eficientes, graças ao ambiente controlado.

## Energizando a Câmara

A câmara de reação pode consumir bastante energia quando acelerada. Usar Cartões de Aceleração aumenta a taxa com que o
custo total de energia é consumido, aumentando a energia exigida por tique. Ao usar energia direto do sistema ME,
a câmara tentará puxar a quantidade necessária para um tique de processamento e, se isso falhar, você pode ver
uma oscilação, com a energia do sistema ligando e desligando. Para remediar esse efeito, o sistema AE precisa estar equipado
com reservas de energia na forma de <ItemLink id="ae2:dense_energy_cell" />s. A Câmara também é capaz de puxar
energia diretamente de células de energia (do Applied Flux) se elas estiverem disponíveis nos gabinetes, para se recarregar e fabricar
sem consumir das reservas de energia ME. Reduzir a quantidade de cartões de aceleração também é uma opção se não houver
mais geração de energia disponível no momento. Para energizá-la adequadamente, há algumas opções.
* Observação: Provedores de Padrões ou Interfaces em forma de parte (anexados a um cabo) não fornecem conexão com a rede. Para
energizar a câmara com eles você também precisará conectar um cabo de fluix diretamente a ela.

### Provedor de Padrões de Bloco Inteiro

Um provedor de padrões de bloco inteiro é capaz de conectar a Câmara de Reação diretamente à rede do AE2, permitindo que a energia
seja extraída quando necessário e eliminando a necessidade do reservatório interno da câmara. Se a energia total armazenada na rede
for menor que a energia exigida por tique, o progresso ficará mais lento e um aviso será exibido na tela.
Para este método, é recomendado que a rede esteja conectada a algumas <ItemLink id="ae2:dense_energy_cell" />s.

### Energia Externa

Uma forma alternativa de energizar a Câmara de Reação é pelo uso de energia externa. Qualquer fonte capaz de enviar
energia deve ser suficiente para encher seus reservatórios e começar o processamento. Se a energia fornecida estiver sendo recebida a uma
taxa insuficiente, um aviso será exibido na tela da câmara.

### Cartões de Indução (Mod Extra Necessário: Applied Flux)

Cartões de Indução podem ser inseridos em Provedores de Padrões em forma de parte de cabo ou Provedores de Padrões direcionais, permitindo que eles
exportem energia armazenada em Células de Energia. Desde que estejam configurados corretamente, eles devem encher o armazenamento de energia da Câmara de
Reação, permitindo que ela funcione. Note, porém, que os Cartões de Indução, assim como alguns outros componentes do AE2, têm um
temporizador de aceleração, começando devagar e aumentando a velocidade com o tempo. Isso significa que a velocidade de fabricação não será máxima
no início por falta de energia armazenada, mas conforme a fabricação continua, o Cartão de Indução deve conseguir fornecer energia suficiente.
