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

Processa pedidos vindos do **Terminal Sem Fio Amadron** e da **autofabricação da Rede ME**.  
Quando um pedido entra na fila, a estação envia uma solicitação de drone ao Centro de Compras Amadron a cada 200 tiques de jogo.

Os drones da empresa Amadron chegarão para coletar recursos e entregar as mercadorias.  
Cada drone lida apenas com um único tipo de pedido.

Durante esse processo, você deve sempre garantir que o topo da estação esteja **desobstruído**; caso contrário, os drones Amadron podem se recusar a aterrissar.  
Se isso acontecer, sua estação de processamento ficará entupida de recursos e exigirá limpeza manual.

Se a estação de processamento for destruída enquanto a fila de pedidos não estiver vazia, todos os recursos de pedidos incompletos serão devolvidos à Rede ME.  
Se a Rede ME estiver indisponível ou sem espaço suficiente, os recursos restantes serão ejetados como itens largados.

## Cartões de Upgrade Disponíveis
- **Cartão de Aceleração**: Aumenta tanto o número máximo de drones disponíveis por envio quanto o número máximo de pedidos que cada drone pode processar.
