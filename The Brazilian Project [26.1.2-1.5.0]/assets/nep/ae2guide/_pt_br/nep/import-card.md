---
navigation:
  title: Cartão de Importação
  icon: nep:import_card
  parent: nep/nep-index.md
  position: 2
item_ids:
  - nep:import_card
---
# <Color id="aqua">Cartão de Importação</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Cartão de Importação</Color>

  <ItemImage id="nep:import_card" scale="2"/>

  Encaixe-o num Provedor de Padrões e esse Provedor coleta seus próprios resultados. É isso que fecha o ciclo para máquinas que deixam a saída no buffer em vez de empurrá-la de volta ao sistema.
</Column>

<ItemImage id="minecraft:air" scale="0.5"/>

<RecipeFor id="nep:import_card"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Provedor lembra qual receita despachada ele ainda deve e para qual lado enviou aquele padrão.
* Ele só coleta exatamente esses resultados, daquele exato lado, até a quantidade que ainda está esperando.
* Qualquer outra coisa que compartilhe o inventário é deixada em paz, incluindo os ingredientes que o Provedor acabou de preparar ali para um trabalho em andamento.

Como o Provedor que empurrou é o Provedor que coleta, os resultados são sempre creditados ao trabalho que os pediu. Dois Provedores trabalhando no mesmo bloco nunca pegam os itens um do outro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Trabalhos Cancelados</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Cancele um trabalho no meio do caminho e o que o Provedor já tinha enviado ainda será coletado pelo cartão por um curto período depois, então os resultados em trânsito no momento do cancelamento voltam à rede em vez de ficarem presos na máquina. Cada lado coleta o seu, então um Provedor alimentando várias estações recebe um de volta de cada.

A tolerância recomeça cada vez que o cartão coleta algo, e só começa quando o trabalho já terminou. Enquanto um trabalho está ativo, o cartão espera pelos seus resultados pelo tempo que demorarem.

O período de tolerância é de <nep:ConfigValue name="importCardGrace"/> ticks em `importCardGrace`.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Funciona Em</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Além do Provedor de Padrões do próprio AE2, nas formas de bloco e cabo, o cartão se encaixa nos provedores de padrões que outros mods adicionam: os Provedores de Padrões Avançado e Avançado Pequeno do Advanced AE, o Provedor de Padrões Estendido do ExtendedAE e o Provedor de Padrões MEGA do MEGA Cells.
