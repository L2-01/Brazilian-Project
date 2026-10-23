---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Monitor de Vazão ME
  icon: advanced_ae:throughput_monitor
categories:
  - advanced items
item_ids:
  - advanced_ae:throughput_monitor
  - advanced_ae:throughput_monitor_configurator
---

# Monitor de Vazão ME

<GameScene zoom="8" background="transparent">
<ImportStructure src="../structure/throughput_monitors.snbt"></ImportStructure>
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Os Monitores de Vazão são um subtipo de monitor. Eles fornecem as mesmas funcionalidades que um <ItemLink id="ae2:storage_monitor" />,
com a adição de um medidor de vazão. Ele acompanhará um único tipo de item/fluido e monitorará mudanças na sua
quantidade, exibindo a quantidade por segundo ao usuário.

Ele *não* requer um canal.

## Atalhos

*   Clique com o botão direito com um item ou clique duas vezes com o botão direito com um recipiente de fluido para definir o monitor para aquele item/fluido.
*   Clique com o botão direito com a mão vazia para limpar o monitor.
*   Shift + botão direito com a mão vazia para travar o monitor.

## Configurador do Monitor de Vazão

<ItemImage id="advanced_ae:throughput_monitor_configurator" scale="4"></ItemImage>

O Configurador do Monitor de Vazão é uma ferramenta que pode ser usada para alterar os dados apresentados. Clicar com o botão direito num monitor
com ele na mão alternará entre três opções:

* Itens por tique
* Itens por segundo
* Itens por minuto

Nota: pode levar algum tempo até as leituras se estabilizarem ao trocar os modos, então não confie nos valores iniciais!
