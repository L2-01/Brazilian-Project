---
navigation:
  parent: ufo_intro/stellar_nexus.md
  title: Portas, Campos e Rede
  icon: ufo:ae_energy_input_hatch
  position: 20
---

# Portas, Campos e Rede do Nexus

A formação exige exatamente um de cada papel operacional:

<ItemGrid>
  <ItemIcon id="ufo:me_massive_input_hatch" />
  <ItemIcon id="ufo:me_massive_output_hatch" />
  <ItemIcon id="ufo:me_massive_fluid_hatch" />
  <ItemIcon id="ufo:ae_energy_input_hatch" />
</ItemGrid>

- A Entrada Massiva de Itens fornece os itens da receita.
- A Saída Massiva de Itens devolve os produtos de item.
- A Escotilha de Fluido Massiva é o papel de entrada de refrigerante. Seu tanque local de 16.000.000 mB
  aceita refrigerante de tubos compatíveis com NeoForge, incluindo tubos do Mekanism.
  O resfriamento consome apenas fluido já armazenado neste tanque local.
- A Escotilha de Entrada de Energia AE carrega o buffer interno de **200B AE** exclusivamente
  a partir do FE armazenado localmente na escotilha. Alimente-a com um cabo de energia FE em qualquer
  face; nenhum cabo ME é necessário para a transferência de energia. Ela nunca drena energia da rede
  nem armazenamento do Applied Flux. A rede ME permanece separada para acesso a itens/fluidos.

Conecte cada escotilha pela face indicada pela sua orientação. As cinco faces
restantes são isoladas; a adjacência dentro da carcaça não cria uma conexão ME
escondida.

Tubos de fluido são independentes dessas regras de face ME e podem encher refrigerante por
qualquer face. Apenas Criotêmio Gélido, Refrigerante Estável e Condensado de Bose-Einstein passam pelo
filtro; a drenagem externa está desativada.

Todas as **138** posições de campo precisam ser preenchidas com um único tier: MK1, MK2 ou MK3.
Campos misturados ou faltantes invalidam a formação em vez de tirar a média de desempenho.
Mantenha carregado todo chunk que cruza a área de 35×34×35.
