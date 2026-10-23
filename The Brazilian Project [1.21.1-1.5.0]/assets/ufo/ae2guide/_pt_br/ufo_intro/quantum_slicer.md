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
- Aceita padrões codificados AE2 por um **Buffer de Padrões Quântico ou Proxy**
- Puxa ingredientes do ME e devolve saídas automaticamente

## Buffer / Proxy de Padrões

- Um **Buffer de Padrões Quântico** local armazena **72 padrões codificados**
- Um **Proxy de Padrões Quântico** usa os padrões do seu Buffer vinculado
- Qualquer uma das partes se vincula ao controlador após a montagem
- A AE2 pode enviar trabalhos sem manuseio manual de inventário

## Papel na Linha de Produção

Codifique a saída do Fatiador como a entrada usada pelo Montador de Processador Quântico.
Comece com uma cópia e verifique se a AE2 devolve o componente impresso antes de
requisitar um lote grande de processadores. Uma saída bloqueada permanece salva na sua thread
e não é produzida duas vezes.

## Perfil Térmico

- Geração de calor base: **1 HU por thread ativa por tick**.
- Geração de calor em Sobrecarga: **5 HU por thread ativa por tick**.
- Resfriamento passivo ocioso: **-1 HU a cada 40 ticks**.
- Os valores do tanque de refrigerante usam a escala compartilhada dos multiblocos universais:
- Criotêmio Gélido remove **1 HU por 120 mB**, até **1000 mB/tick**.
- Refrigerante Estável remove **50 HU por mB**, até **10 mB/tick**.
- Condensado de Bose-Einstein remove **200 HU por mB**, até **10 mB/tick**.

## Escotilhas de suprimento dedicadas

A montagem exige uma **Escotilha de Fluido Massiva ME** e uma **Escotilha de Entrada de
Energia AE** em quaisquer posições de carcaça compatíveis. A prévia mostra um exemplo de
disposição, não locais obrigatórios das escotilhas. Pelo menos uma de cada é exigida.

Forneça FE por um cabo de energia ao reservatório local da escotilha de energia.
O processamento nunca extrai seu combustível da energia da grade AE2.

O refrigerante é consumido **apenas do tanque local da escotilha de fluido** (16.000.000 mB).
Forneça Criotêmio Gélido, Refrigerante Estável ou Condensado de Bose-Einstein por tubos
externos de fluido ou um dispositivo de exportação explicitamente configurado. Controladores nunca buscam refrigerante
automaticamente no armazenamento ME.

A escotilha de energia aceita **apenas FE externo**. O FE entra em um buffer persistente
de 1.000.000.000 AE equivalente usando a taxa de conversão configurada da AE2.
Adicionar mais escotilhas de energia não multiplica o limite total de carga
do controlador. Conexões ME e sua própria energia ainda são necessárias para automação de itens e
fluidos.
