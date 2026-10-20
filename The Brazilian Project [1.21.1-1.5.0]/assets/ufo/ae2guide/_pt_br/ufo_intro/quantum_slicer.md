---
navigation:
  parent: ufo_intro/machines.md
  title: Fatiador Quântico
  position: 43
item_ids:
  - ufo:quantum_slicer_controller
---

# Fatiador Quântico

<BlockImage id="ufo:quantum_slicer_controller" scale="4"></BlockImage>

O **Fatiador Quântico** prepara componentes impressos para grandes pipelines de processadores e circuitos.

<SubPages />

## O Que Ele Faz

- Usa o sistema de receitas de multibloco universal
- Suporta até **27 trabalhos paralelos** no modo padrão
- Cai para **9 trabalhos paralelos** no Modo Seguro
- Aceita padrões codificados AE2 através de um **Buffer ou Proxy de Padrões Quântico**
- Puxa ingredientes da ME e devolve saídas automaticamente

## Buffer / Proxy de Padrões

- Um **Buffer de Padrões Quântico** local armazena **72 padrões codificados**
- Um **Proxy de Padrões Quântico** usa os padrões guardados pelo seu Buffer vinculado
- Qualquer uma das peças se vincula ao controlador após a montagem
- O AE2 pode enviar trabalhos sem manuseio manual de inventário

## Papel na Linha de Produção

Codifique a saída do Fatiador como a entrada usada pelo Montador de Processador Quântico.
Comece com uma cópia e verifique se o AE2 devolve o componente impresso antes de
pedir um lote grande de processadores. Uma saída bloqueada permanece salva na sua thread
e não é produzida duas vezes.

## Perfil Térmico

- Geração de calor base: **1 UC por thread ativa por tique**.
- Geração de calor com Overclock: **5 UC por thread ativa por tique**.
- Resfriamento passivo ocioso: **-1 UC a cada 40 tiques**.
- Os valores do tanque de refrigerante usam a escala compartilhada dos multiblocos universais:
- Criotêmio Gélido remove **1 UC por 120 mB**, até **1000 mB/tique**.
- Refrigerante Estável remove **50 UC por mB**, até **10 mB/tique**.
- Condensado de Bose-Einstein remove **200 UC por mB**, até **10 mB/tique**.

## Escotilhas de suprimento dedicadas

A montagem exige uma **Escotilha de Fluido Massiva ME** e uma **Escotilha de Entrada de Energia
AE** em quaisquer posições de carcaça compatíveis. A prévia mostra um exemplo de
layout, não posições de escotilha obrigatórias. Pelo menos uma de cada é exigida.

Forneça FE através de um cabo de energia ao reservatório local da escotilha de energia.
O processamento nunca tira seu combustível da energia da rede AE2.

O refrigerante é consumido **apenas do tanque local da escotilha de fluido** (16.000.000 mB).
Forneça Criotêmio Gélido, Refrigerante Estável ou Condensado de Bose-Einstein usando tubos de fluido
externos ou um dispositivo de exportação explicitamente configurado. Os controladores nunca buscam refrigerante
do armazenamento ME automaticamente.

A escotilha de energia aceita **apenas FE externo**. O FE entra num buffer persistente de
1.000.000.000 equivalente a AE usando a taxa de conversão configurada do AE2.
Adicionar mais escotilhas de energia não multiplica o limite total de carregamento
do controlador. Conexões ME e sua própria energia ainda são necessárias para a
automação de itens e fluidos.
