---
navigation:
  parent: ufo_intro/materials.md
  title: Catalisadores
  icon: ufo:chrono_catalyst_t1
  position: 20
item_ids:
  - ufo:matterflow_catalyst_t1
  - ufo:matterflow_catalyst_t2
  - ufo:matterflow_catalyst_t3
  - ufo:chrono_catalyst_t1
  - ufo:chrono_catalyst_t2
  - ufo:chrono_catalyst_t3
  - ufo:overflux_catalyst_t1
  - ufo:overflux_catalyst_t2
  - ufo:overflux_catalyst_t3
  - ufo:quantum_catalyst_t1
  - ufo:quantum_catalyst_t2
  - ufo:quantum_catalyst_t3
  - ufo:dimensional_catalyst
---

# Catalisadores

Catalisadores são cartões de melhoria aceitos pelo DMA e pelos controladores quânticos
universais. Use Shift + clique direito em um controlador compatível para instalar um diretamente,
ou use seus slots de melhoria. Até quatro catalisadores instalados combinam-se
multiplicativa/aditivamente de acordo com seu atributo.

## Famílias

| Família | T1 | T2 | T3 | Contribuição térmica |
|---|---:|---:|---:|---:|
| Fluxo de Matéria | 0.90× AE | 0.75× AE | 0.50× AE | +50 / +100 / +200% |
| Crono | 1.25× de velocidade | 1.625× de velocidade | 2.25× de velocidade | +100 / +250 / +400% |
| Sobrefluxo | controle térmico | controle térmico | controle térmico | −50 / −100 / −200% |
| Quântico | +10% de bônus | +25% de bônus | +50% de bônus | +75 / +150 / +300% |

As contribuições de calor são somadas ao multiplicador de calor base. O Sobrefluxo pode compensar
outras famílias, mas o multiplicador final não pode ficar negativo.

O rendimento de bônus Quântico é separado da quantidade determinística prometida à
AE2. O rendimento base prometido conclui o trabalho de fabricação; o material de bônus é
inserido como subproduto e permanece em buffer se o armazenamento o rejeitar.

## Sinergia de Quatro Cartas

Quatro itens de catalisador idênticos ativam uma sinergia de família e adicionam uma penalidade térmica
de 1.5×:

- Crono dobra o multiplicador de velocidade combinado.
- Fluxo de Matéria reduz pela metade o multiplicador de AE combinado.
- Quântico adiciona mais 50% de chance de bônus.
- Sobrefluxo reduz pela metade o multiplicador de calor resultante após a penalidade comum.

## Catalisador Dimensional

<ItemImage id="ufo:dimensional_catalyst" scale="3" float="left" />

O Catalisador Dimensional criativo ignora os perfis normais: processamento
quase instantâneo, custo zero de AE, nenhum calor gerado e rolagem de bônus garantida de 100%.
Os insumos da receita ainda são consumidos.

> Combinações de catalisadores podem exceder a capacidade de resfriamento de uma máquina
> que seria estável. Teste um trabalho e depois aumente o número de threads observando a temperatura.
