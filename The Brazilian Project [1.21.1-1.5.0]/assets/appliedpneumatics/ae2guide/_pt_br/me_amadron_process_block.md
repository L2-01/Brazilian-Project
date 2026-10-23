---
navigation:
  parent: index.md
  title: Estação de Processamento Amadron
  icon: appliedpneumatics:me_amadron_process_station
  position: 70
item_ids:
  - appliedpneumatics:me_amadron_process_station
  - appliedpneumatics:me_amadron_extended_process_station
  - appliedpneumatics:amadron_pattern
  - appliedpneumatics:amadron_process_upgrade
---

# Estação de Processamento Amadron

<Row>
  <BlockImage id="me_amadron_process_station" scale="4" />
  <BlockImage id="me_amadron_extended_process_station" scale="4" />
  <ItemImage id="amadron_pattern" scale="4" />
  <ItemImage id="amadron_process_upgrade" scale="4" />
</Row>

Processa pedidos vindos do **Terminal Sem Fio Amadron** e da **autofabricação da rede ME**.
Quando um pedido entra na fila, a estação envia uma solicitação de drone ao centro de compras Amadron a cada 200 tiques do jogo.

Os drones da empresa Amadron chegarão para coletar recursos e entregar as mercadorias.
Cada drone lida com apenas um tipo de pedido.

Durante esse processo, você deve sempre garantir que o topo da estação esteja **desobstruído**; caso contrário, os drones Amadron podem se recusar a descer.
Se isso acontecer, sua estação de processamento ficará entupida de recursos e exigirá limpeza manual.

Se a estação de processamento for destruída enquanto a fila de pedidos não estiver vazia, todos os recursos de pedidos não concluídos serão devolvidos à rede ME.
Se a rede ME estiver indisponível ou sem espaço suficiente, os recursos restantes serão ejetados como itens no chão.

## Cartões de Melhoria Disponíveis
- **Cartão de Aceleração**: Aumenta tanto o número máximo de drones disponíveis por despacho quanto o número máximo de pedidos que cada drone pode processar.
