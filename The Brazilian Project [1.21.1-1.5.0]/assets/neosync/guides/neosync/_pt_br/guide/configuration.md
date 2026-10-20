---
navigation:
  title: Configuração
  icon: minecraft:writable_book
  parent: index.md
  position: 8
---

# <Color id="light_purple">Configuração</Color>

O arquivo de configuração é `config/neosync-common.toml`. As opções sobre as quais os jogadores mais perguntam:

| Chave | Padrão | Efeito |
| --- | --- | --- |
| `enableInstantShellConstruction` | `false` | Cascas terminam instantaneamente para jogadores criativos |
| `warnPlayerInsteadOfKilling` | `false` | Recusa a amostra em vez de matar um jogador com pouca vida |
| `fingerstickDamage` | `20` | Vida retirada por amostra |
| `hardcoreFingerstickDamage` | `40` | Vida retirada por amostra no modo Intenso |
| `shellConstructorCapacity` | `256000` | FE necessário para uma casca completa |
| `shellConstructionSpeed` | `2.5` | Multiplicador de velocidade de construção |
| `shellStorageCapacity` | `320` | Reservatório de FE de um armazenamento |
| `shellStorageConsumption` | `16` | FE drenado por tique para manter uma casca viva |
| `acceptsRedstone` | `true` | Armazenamentos aceitam um sinal de redstone como energia |
| `maxUnpoweredLifespan` | `20` | Tiques que um armazenamento mantém sua casca viva sem energia |
| `energyMap` | ver abaixo | FE por tique para cada entidade numa esteira |
| `syncPriority` | `NATURAL` | Ordem em que as cascas são escolhidas na morte |
| `autoSyncOnDeath` | `true` | Sincronizar para outra casca quando uma casca morre |
| `wrench` | `minecraft:stick` | Item que alterna a saída de comparador de um contêiner |

O `energyMap` padrão é galinha 2, porco 16, jogador 20, lobo 22, aldeão 25, creeper 80 e enderman 160. As entradas têm a forma `entity_id:energy_per_tick`, então `minecraft:horse:30` adiciona cavalos a 30 FE por tique.

`syncPriority` aceita `NATURAL`, `NEAREST` ou qualquer nome de cor de corante em maiúsculas, como `RED` ou `LIGHT_BLUE`. Veja [Sincronizando](syncing.md) para saber como a ordem é usada.
