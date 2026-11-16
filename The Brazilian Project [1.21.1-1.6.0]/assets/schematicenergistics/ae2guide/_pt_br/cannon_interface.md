---
item_ids: 
- schematicenergistics:cannon_interface
- schematicenergistics:cannon_interface_part
---

# Interface de Canhão

Um bloco que permite ao Canhão de Esquemas do mod Create se conectar ao armazenamento e à autofabricação do AE2.

<GameScene zoom="2" background="transparent" interactive={false}>
    <Block id="schematicenergistics:cannon_interface" />
</GameScene>

## Uso
Coloque-a ao lado de um Canhão de Esquemas e conecte-a a uma rede AE2. Ela permitirá ao canhão acessar itens da rede.
Apenas uma Interface de Canhão pode ser conectada a um Canhão de Esquemas por vez.

<GameScene zoom="2" background="transparent" interactive={true}>
  <ImportStructure src="./structure/example.nbt"></ImportStructure>
</GameScene>

O Canhão SEMPRE priorizará itens de outros inventários antes de acessar a rede AE2. Isso significa que itens de baús, barris etc. serão usados primeiro.

A Interface de Canhão também exportará pólvora da rede AE2 para o Canhão de Esquemas, se estiver conectada à rede.

Clique com o botão direito para abrir a GUI. Você pode controlar a fabricação e a exportação de itens e pólvora, além de ver o status do Canhão de Esquemas conectado.


## Sobre a Fabricação em Massa

A Fabricação em Massa tentará fabricar os itens necessários antes de permitir que o Canhão de Esquemas comece a construir.
Se o processo de fabricação for interrompido durante essa etapa (ex.: descarregar o chunk, fechar o jogo, parar o trabalho de fabricação etc.), você pode acabar com mais itens do que o esquema precisa, pois o sistema tentará fabricar os itens faltantes novamente.


## Receita

<Recipe id="cannon_interface" />
<Recipe id="cannon_interface_to_part" />
