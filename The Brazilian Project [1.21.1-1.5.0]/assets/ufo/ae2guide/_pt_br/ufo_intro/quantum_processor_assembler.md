---
navigation:
  parent: ufo_intro/machines.md
  title: Montador de Processador Quântico
  position: 44
item_ids:
  - ufo:quantum_processor_assembler_controller
---

# Montador de Processador Quântico

<BlockImage id="ufo:quantum_processor_assembler_controller" scale="4"></BlockImage>

O **Montador de Processador Quântico** é o multibloco de finalização de processadores em massa.

<SubPages />

## Recursos

- Até **27 trabalhos paralelos** no modo padrão
- **9 trabalhos paralelos** no Modo Seguro
- Suporte a padrões AE2 por um **Buffer de Padrões Quântico ou Proxy**
- Suporte a receitas de multibloco universal para famílias de processadores
- Comportamento direto de puxar e devolver itens e fluidos da rede ME

## Buffer / Proxy de Padrões

- Um **Buffer de Padrões Quântico** local armazena **72 padrões codificados**
- Um **Proxy de Padrões Quântico** usa os padrões do seu Buffer vinculado
- Qualquer uma das partes expõe seu controlador ao Buffer como máquina de fabricação
- Cada padrão enviado reserva uma thread livre

## Papel na Linha de Produção

Mantenha os padrões do Fatiador e os padrões de montagem final visíveis à mesma rede
de fabricação. A AE2 pode então requisitar componentes impressos como dependências e despachar
a etapa final do processador aqui. Se todas as 27 threads estiverem reservadas, novos trabalhos esperam
até um processo concluir e sua saída ser aceita.

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
