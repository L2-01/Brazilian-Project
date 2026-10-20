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
Coloque-a ao lado de um Canhão de Esquemas e conecte-a a uma rede AE2. Ela permitirá que o canhão acesse itens da rede.
Apenas uma Interface de Canhão pode ser conectada a um Canhão de Esquemas por vez.

<GameScene zoom="2" background="transparent" interactive={true}>
  <ImportStructure src="./structure/example.snbt"></ImportStructure>
</GameScene>

O Canhão SEMPRE priorizará itens de outros inventários antes de acessar a rede AE2. Isso significa que itens de baús, barris etc. serão usados primeiro.

A Interface de Canhão também exportará pólvora da rede AE2 para o Canhão de Esquemas, se ele estiver conectado à rede.

Clique nela com o botão direito para abrir a GUI. Você pode então controlar a fabricação e a exportação de itens e de pólvora, bem como ver o status do Canhão de Esquemas conectado.

## Sobre a Fabricação em Massa

A Fabricação em Massa tentará fabricar os itens necessários antes de permitir que o Canhão de Esquemas comece a construir.
Se o processo de fabricação for interrompido durante essa etapa (por exemplo, ao descarregar a chunk, fechar o jogo, parar o trabalho de fabricação etc.), você pode acabar com mais itens do que o necessário para o esquema, pois o sistema tentará fabricar os itens faltantes novamente.



## Receita

<Recipe id="cannon_interface" />
<Recipe id="cannon_interface_to_part" />
