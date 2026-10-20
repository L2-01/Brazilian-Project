---
navigation:
  title: Melhoria de Esponja
  icon: deepnullreforged:sponge_upgrade
  parent: upgrades.md
  position: 21
item_ids:
  - deepnullreforged:sponge_upgrade
---

# Melhoria de Esponja

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="deepnullreforged:sponge_upgrade" />
</Column>

Permite que um DampNull absorva blocos fonte visíveis próximos numa única ação quando você clica com o botão direito perto de fluidos.

## Disponibilidade

- Somente DampNull
- Todos os níveis

## Diferenças por Nível

| Nível | Tamanho Horizontal | Tamanho Vertical |
| --- | ---: | --- |
| Redstone | 6 | 4 |
| Lápis-Lazúli | 8 | 6 |
| Ferro | 8 | 6 |
| Ouro | 10 | 8 |
| Diamante | 12 | 10 |
| Esmeralda | 16 | 12 |
| Criativo | 16 | 12 |

## Notas

- Varre numa caixa retangular centrada no bloco clicado.
- A caixa alcança acima e abaixo da posição clicada.
- Só absorve blocos fonte visíveis que não estejam bloqueados por terreno.
- Usa as regras de tanque configuradas do DampNull, então só armazena fluidos que caibam em tanques correspondentes ou vazios.
- Se `voidFullFluidsOnSponge` estiver ativado, fluidos correspondentes mirados num tanque correspondente já cheio ainda são absorvidos e anulados.
- Absorve todos os blocos fonte visíveis no alcance num único uso.

## Fabricação

<RecipeFor id="deepnullreforged:sponge_upgrade" fallbackText="Veja o JEI para a receita atual." />
