---
navigation:
  title: Applied Oritech
  position: 0
item_ids:
  - applied_oritech:me_dock
  - applied_oritech:me_pattern_provider_addon
  - applied_oritech:me_interface_addon
  - applied_oritech:me_extended_pattern_provider_addon
  - applied_oritech:me_extended_interface_addon
---

# Applied Oritech

O Applied Oritech conecta máquinas Oritech a uma rede ME do Applied Energistics 2. A Doca ME conecta a máquina à rede; os complementos fornecem funções de fabricação e estoque.

## Instalação

<ItemImage id="applied_oritech:me_dock" scale="4" />

1. Monte uma máquina Oritech funcional e forneça energia a ela.
2. Instale uma Doca ME em uma posição de complemento da máquina e deixe a máquina detectá-la.
3. Conecte um cabo ME à doca. A rede precisa estar energizada e ter um canal disponível.
4. Encaixe um complemento ME na estrutura de complementos da máquina, ou coloque-o contra a doca conectada àquela máquina. Se necessário, deixe a máquina detectar seus complementos novamente.
5. Clique com o botão direito no complemento para abrir o menu de configuração. Um complemento precisa tanto de uma conexão com a máquina quanto de uma doca antes de poder ser usado.

Cada doca e seus complementos associados compartilham um único canal. Os complementos entram na rede por meio da doca, em vez de aceitar conexões de cabo por conta própria. É possível usar várias docas; um complemento seleciona uma doca compatível com a sua máquina.

## Complemento de Provedor de Padrões ME

<ItemImage id="applied_oritech:me_pattern_provider_addon" scale="4" />

O complemento padrão fornece nove espaços para padrões. Codifique um padrão de processamento correspondente à receita da máquina e insira-o no complemento. A rede poderá então usar a máquina para fabricação automática. Os ingredientes são enviados aos espaços de entrada da máquina, e não aos de saída; os fluidos suportados usam o armazenamento de fluidos da máquina.

O complemento usa a lógica de provedor de padrões do AE2, incluindo modo de bloqueio, prioridade e acesso a padrões. Ative o retorno automático de saída quando a máquina não tiver outra forma de enviar os resultados da fabricação de volta. Os resultados retornados entram primeiro no inventário de retorno do provedor e são então tratados pelo AE2.

## Complemento de Interface ME

<ItemImage id="applied_oritech:me_interface_addon" scale="4" />

Configure os recursos e as quantidades a estocar no menu da interface. A interface obtém esses recursos da rede e transfere o estoque acumulado para a máquina acoplada. Recursos que a máquina não consegue aceitar permanecem no estoque. Máquinas suportadas podem receber fluidos além de itens.

Um Cartão de Fabricação permite que a interface solicite a fabricação de recursos configurados que estejam indisponíveis no estoque. Um Cartão Aproximado ativa a correspondência aproximada suportada pelo AE2. O retorno automático de saída devolve as saídas da máquina ao armazenamento ME independentemente do estoque.

## Integração com o ExtendedAE

<ItemImage id="applied_oritech:me_extended_pattern_provider_addon" scale="4" />

<ItemImage id="applied_oritech:me_extended_interface_addon" scale="4" />

Quando o ExtendedAE está instalado, o complemento de provedor de padrões estendido oferece 36 espaços para padrões. O complemento de interface estendida oferece 36 espaços de configuração por meio do menu paginado do ExtendedAE. Ambos continuam sendo complementos do Applied Oritech e usam o mesmo comportamento de máquina, doca e retorno automático de saída. O ExtendedAE em si é opcional.

## Retorno Automático de Saída

Use o botão imediatamente à esquerda do botão de prioridade no menu do complemento. O ícone aparece na cor original quando ativado e escurece quando desativado. O fundo do botão não muda de cor. Passe o cursor sobre ele para ler o estado atual.

A configuração é salva por complemento. Seu valor inicial vem da configuração comum. Agachar + botão direito não funciona como alternador. Este botão só é adicionado aos menus de complementos do Applied Oritech, não a dispositivos nativos do AE2 ou do ExtendedAE.

O retorno automático coleta os recursos de saída da máquina, e não conteúdos arbitrários de entrada. As transferências exigem uma rede ME online, espaço de armazenamento disponível e qualquer energia de máquina requerida pela configuração. Desative-o quando outro sistema for responsável pelas saídas.

## Solução de Problemas

- **Não acoplado a uma máquina:** verifique as posições de complemento e a detecção da máquina, ou coloque o complemento contra a doca conectada à máquina.
- **Sem doca:** instale e detecte uma Doca ME pertencente à mesma máquina.
- **Doca offline:** verifique o cabo ME, a energia da rede e a disponibilidade de canais.
- **A fabricação não termina:** verifique o padrão de processamento, as entradas da máquina, a energia da máquina, o espaço de saída e a configuração de retorno automático.
- **Os recursos não transferem:** confirme que a máquina aceita o recurso, que ela suporta o armazenamento de item ou fluido necessário, e que tanto a rede quanto a máquina têm energia suficiente.
- **As saídas ficam na máquina:** verifique o alternador de retorno, a capacidade de armazenamento da rede e, para provedores de padrões, o inventário de retorno.

Quebrar um complemento derruba seus conteúdos armazenados, padrões codificados e cartões instalados. Remova ou cancele trabalhos de fabricação ativos antes de alterar uma configuração funcional.
