---
navigation:
  title: Monóculo Prismático
  icon: nautec:prism_monocle
  position: 9
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:prism_monocle
---

# <Color id="light_purple">Monóculo Prismático</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="prism_monocle" scale="2"/>
  Mostra uma leitura do bloco do NauTec que você está olhando.
</Column>

Vista o monóculo no seu slot de capacete ou no seu próprio slot de curio Monóculo. Com ele vestido, olhar para uma máquina ou bloco de laser do NauTec mostra sua leitura no meio da tela. Ele também limpa a névoa subaquática, como o Capacete de Mergulho.

<Recipe id="nautec:prism_monocle"/>

***

## <Color id="gold">Leituras</Color>

| Bloco | Mostra |
|---|---|
| Qualquer máquina, repetidor, óptica ou outro bloco de laser | Potência chegando (AP por tique) e Pureza |
| <ItemLink id="aquatic_catalyst"/> | Duração: tiques que o item de combustível atual está queimando |
| <ItemLink id="bacterial_fuel_cell"/> | Saída (AP por tique), Pureza e Combustível, ou Sem colônia |
| <ItemLink id="pressure_forge"/> | Qualquer sintetizador instalado, depois Sob pressão, Ácido (mb) e Pureza, ou a profundidade e a água que ainda faltam |
| <ItemLink id="resonance_chamber"/> | Carga, Teto e Pureza, ou Rachada enquanto esfria |
| <ItemLink id="gateway"/> e seu anel | Seu Endereço; se está aberto, pronto, ocioso, sem energia, travado por redstone ou bloqueado; se é um anel selvagem; e sua energia armazenada |
| <ItemLink id="submarine_dock"/> | Se um Explorador Marinho está atracado |
| Parede do Dreno do Mar Profundo | Potência e Fluido Armazenado |
| <ItemLink id="bubble_anchor"/> | Seu status, o tamanho do campo e o combustível restante ou como ele termina |
| <ItemLink id="oxygen_diffuser"/> | Seu alcance em funcionamento, ou o AP de que precisa |
| <ItemLink id="energy_converter"/> | AP enviado, quantos feixes o dividem e o FE/t que custa, ou por que está ocioso |
| <ItemLink id="grafting_station"/> e <ItemLink id="advanced_bacterial_analyzer"/> | Status, Potência e Pureza |
| <ItemLink id="colony_replicator"/> | Status, modo Replicar ou Emendar, e Biomassa |
| <ItemLink id="uplink_array"/> | Seu status |

Use-o para conferir que um feixe está chegando e puro o bastante antes de culpar uma receita. A pureza cai um pouco quando um feixe mais fraco alimenta o mesmo bloco que um puro.

Um <ItemLink id="resonance_charm"/> vestido num slot de amuleto faz o mesmo trabalho, então você não precisa dos dois. Veja [Rede de Ressonância](nautec:deep_engineering/resonance_network.md).

***

## <Color id="gold">Com o Jade</Color>

Se o Jade estiver instalado, ele adiciona seus próprios tooltips para alguns blocos: o status do Catalisador Aquático, combustível na fila, tiques restantes, AP por tique e o que seu feixe alcança, além do Misturador, Junção de Laser, Dreno do Mar Profundo, Gerador Confinado, Berço de Cristal, Cristal de Prismarinho, controlador da Usina de Fusão, Rotor de Marés, Captador Hidrotermal e Conversor de Energia.