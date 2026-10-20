---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Campos Estelares
  position: 47
item_ids:
  - ufo:stellar_field_generator_t1
  - ufo:stellar_field_generator_t2
  - ufo:stellar_field_generator_t3
---

# Geradores de Campo Estelar

<BlockImage id="ufo:stellar_field_generator_t1" scale="3"></BlockImage>

Geradores de campo são os blocos de estabilização usados por toda a linha avançada de multiblocos UFO.

- Os multiblocos universais usam o **menor tier de gerador de campo** nas suas posições de campo como o tier da máquina.
- Receitas com tier exigido maior não rodam até o tier da máquina ser alto o suficiente.
- Receitas abaixo do tier instalado rodam mais rápido e usam menos AE: cada tier extra reduz o tempo de processamento pela metade e aplica um multiplicador de custo de AE de **0,75x**.

## Prioridade Universal de Refrigerante

- **MK1** prefere Criotêmio Gélido: **1 UC por 120 mB**, até **1000 mB/tique**.
- **MK2** prefere Refrigerante Estável: **50 UC por mB**, até **10 mB/tique**.
- **MK3** prefere Condensado de Bose-Einstein: **200 UC por mB**, até **10 mB/tique**.

## Campos do Nexus Estelar

O Nexus Estelar é mais rígido que os multiblocos universais: todas as posições de gerador de campo precisam usar o mesmo tier.

- **MK1** carrega o buffer do Nexus a **500K AE/t**.
- **MK2** carrega o buffer do Nexus a **1M AE/t**.
- **MK3** carrega o buffer do Nexus a **2M AE/t**.
- Tiers de campo melhores multiplicam a força de resfriamento do Nexus: **MK1 x2**, **MK2 x3**, **MK3 x4**.
- Se o superaquecimento inseguro for permitido, o raio de falha escala por tier: **30 / 50 / 100 blocos**.
