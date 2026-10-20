---
navigation:
  parent: ufo_intro/machines.md
  title: Crioforja Quântica
  position: 44
item_ids:
  - ufo:quantum_cryoforge_controller
---

# Crioforja Quântica

<BlockImage id="ufo:quantum_cryoforge_controller" scale="4"></BlockImage>

A **Crioforja Quântica** é o multibloco universal dedicado à produção de refrigerante em grande escala.

<SubPages />

- Compartilha o mesmo fluxo de controlador dos outros multiblocos universais.
- Aceita escotilhas universais em posições de carcaça válidas.
- Foca em rendimento de refrigerante e fluidos térmicos.
- O tier da máquina vem dos Geradores de Campo Estelar instalados.

## Perfil Térmico

- A geração de calor é reduzida a **50%** da taxa normal de multibloco universal.
- Geração de calor base: **ceil(threads ativas x 0.5) UC/tique**.
- Geração de calor com Overclock: **ceil(threads ativas x 5 x 0.5) UC/tique**.
- Resfriamento passivo ocioso: **-1 UC a cada 40 tiques**.

## Tanque de Refrigerante

- **Criotêmio Gélido** remove **1 UC por 120 mB**, até **1000 mB/tique**.
- **Refrigerante Estável** remove **50 UC por mB**, até **10 mB/tique**.
- **Condensado de Bose-Einstein** remove **200 UC por mB**, até **10 mB/tique**.

## Portão do Refrigerante Estável

O Refrigerante Estável é uma receita de **Crioforja Quântica MK3**.

Substitua toda posição de gerador de campo por **Geradores de Campo Estelar MK3** antes de esperar que a receita de Refrigerante Estável rode. O Criotêmio Gélido continua sendo o caminho de refrigerante inicial.

Use as Alternativas do JEI ao posicionar escotilhas e campos. O scanner de estrutura pode
identificar um único campo de tier inferior ou inválido que silenciosamente reduz/bloqueia o
tier de receita esperado.

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

A escotilha de energia aceita **FE externo e energia da rede AE2**. O FE entra num buffer persistente de
1.000.000.000 equivalente a AE usando a taxa de conversão configurada do AE2.
A energia externa em buffer é usada primeiro; a rede AE2 conectada fornece o
resto. Ambos os caminhos respeitam o multiplicador de consumo configurado do AE2.
Conexões ME ainda são necessárias para a automação de receitas.
