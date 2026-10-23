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
energia. Ao fazer isso, reações que ocorrem naturalmente podem ser forçadas a acontecer dentro da câmara, na maioria das vezes com
resultados mais eficientes, devido ao ambiente controlado.

## Energizando a Câmara

A câmara de reação pode ser bem faminta por energia quando acelerada. Usar Cartões de Aceleração aumenta a taxa na qual o
custo total de energia é consumido, aumentando a energia exigida por tique. Ao usar energia diretamente do sistema ME,
a câmara tentará extrair a quantidade necessária para um tique de processamento e, se falhar, você pode experimentar
piscadas, quando a energia do sistema liga e desliga. Para remediar esse efeito, o sistema AE precisa ser equipado
com buffers de energia na forma de <ItemLink id="ae2:dense_energy_cell" />s. A Câmara também é capaz de puxar
energia diretamente de células de energia (do Applied Flux) se estiverem disponíveis nos gabinetes, para se recarregar e fabricar
sem consumir dos buffers de energia ME. Reduzir a quantidade de cartões de aceleração também é uma opção se não houver
mais geração de energia disponível no momento. Para energizá-la adequadamente, há algumas opções.
* Nota: Provedores de Padrões ou Interfaces em forma de parte (presos a um cabo) não fornecem conexão de rede. Para poder
energizar a câmara com eles, você também precisará conectar um cabo de fluix diretamente a ela.

### Provedor de Padrões de Bloco Completo

Um provedor de padrões de bloco completo é capaz de conectar a Câmara de Reação diretamente à rede AE2, permitindo que energia
seja extraída quando necessário e removendo a necessidade do buffer interno da câmara. Se a energia total armazenada na rede
for menor que a energia exigida por tique, o progresso será desacelerado e um aviso será exibido na tela.
Para este método, recomenda-se que a rede esteja conectada a algumas <ItemLink id="ae2:dense_energy_cell" />s.

### Energia Externa

Uma forma alternativa de energizar a Câmara de Reação é através do uso de energia externa. Qualquer fonte que possa empurrar
energia deve ser suficiente para encher seus buffers e começar o processamento. Se a energia fornecida estiver sendo recebida a uma
taxa insuficiente, um aviso será exibido na tela da câmara.

### Cartões de Indução (Mod Extra Necessário: Applied Flux)

Cartões de Indução podem ser inseridos em Provedores de Padrões de parte de cabo ou Provedores de Padrões direcionais, permitindo que eles
exportem energia armazenada em Células de Energia. Contanto que esteja configurado corretamente, isso deve encher o armazenamento de energia da Câmara de
Reação, permitindo que ela funcione. Note, no entanto, que os Cartões de Indução, assim como alguns outros componentes do AE2, têm um
temporizador de aceleração, começando devagar e aumentando a velocidade com o tempo. Isso significa que a velocidade de fabricação não estará no máximo no início
devido à falta de energia armazenada, mas conforme a fabricação continua, o Cartão de Indução deve ser capaz de fornecer energia suficiente.
