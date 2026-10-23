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

A **Crioforja Quântica** é o multibloco universal dedicado à produção de refrigerante em larga escala.

<SubPages />

- Compartilha o mesmo fluxo de controlador dos demais multiblocos universais.
- Aceita escotilhas universais em posições de carcaça válidas.
- Foca em vazão de refrigerante e fluidos térmicos.
- O tier da máquina vem dos Geradores de Campo Estelar instalados.

## Perfil Térmico

- A geração de calor é reduzida a **50%** da taxa normal dos multiblocos universais.
- Geração de calor base: **ceil(threads ativas x 0.5) HU/tick**.
- Geração de calor em Sobrecarga: **ceil(threads ativas x 5 x 0.5) HU/tick**.
- Resfriamento passivo ocioso: **-1 HU a cada 40 ticks**.

## Tanque de Refrigerante

- **Criotêmio Gélido** remove **1 HU por 120 mB**, até **1000 mB/tick**.
- **Refrigerante Estável** remove **50 HU por mB**, até **10 mB/tick**.
- **Condensado de Bose-Einstein** remove **200 HU por mB**, até **10 mB/tick**.

## Portão do Refrigerante Estável

Refrigerante Estável é uma receita da **Crioforja Quântica MK3**.

Substitua toda posição de gerador de campo por **Geradores de Campo Estelar MK3** antes de esperar que a receita de Refrigerante Estável rode. O Criotêmio Gélido continua sendo o caminho inicial de refrigerante.

Use Alternativas do JEI ao colocar escotilhas e campos. O scanner de estrutura pode
identificar um único campo de tier inferior ou inválido que reduz/bloqueia silenciosamente
o tier de receita esperado.

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

A escotilha de energia aceita **FE externo e energia da grade AE2**. O FE entra em um buffer persistente
de 1.000.000.000 AE equivalente usando a taxa de conversão configurada da AE2.
A energia externa em buffer é usada primeiro; a grade AE2 conectada supre o
restante. Ambos os caminhos respeitam o multiplicador de consumo configurado da AE2.
Conexões ME ainda são necessárias para a automação de receitas.
