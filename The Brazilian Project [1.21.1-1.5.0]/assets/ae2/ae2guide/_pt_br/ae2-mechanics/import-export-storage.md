---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Importação, Exportação e Armazenamento
---

# Importação, Exportação e Armazenamento

**seu sistema ME e o mundo**

Um conceito importante no AE2 é a ideia de Armazenamento de Rede. É o lugar onde o conteúdo de uma rede fica guardado,
geralmente [células de armazenamento](../items-blocks-machines/storage_cells.md) ou qualquer inventário ao qual um <ItemLink id="storage_bus" />
esteja conectado. A maioria dos [dispositivos](../ae2-mechanics/devices.md) do AE2 interage com ele de uma forma ou de outra.

Por exemplo:

*   <ItemLink id="import_bus" />s enviam coisas para o armazenamento de rede
*   <ItemLink id="export_bus" />s puxam coisas do armazenamento de rede
*   <ItemLink id="interface" />s tanto puxam quanto enviam para o armazenamento de rede
*   [Terminais](../items-blocks-machines/terminals.md) tanto enviam quanto puxam do armazenamento de rede quando você insere ou retira itens, ou para reabastecer os slots de fabricação
*   <ItemLink id="storage_bus" />s na verdade não enviam nem puxam do armazenamento; eles enviam ou puxam do inventário conectado,
    usando-o como armazenamento de rede (então na prática os outros dispositivos enviam ou puxam *deles*)

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_export_storage.snbt" />

  <BoxAnnotation color="#dddddd" min="8 1 1" max="9 1.3 2">
        Pontos de Importação importam coisas dos inventários para os quais apontam para o armazenamento de rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="8 2 1" max="9 3 1.3">
        Inserir algo num terminal a partir do seu inventário conta como a rede importando aquilo
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="7 0 1" max="8 1 2">
        Interfaces importam dos seus inventários internos se um slot não estiver configurado para estocar nada, ou se houver mais
        itens naquele slot do que o configurado para estocar, então coisas podem ser inseridas nelas para entrar na rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="6 0 1" max="7 1 2">
        Provedores de Padrões importam do seu inventário interno de slots de retorno, então coisas podem ser inseridas neles para entrar na rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 1" max="5 2 2">
        Gabinetes fornecem as células inseridas como armazenamento de rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="4 1.3 2">
        Pontos de Armazenamento usam o inventário para o qual apontam como armazenamento de rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 1 1" max="2 1.3 2">
        Pontos de Exportação exportam coisas do armazenamento de rede para os inventários para os quais apontam
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="2 3 1.3">
        Retirar algo de um terminal conta como a rede exportando aquilo
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 1 1" max="1 2 2">
        Interfaces exportam para seus inventários internos se um slot estiver configurado para estocar algo,
        então coisas podem ser puxadas delas para extrair da rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

As ações/eventos de enviar e puxar do armazenamento de rede são importantes de se ter em mente ao projetar montagens
de automação e logística.

## Prioridade de Armazenamento

As prioridades podem ser definidas clicando na chave no canto superior direito de algumas GUIs.
Itens entrando na rede vão primeiro para o armazenamento de maior prioridade,
como destino inicial. Se dois armazenamentos tiverem a mesma prioridade
e um já contiver o item, ele será preferido em relação aos
outros. Células em lista branca serão tratadas como se já contivessem o item
quando estiverem no mesmo grupo de prioridade de outros armazenamentos. Itens sendo removidos do armazenamento serão
retirados do armazenamento de menor prioridade. Esse sistema de prioridade faz com que, à medida que itens entram e saem
do armazenamento de rede, os armazenamentos de maior prioridade sejam enchidos e os de menor prioridade, esvaziados.
