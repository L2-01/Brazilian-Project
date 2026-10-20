---
item_ids:
  - logisticsnetworks:iron_upgrade
  - logisticsnetworks:gold_upgrade
  - logisticsnetworks:diamond_upgrade
  - logisticsnetworks:netherite_upgrade
navigation:
  title: Melhorias de Desempenho
  parent: nodes/index.md
  icon: logisticsnetworks:iron_upgrade
  position: 4
---

# Melhorias de Desempenho

Quatro itens de melhoria — Ferro, Ouro, Diamante e Netherita — que elevam o teto de transferência do nó. Solte-os na grade de Melhorias (o painel 3x2 na tela de configuração do nó) e cada canal deste nó pode transferir mais por tique e transferir mais frequentemente.

## O Que Cada Uma Faz

| Melhoria | Itens por transferência | Fluido / Energia por transferência | Atraso mínimo |
|----------|----------------------:|-----------------------------------:|--------------:|
| *(nenhuma)* | 4 | 400 mB / 800 FE | 40 tiques (2 s) |
| Melhoria de Ferro | 8 | 800 mB / 1.600 FE | 30 tiques |
| Melhoria de Ouro | 32 | 3.200 mB / 6.400 FE | 20 tiques (1 s) |
| Melhoria de Diamante | 128 | 12.800 mB / 25.600 FE | 10 tiques (0,5 s) |
| Melhoria de Netherita | 512 | 51.200 mB / 102.400 FE | 5 tiques (0,25 s) |

Uma só melhoria no nó já eleva todo o nó. Você não precisa de seis cópias para um upgrade completo — basta uma melhoria daquele nível instalada em qualquer um dos seis espaços de melhoria.

## O Que Muda em Cada Nível

- **Capacidade de transferência** — o quanto o canal pode mover em uma operação. Para Itens é pilhas por operação; para Fluido é milibaldes; para Energia é Forge Energy / RF. A melhoria fixa o **teto**, não a quantidade real — se você definir Lote abaixo do teto, o canal respeita o Lote.
- **Atraso mínimo** — o piso da recarga entre transferências. Se o motor normalmente rodaria a cada 40 tiques e você instalar uma Melhoria de Netherita, o canal pode rodar a cada 5 tiques — quatro vezes por segundo em vez de duas vezes por segundo.

Canais de Energia ignoram o Atraso completamente — veja [Configurações do Canal → Atraso](channel-settings.md#atraso).

## Receitas de Fabricação

<RecipeFor id="logisticsnetworks:iron_upgrade" />

<RecipeFor id="logisticsnetworks:gold_upgrade" />

<RecipeFor id="logisticsnetworks:diamond_upgrade" />

<RecipeFor id="logisticsnetworks:netherite_upgrade" />
