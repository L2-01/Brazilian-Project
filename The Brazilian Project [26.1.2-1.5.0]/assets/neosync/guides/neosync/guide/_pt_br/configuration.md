---
navigation:
  title: Configuração
  icon: minecraft:writable_book
  parent: index.md
  position: 8
---

# <Color id="light_purple">Configuração</Color>

O arquivo de config é `config/neosync-common.toml`. As opções que os jogadores mais perguntam:

| Chave | Padrão | Efeito |
| --- | --- | --- |
| `enableInstantShellConstruction` | `false` | Cascas terminam instantaneamente para jogadores no criativo |
| `warnPlayerInsteadOfKilling` | `false` | Recusa a amostra em vez de matar um jogador com vida baixa |
| `fingerstickDamage` | `20` | Vida retirada por amostra |
| `hardcoreFingerstickDamage` | `40` | Vida retirada por amostra no hardcore |
| `shellConstructorCapacity` | `256000` | FE necessário para uma casca completa |
| `shellConstructionSpeed` | `2.5` | Multiplicador de velocidade de construção |
| `shellStorageCapacity` | `320` | Buffer de FE de um armazenamento |
| `shellStorageConsumption` | `16` | FE drenado por tique para manter uma casca viva |
| `acceptsRedstone` | `true` | Armazenamentos aceitam sinal de redstone como energia |
| `maxUnpoweredLifespan` | `20` | Tiques que um armazenamento mantém sua casca viva sem energia |
| `energyMap` | ver abaixo | FE por tique para cada entidade numa esteira |
| `syncPriority` | `NATURAL` | Ordem em que as cascas são escolhidas ao morrer |
| `autoSyncOnDeath` | `true` | Sincroniza para outra casca quando uma casca morre |
| `wrench` | `minecraft:stick` | Item que alterna a saída de comparador de um contêiner |

O `energyMap` padrão é galinha 2, porco 16, jogador 20, lobo 22, aldeão 25, creeper 80 e enderman 160. As entradas seguem a forma `entity_id:energy_per_tick`, então `minecraft:horse:30` adiciona cavalos a 30 FE por tique.

`syncPriority` aceita `NATURAL`, `NEAREST` ou qualquer nome de cor de corante em maiúsculas, como `RED` ou `LIGHT_BLUE`. Veja [Sincronização](syncing.md) para como a ordem é usada.
