---
item_ids: [logisticsnetworks:iron_upgrade, logisticsnetworks:gold_upgrade, logisticsnetworks:diamond_upgrade, logisticsnetworks:netherite_upgrade]
navigation:
  title: Melhorias de Desempenho
  parent: nodes/index.md
  icon: logisticsnetworks:diamond_upgrade
  position: 4
---

# Melhorias de Desempenho

Melhorias de desempenho aumentam os **tetos de lote** de um nó (quanto pode se mover por operação de transferência) e baixam seu **atraso mínimo** (com que frequência pode disparar). Todo canal do nó se beneficia — melhorias são por nó, não por canal.

Instale uma melhoria em qualquer um dos 4 espaços de melhoria no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas.

## Só o nível mais alto conta

Um nó escolhe seu **nível** efetivo como a **maior** melhoria instalada:

| Nível | Melhoria |
|------|---------|
| 1 | Ferro |
| 2 | Ouro |
| 3 | Diamante |
| 4 | Netherita |

Se você instalar Ferro + Ouro + Diamante de uma vez, o nó usa os tetos de **Diamante**. As melhorias de Ferro e Ouro ficam ociosas — elas não acumulam. Preencha os outros espaços com [melhorias especiais](upgrades-special.md) (Dimensional, Química do Mekanism, Fonte de Ars) para aproveitar melhor os espaços extras.

## Comparação de Níveis

| Nível | Lote de itens | Lote de fluido | Lote de energia | Atraso mín. |
|------|------------|-------------|--------------|-----------|
| **Sem melhoria** | valor configurado | valor configurado | valor configurado | valor configurado |
| **Ferro** | 16 itens | 1.000 mB | 10.000 RF | 10 tiques |
| **Ouro** | 32 itens | 5.000 mB | 50.000 RF | 5 tiques |
| **Diamante** | 64 itens | 20.000 mB | 250.000 RF | 1 tique |
| **Netherita** | 10.000 itens | 1.000.000 mB | Ilimitado | 1 tique |

Os valores da tabela são os **tetos**. O Lote e o Atraso de um canal no painel [Configurações de Canal](channel-settings.md) são limitados a esses tetos — você pode digitar 100.000 num campo de Lote, mas um nó de nível Ferro só usará 16. Melhore o nó para subir o teto.

Todos os quatro tetos de nível vêm da configuração de servidor do mod (`UpgradeLimitsConfig`), então um admin de servidor pode ajustar esses números. Se sua configuração se comportar diferente da tabela acima, verifique a configuração.

## Melhoria de Ferro

Nível inicial. Tira o nó do seu piso sem melhoria e o leva a um território útil para configurações pequenas.

<RecipeFor id="logisticsnetworks:iron_upgrade" />

## Melhoria de Ouro

Nível médio. Dobra o teto de itens do Ferro e multiplica por 5 a vazão de fluido + energia.

<RecipeFor id="logisticsnetworks:gold_upgrade" />

## Melhoria de Diamante

Nível alto. Transferências de item de pilha cheia (64 por operação), chega ao atraso mínimo de 1 tique para os canais dispararem a cada tique.

<RecipeFor id="logisticsnetworks:diamond_upgrade" />

## Melhoria de Netherita

Desempenho máximo. Lotes de item de 10.000, lotes de fluido de um milhão de mB, energia ilimitada por operação. Use nos nós mais pesados da sua rede — baús centrais, distribuidor principal de fluido, grandes reservas de energia.

<RecipeFor id="logisticsnetworks:netherite_upgrade" />
