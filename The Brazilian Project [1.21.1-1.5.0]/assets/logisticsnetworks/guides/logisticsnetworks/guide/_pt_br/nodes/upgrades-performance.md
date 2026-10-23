---
item_ids: [logisticsnetworks:iron_upgrade, logisticsnetworks:gold_upgrade, logisticsnetworks:diamond_upgrade, logisticsnetworks:netherite_upgrade]
navigation:
  title: Melhorias de Desempenho
  parent: nodes/index.md
  icon: logisticsnetworks:diamond_upgrade
  position: 4
---

# Melhorias de Desempenho

Melhorias de desempenho elevam os **limites de lote** de um nó (quanto pode ser movido por operação de transferência) e diminuem seu **atraso mínimo** (com que frequência ele pode disparar). Todo canal do nó se beneficia — melhorias são por nó, não por canal.

Instale uma melhoria em qualquer um dos 4 espaços de melhoria no painel [Filtros e Melhorias](filters-upgrades.md). Duplicatas são rejeitadas.

Aumentar o nível efetivo define o Lote de cada canal em seu novo máximo. Atrasos de itens e fluidos mantêm seus valores configurados; diminua o Atraso você mesmo quando quiser transferências mais rápidas. Energia mantém seu atraso fixo existente. Remover um nível limita os valores aos limites do nível restante. Configurações da área de transferência e de rótulos mantêm suas configurações salvas.

## Só o nível mais alto conta

Um nó escolhe seu **nível** efetivo como a **maior** melhoria instalada:

| Nível | Melhoria |
|------|---------|
| 1 | Ferro |
| 2 | Ouro |
| 3 | Diamante |
| 4 | Netherita |

Se você instalar Ferro + Ouro + Diamante de uma vez, o nó usa os limites de **Diamante**. As melhorias de Ferro e Ouro ficam ociosas — elas não se acumulam. Preencha os outros espaços com [melhorias especiais](upgrades-special.md) (Dimensional, Química do Mekanism, Fonte de Ars) para aproveitar melhor os espaços extras.

## Comparação de Níveis

| Nível | Lote de itens | Lote de fluido | Lote de energia | Atraso mín. |
|------|------------|-------------|--------------|-----------|
| **Sem melhoria** | valor configurado | valor configurado | valor configurado | valor configurado |
| **Ferro** | 16 itens | 1.000 mB | 10.000 RF | 10 ticks |
| **Ouro** | 32 itens | 5.000 mB | 50.000 RF | 5 ticks |
| **Diamante** | 64 itens | 20.000 mB | 250.000 RF | 1 tick |
| **Netherita** | 10.000 itens | 1.000.000 mB | Ilimitado | 1 tick |

Os valores da tabela são os **tetos**. O Lote e o Atraso de um canal no painel [Configurações de Canal](channel-settings.md) são limitados a esses tetos — você pode digitar 100.000 em um campo de Lote, mas um nó de nível Ferro só usará 16. Melhore o nó para elevar o teto.

Todos os quatro limites de nível vêm da configuração de servidor do mod (`UpgradeLimitsConfig`), então um administrador de servidor pode ajustar esses números. Se sua configuração se comportar diferente da tabela acima, verifique a config.

## Melhoria de Ferro

Nível de entrada. Tira um nó do seu piso sem melhorias e o coloca em território útil para configurações pequenas.

<RecipeFor id="logisticsnetworks:iron_upgrade" />

## Melhoria de Ouro

Nível intermediário. Dobra o limite de itens do Ferro e aumenta a vazão de fluido + energia em 5x.

<RecipeFor id="logisticsnetworks:gold_upgrade" />

## Melhoria de Diamante

Nível alto. Transferências de itens de pilha cheia (64 por operação), atinge atraso mínimo de 1 tick para que canais disparem a cada tick.

<RecipeFor id="logisticsnetworks:diamond_upgrade" />

## Melhoria de Netherita

Desempenho máximo. Lotes de itens de 10.000, lotes de fluido de um milhão de mB, energia ilimitada por operação. Use nos nós mais exigentes da sua rede — baús centrais, distribuidor principal de fluidos, grandes acumuladores de energia.

<RecipeFor id="logisticsnetworks:netherite_upgrade" />
