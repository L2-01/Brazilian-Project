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

Os Monitores de Vazão são um subtipo de monitor. Eles oferecem as mesmas funcionalidades de um <ItemLink id="ae2:storage_monitor" />,
com a adição de um medidor de vazão. Ele acompanha um único tipo de item/fluido e monitora mudanças na sua
quantidade, exibindo a quantidade por segundo ao usuário.

Ele *não* requer um canal.

## Atalhos de Teclado

*   Clique com o botão direito com um item, ou duplo clique direito com um contêiner de fluido, para definir o monitor para aquele item/fluido.
*   Clique com o botão direito com a mão vazia para limpar o monitor.
*   Shift + clique direito com a mão vazia para travar o monitor.

## Configurador do Monitor de Vazão

<ItemImage id="advanced_ae:throughput_monitor_configurator" scale="4"></ItemImage>

O Configurador do Monitor de Vazão é uma ferramenta que pode ser usada para mudar os dados apresentados. Clicar com o botão direito num monitor
com um na mão alterna entre três opções:

* Itens por tique
* Itens por segundo
* Itens por minuto

Observação: as leituras podem demorar um pouco para estabilizar ao trocar de modo, então não confie nos valores iniciais!
