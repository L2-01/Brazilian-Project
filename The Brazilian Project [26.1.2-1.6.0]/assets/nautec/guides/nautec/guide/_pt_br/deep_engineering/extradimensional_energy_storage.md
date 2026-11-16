---
navigation:
  title: Armazenamento de Energia Extradimensional
  icon: nautec:extradimensional_energy_storage
  position: 14
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:extradimensional_energy_storage
  - nautec:rift_containment_frame
  - nautec:void_containment_frame
  - nautec:abyssal_containment_frame
  - nautec:event_horizon_containment_frame
---

# <Color id="light_purple">Armazenamento de Energia Extradimensional</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="extradimensional_energy_storage" scale="2"/>
  Uma singularidade presa num jugo de contenção, armazenando FE no espaço atrás dela. Ela cresce de um bloco a uma plataforma de 9x9.
</Column>

Ele só armazena FE. Coloque o bloco de armazenamento e ele já funciona como um armazenamento de nível 1. Cada anel de molduras que você construir ao redor aumenta seu nível, sua capacidade e a velocidade com que ele movimenta FE, e a singularidade acima cresce junto.

***

## <Color id="gold">Níveis</Color>

| Nível | Tamanho | Anel a adicionar | Comporta | Cada porta por tique |
|---|---|---|---|---|
| 1 | 1x1 | nenhum | 10.000.000 FE | 50.000 FE |
| 2 | 3x3 | 8 <ItemLink id="rift_containment_frame"/> | 1.000.000.000 FE | 500.000 FE |
| 3 | 5x5 | 16 <ItemLink id="void_containment_frame"/> | 100.000.000.000 FE | 5.000.000 FE |
| 4 | 7x7 | 24 <ItemLink id="abyssal_containment_frame"/> | 10.000.000.000.000 FE | 50.000.000 FE |
| 5 | 9x9 | 32 <ItemLink id="event_horizon_containment_frame"/> | 1.000.000.000.000.000 FE | 2.147.483.647 FE |

Cada anel fica diretamente ao redor do anterior, no mesmo nível do bloco de armazenamento: molduras de Fenda encostando nele, depois molduras do Vazio ao redor dessas, e assim por diante. Um anel só conta quando está completo e feito da moldura certa. A plataforma se forma sozinha em um segundo depois que a última moldura é colocada, e cada bloco dela muda para mostrar que faz parte de uma máquina. Quebre qualquer moldura e o armazenamento volta ao último nível completo; nada do que ele guarda se perde, mas enquanto guardar mais que sua nova capacidade ele não aceita nada.

Clique direito no bloco de armazenamento, ou em qualquer moldura formada, para abrir sua tela.

***

## <Color id="gold">Portas</Color>

O armazenamento tem uma porta em cada lado. Num bloco de armazenamento solitário os quatro lados do bloco são as portas. Uma vez que ele tem anéis, cada porta é o bloco do meio daquela borda da plataforma, e o FE entra e sai por sua face externa.

Os quatro botões no topo da tela definem cada porta como **Entrada**, **Saída** ou **Desligada**. Uma porta de entrada recebe FE de cabos e máquinas. Uma porta de saída empurra FE para o que sua face tocar, e deixa cabos puxarem dela. As portas começam como entradas.

***

## <Color id="gold">Redes de Ressonância</Color>

Escolha ou crie uma rede em sua tela, do mesmo jeito que num [Nó de Ressonância](resonance_node.md). O armazenamento então age como a bateria da rede, sem modo para definir:

* O FE que os nós de entrada da rede enviam e que nenhum nó de saída quer vai para o armazenamento em vez de encher os uplinks.
* Quando nós de saída ou Amuletos de Ressonância querem mais do que os nós de entrada estão enviando, o armazenamento cobre a diferença.

Ele negocia com a rede até o limite de sua porta em cada direção, a cada tique. A perda usual de 10% da rede se aplica ao que ele distribui, não ao que ele armazena. A rede precisa de um <ItemLink id="uplink_array"/> com um satélite lançado, em qualquer dimensão; até lá o armazenamento mostra **Sem núcleo**. **Carregar** mantém seu chunk carregado.

***

## <Color id="gold">Movendo-o</Color>

Quebrar o bloco de armazenamento mantém seu FE no item, e colocá-lo de novo o restaura, então um armazenamento cheio pode ser carregado para uma nova base. As molduras caem como elas mesmas. Precisa de picareta de diamante ou melhor.

Um <ItemLink id="configuration_card"/> copia sua rede, configurações de portas e carregamento de chunk.

***

## <Color id="gold">Receitas</Color>

<RecipeFor id="extradimensional_energy_storage"/>
<RecipeFor id="rift_containment_frame"/>
<RecipeFor id="void_containment_frame"/>
<RecipeFor id="abyssal_containment_frame"/>
<RecipeFor id="event_horizon_containment_frame"/>
