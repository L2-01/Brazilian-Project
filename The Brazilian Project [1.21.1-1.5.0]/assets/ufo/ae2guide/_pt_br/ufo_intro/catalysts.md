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

Catalisadores são cartões de melhoria aceitos pelo DMA e pelos controladores
quânticos universais. Shift + Botão Direito num controlador compatível instala um
diretamente, ou use seus espaços de melhoria. Até quatro catalisadores instalados
combinam multiplicativa/aditivamente conforme seu atributo.

## Famílias

| Família | T1 | T2 | T3 | Contribuição térmica |
|---|---:|---:|---:|---:|
| Fluxo de Matéria | 0.90× AE | 0.75× AE | 0.50× AE | +50 / +100 / +200% |
| Crono | 1.25× velocidade | 1.625× velocidade | 2.25× velocidade | +100 / +250 / +400% |
| Sobrefluxo | controle térmico | controle térmico | controle térmico | −50 / −100 / −200% |
| Quântico | +10% bônus | +25% bônus | +50% bônus | +75 / +150 / +300% |

As contribuições de calor são somadas ao multiplicador de calor base. O
Sobrefluxo pode compensar outras famílias, mas o multiplicador final não pode
ficar negativo.

A saída bônus Quântica é separada da quantidade determinística prometida ao
AE2. A saída base prometida completa o trabalho de fabricação; o material bônus é
inserido como subproduto e fica em buffer se o armazenamento o rejeitar.

## Sinergia de Quatro Cartões

Quatro itens de catalisador idênticos ativam uma sinergia de família e adicionam
uma penalidade térmica de 1.5×:

- Crono dobra o multiplicador de velocidade combinado.
- Fluxo de Matéria reduz pela metade o multiplicador de AE combinado.
- Quântico adiciona mais 50% de chance de bônus.
- Sobrefluxo reduz pela metade o multiplicador de calor resultante após a
  penalidade comum.

## Catalisador Dimensional

<ItemImage id="ufo:dimensional_catalyst" scale="3" float="left" />

O Catalisador Dimensional criativo substitui os perfis normais: processamento
quase instantâneo, custo de AE zero, nenhum calor gerado e uma rolagem de bônus
garantida de 100%. As entradas da receita ainda são consumidas.

> Combinações de catalisadores podem exceder a capacidade de refrigeração de uma
> máquina que seria estável. Teste um trabalho, depois aumente a contagem de
> threads observando a temperatura.
