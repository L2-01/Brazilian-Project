---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Importação, Exportação e Armazenamento
---

# Importação, Exportação e Armazenamento

**seu sistema ME e o mundo**

Um conceito importante no AE2 é a ideia de Armazenamento de Rede. É o lugar onde o conteúdo de uma rede é armazenado,
geralmente [células de armazenamento](../items-blocks-machines/storage_cells.md) ou qualquer inventário a que um <ItemLink id="storage_bus" />
esteja conectado. A maioria dos [dispositivos](../ae2-mechanics/devices.md) do AE2 interage com ele de uma forma ou de outra.

Por exemplo,

*   <ItemLink id="import_bus" />s empurram coisas para o armazenamento de rede
*   <ItemLink id="export_bus" />s puxam coisas do armazenamento de rede
*   <ItemLink id="interface" />s tanto puxam quanto empurram para o armazenamento de rede
*   [Terminais](../items-blocks-machines/terminals.md) tanto empurram quanto puxam do armazenamento de rede quando você insere ou retira itens, ou para reabastecer os slots de fabricação
*   <ItemLink id="storage_bus" />s na verdade não empurram nem puxam do armazenamento; eles empurram ou puxam do inventário conectado
    para usá-lo como armazenamento de rede (então, na real, outros dispositivos empurram ou puxam *deles*)

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_export_storage.snbt" />

  <BoxAnnotation color="#dddddd" min="8 1 1" max="9 1.3 2">
        Pontos de Importação importam coisas dos inventários para os quais apontam para o armazenamento de rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="8 2 1" max="9 3 1.3">
        Inserir algo num terminal a partir do seu inventário conta como a rede importando-o
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="7 0 1" max="8 1 2">
        Interfaces importarão de seus inventários internos se aquele slot não estiver configurado para estocar nada, ou houver mais
        itens naquele slot do que o configurado para estocar, então coisas podem ser empurradas para dentro delas para inserir na rede
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="6 0 1" max="7 1 2">
        Provedores de Padrões importarão de seus inventários internos de slot de retorno, então coisas podem ser empurradas para dentro deles para inserir na rede
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
        Retirar algo de um terminal conta como a rede exportando-o
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 1 1" max="1 2 2">
        Interfaces exportarão para seus inventários internos se aquele slot estiver configurado para estocar algo,
        então coisas podem ser puxadas delas para extrair da rede
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

As ações/eventos de empurrar para e puxar do armazenamento de rede são importantes de ter em mente ao projetar configurações
de automação e logística.

## Prioridade de Armazenamento

Prioridades podem ser definidas clicando na chave inglesa no canto superior direito de algumas GUIs.
Itens entrando na rede começarão pelo armazenamento de maior prioridade, como
seu primeiro destino; no caso de dois armazenamentos terem a mesma prioridade,
se um já contiver o item, eles preferirão aquele armazenamento sobre qualquer
outro. Quaisquer células na lista de permissões serão tratadas como se já contivessem o item
quando no mesmo grupo de prioridade de outros armazenamentos. Itens sendo removidos do armazenamento
serão removidos do armazenamento de menor prioridade. Este sistema de prioridade significa que, conforme itens são inseridos e removidos
do armazenamento de rede, armazenamentos de prioridade maior serão preenchidos e os de prioridade menor serão esvaziados.
