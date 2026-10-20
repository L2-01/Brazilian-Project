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
- Suporte a padrões AE2 através de um **Buffer ou Proxy de Padrões Quântico**
- Suporte a receitas de multibloco universal para famílias de processadores
- Comportamento direto de puxar e devolver itens e fluidos à rede ME

## Buffer / Proxy de Padrões

- Um **Buffer de Padrões Quântico** local armazena **72 padrões codificados**
- Um **Proxy de Padrões Quântico** usa os padrões guardados pelo seu Buffer vinculado
- Qualquer uma das peças expõe seu controlador ao Buffer como máquina de fabricação
- Cada padrão enviado reserva uma thread livre

## Papel na Linha de Produção

Mantenha os padrões do Fatiador e os padrões de montagem final visíveis à mesma rede
de fabricação. O AE2 pode então pedir componentes impressos como dependências e despachar
o passo final do processador aqui. Se todas as 27 threads estiverem reservadas, novos trabalhos esperam
até um processo concluir e sua saída ser aceita.

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
