---
item_ids:
  - colossal_reactors:radiation_scrubber
  - colossal_reactors:radiation_cure
categories:
  - processing
---

# Gerenciamento de radiação

Presente quando o **gerenciamento de radiação** está ativado na config e sua instância inclui o conteúdo integrado (tipicamente o **Mekanism**). Use o **JEI** para confirmar que as receitas e os blocos existem no seu save.

## Purificador de Radiação

<BlockImage id="radiation_scrubber" scale="4" />

O **Purificador de Radiação** consome energia e itens de **catalisador** opcionais para processar substâncias relacionadas à radiação suspensas no ar, gerando um **buffer químico/de gás** mostrado em seu tanque.

### Controles

- Dois **espaços de itens** para configuração de catalisadores (veja o JEI e seu pacote de dados para catalisadores válidos).

- **Tanque de gás/químico**: passe o mouse para ver o conteúdo e o nível de enchimento.

- **Barra de energia** na lateral: passe o mouse para ver a energia armazenada.

Quando o **Mekanism** está presente, a automação pode interagir pelas APIs químicas do Mek expostas pelo bloco; caso contrário, interaja manualmente pela tela e pelos canos conectados, onde houver suporte.

## Cura da Radiação

<ItemImage id="radiation_cure" scale="2" />

A **Cura da Radiação** é um consumível usado nesse fluxo de radiação. Abra pelo tooltip do item com o atalho **abrir guia** do GuideME, quando configurado.
