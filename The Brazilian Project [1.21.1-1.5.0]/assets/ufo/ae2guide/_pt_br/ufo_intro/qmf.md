---
navigation:
  parent: ufo_intro/machines.md
  title: Fabricador de Matéria Quântica
  position: 42
item_ids:
  - ufo:quantum_matter_fabricator_controller
---

# Fabricador de Matéria Quântica

<BlockImage id="ufo:quantum_matter_fabricator_controller" scale="4"></BlockImage>

O **QMF** é a evolução em multibloco do DMA para automação pesada, fabricação em massa e fluxos de trabalho de padrões AE2.

<SubPages />

## Principais Benefícios

- Até **27 threads paralelas** no modo padrão
- **9 threads paralelas** no Modo Seguro
- Aceita tanto **receitas nativas do QMF** quanto **receitas de DMA**
- Suporta fabricação automática AE2 através de um **Buffer ou Proxy de Padrões Quântico**
- Lê ingredientes diretamente da rede ME conectada
- Devolve saídas à ME automaticamente

## Buffer / Proxy de Padrões Quântico

<BlockImage id="ufo:quantum_pattern_buffer" scale="3"></BlockImage>

- Um Buffer local armazena até **72 padrões codificados** e se conecta ao AE2
- Um Proxy usa os padrões do seu Buffer vinculado
- Qualquer uma das peças se vincula a este controlador quando a estrutura é montada
- Permite ao controlador executar vários trabalhos em paralelo

## Primeiro Trabalho Automatizado

1. Confirme que o controlador reporta `IDLE`, não `UNFORMED` ou `PAUSED_NO_GRID`.
2. Codifique um padrão de processamento com a saída base determinística mostrada pelo JEI.
3. Insira-o no Buffer de Padrões Quântico local e peça uma fabricação num terminal ME.
4. Confirme que uma célula de processo aparece na GUI do controlador.
5. Escale para 27 trabalhos só depois que os caminhos de entrada, refrigerante, energia e saída estiverem estáveis.

Itens entregues por padrão não são extraídos da ME duas vezes. Qualquer saída rejeitada
pelo armazenamento permanece em buffer persistente e muda o estado do controlador para
`OUTPUT_BLOCKED` até a capacidade voltar.

## Perfil Térmico

- Geração de calor base: **1 UC por thread ativa por tique**.
- Geração de calor com Overclock: **5 UC por thread ativa por tique**.
- Resfriamento passivo ocioso: **-1 UC a cada 40 tiques**.
- Os valores do tanque de refrigerante usam a escala compartilhada dos multiblocos universais:
- Criotêmio Gélido remove **1 UC por 120 mB**, até **1000 mB/tique**.
- Refrigerante Estável remove **50 UC por mB**, até **10 mB/tique**.
- Condensado de Bose-Einstein remove **200 UC por mB**, até **10 mB/tique**.

O Modo Seguro impede o progresso no teto térmico e limita o trabalho paralelo a
9 threads. O Overclock multiplica o progresso e o calor base por cinco.

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
