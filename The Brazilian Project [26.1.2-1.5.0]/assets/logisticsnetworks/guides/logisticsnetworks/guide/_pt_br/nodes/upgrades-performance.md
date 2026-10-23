---
item_ids: [logisticsnetworks:iron_upgrade, logisticsnetworks:gold_upgrade, logisticsnetworks:diamond_upgrade, logisticsnetworks:netherite_upgrade]
navigation:
  title: Melhorias de Desempenho
  parent: nodes/index.md
  icon: logisticsnetworks:diamond_upgrade
  position: 4
---

# Melhorias de Desempenho

Melhorias de desempenho elevam os **tetos de lote** de um nó (quanto pode se mover por operação de transferência) e diminuem seu **atraso mínimo** (com que frequência ele pode disparar). Todos os canais do nó se beneficiam — as melhorias são por nó, não por canal.

Instale uma melhoria em qualquer um dos 4 espaços de melhoria no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas.

Aumentar o nível efetivo define o Lote de cada canal para o novo máximo. Atrasos de item e fluido mantêm seus valores configurados; diminua o Atraso você mesmo quando quiser transferências mais rápidas. Energia mantém seu atraso travado existente. Remover um nível limita os valores ao teto do nível restante. Configurações de área de transferência e de rótulo mantêm seus ajustes salvos.

## Só o nível mais alto conta

Um nó escolhe seu **nível** efetivo como a **maior** melhoria instalada:

| Nível | Melhoria |
|------|---------|
| 1 | Ferro |
| 2 | Ouro |
| 3 | Diamante |
| 4 | Netherita |

Se você instalar Ferro + Ouro + Diamante de uma vez, o nó usa os tetos de **Diamante**. As melhorias de Ferro e Ouro ficam ociosas — elas não se acumulam. Use uma [Melhoria Dimensional](upgrades-special.md#dimensional-upgrade) quando o nó precisar transferir entre dimensões; as melhorias Chemical e Source mantidas estão atualmente inativas.

## Comparação de níveis

| Nível | Lote de item | Lote de fluido | Lote de energia | Atraso mín |
|------|------------|-------------|--------------|-----------|
| **Sem melhoria** | valor configurado | valor configurado | valor configurado | valor configurado |
| **Ferro** | 16 itens | 1.000 mB | 10.000 RF | 10 tiques |
| **Ouro** | 32 itens | 5.000 mB | 50.000 RF | 5 tiques |
| **Diamante** | 64 itens | 20.000 mB | 250.000 RF | 1 tique |
| **Netherita** | 10.000 itens | 1.000.000 mB | Ilimitado | 1 tique |

Os valores na tabela são os **tetos**. O Lote e o Atraso de um canal no painel [Configurações de Canal](channel-settings.md) são limitados a esses tetos — você pode digitar 100.000 num campo de Lote, mas um nó de nível Ferro só usará 16. Melhore o nó para subir o teto.

Os quatro tetos de nível vêm da config de servidor do mod (`UpgradeLimitsConfig`), então um admin de servidor pode ajustar esses números. Se seu setup se comporta diferente da tabela acima, verifique a config.

## Melhoria de Ferro

Nível de entrada. Tira um nó do piso sem melhoria e o leva a território útil para setups pequenos.

<RecipeFor id="logisticsnetworks:iron_upgrade" />

## Melhoria de Ouro

Nível médio. Dobra o teto de itens do Ferro e aumenta a vazão de fluido + energia em 5x.

<RecipeFor id="logisticsnetworks:gold_upgrade" />

## Melhoria de Diamante

Nível alto. Transferências de itens de pilha cheia (64 por op), atinge atraso mínimo de 1 tique para os canais dispararem a cada tique.

<RecipeFor id="logisticsnetworks:diamond_upgrade" />

## Melhoria de Netherita

Desempenho máximo. Lotes de itens de 10.000, lotes de fluido de um milhão de mB, energia ilimitada por op. Use nos nós de trabalho pesado da sua rede — baús centrais, distribuidor principal de fluidos, grandes buffers de energia.

<RecipeFor id="logisticsnetworks:netherite_upgrade" />
