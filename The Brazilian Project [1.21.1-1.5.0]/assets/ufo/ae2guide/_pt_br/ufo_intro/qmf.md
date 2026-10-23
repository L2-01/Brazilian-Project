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

O **QMF** é a evolução multibloco do DMA para automação pesada, fabricação em massa e fluxos de trabalho com padrões AE2.

<SubPages />

## Principais Benefícios

- Até **27 threads paralelas** no modo padrão
- **9 threads paralelas** no Modo Seguro
- Aceita tanto **receitas QMF** nativas quanto **receitas DMA**
- Suporta autofabricação AE2 por um **Buffer de Padrões Quântico ou Proxy**
- Lê ingredientes diretamente da rede ME conectada
- Devolve saídas ao ME automaticamente

## Buffer / Proxy de Padrões Quântico

<BlockImage id="ufo:quantum_pattern_buffer" scale="3"></BlockImage>

- Um Buffer local armazena até **72 padrões codificados** e conecta à AE2
- Um Proxy usa os padrões do seu Buffer vinculado
- Qualquer uma das partes se vincula a este controlador quando a estrutura é montada
- Permite ao controlador executar vários trabalhos em paralelo

## Primeiro Trabalho Automatizado

1. Confirme que o controlador reporta `IDLE`, não `UNFORMED` nem `PAUSED_NO_GRID`.
2. Codifique um padrão de processamento com a saída base determinística mostrada pelo JEI.
3. Insira-o no Buffer de Padrões Quântico local e requisite uma fabricação num terminal ME.
4. Confirme que uma célula de processo aparece na GUI do controlador.
5. Escale para 27 trabalhos só depois que os caminhos de entrada, refrigerante, energia e saída estiverem estáveis.

Itens entregues por padrão não são extraídos do ME duas vezes. Qualquer saída rejeitada
pelo armazenamento permanece em buffer persistente e muda o estado do controlador para
`OUTPUT_BLOCKED` até a capacidade voltar.

## Perfil Térmico

- Geração de calor base: **1 HU por thread ativa por tick**.
- Geração de calor em Sobrecarga: **5 HU por thread ativa por tick**.
- Resfriamento passivo ocioso: **-1 HU a cada 40 ticks**.
- Os valores do tanque de refrigerante usam a escala compartilhada dos multiblocos universais:
- Criotêmio Gélido remove **1 HU por 120 mB**, até **1000 mB/tick**.
- Refrigerante Estável remove **50 HU por mB**, até **10 mB/tick**.
- Condensado de Bose-Einstein remove **200 HU por mB**, até **10 mB/tick**.

O Modo Seguro impede o progresso no teto térmico e limita o trabalho paralelo a
9 threads. A Sobrecarga multiplica o progresso e o calor base por cinco.

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
do controlador. Conexões ME e sua própria energia ainda são necessárias para automação de itens e fluidos.

