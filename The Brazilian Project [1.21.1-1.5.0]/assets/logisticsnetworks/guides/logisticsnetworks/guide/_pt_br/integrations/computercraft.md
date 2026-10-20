---
navigation:
  title: ComputerCraft
  parent: integrations/index.md
  position: 1
---

# ComputerCraft

Com o [CC: Tweaked](https://modrinth.com/mod/cc-tweaked) instalado, o Computador funciona também como periférico. Os scripts podem ler tudo que as telas do Computador mostram — redes, canais, nós, o grafo de nós e a telemetria de E/S ao vivo — e desenhá-la em monitores.

## Conectando

Coloque um computador do CC ao lado do Computador, ou vincule-os com um modem com fio. O tipo de periférico é `logistics_computer`:

```lua
local lc = peripheral.find("logistics_computer")
```

## Posse

Um Computador pertence ao jogador que o colocou. Os scripts veem exatamente as redes que aquele jogador pode abrir, seguindo as regras de acesso a nós do servidor e o FTB Teams. Qualquer um que conectar um computador de CC a ele pode ler essas redes, então mantenha-o onde só você alcança.

Um Computador colocado antes desta atualização não tem dono. Quebre-o e coloque-o de novo para usá-lo com o ComputerCraft.

## Métodos

`net` é um id de rede ou seu nome exato. As listas de canais estão na ordem da tela e o `index` de cada entrada é o número `CH` mostrado no [Monitor de E/S](../computer/io-monitor.md), que começa em 0 — então CH0 é `channels[1]`. As `channels` das arestas do grafo também guardam números CH.

| Método | Retorna |
|---|---|
| `listNetworks()` | `{ {id, name, nodeCount, starred, color, createdAt}, ... }` |
| `getChannels(net)` | `{ {index, name, type, nodeCount}, ... }` — `type` é nil quando um canal não tem nós ativados |
| `getNodes(net)` | `{ {id, label, block, pos, attachedPos, dimension, visible, highlighted}, ... }` — só nós carregados |
| `getGraph(net)` | `{ name, totalNodes, vertices, edges }` — vértices têm `key, label, x, y, nodes`; arestas têm `from, to, type, channels` |
| `watch(net)` | Inicia a telemetria ao vivo para este computador |
| `unwatch(net)` | Para ela |
| `getFlow(net)` | Última amostra de telemetria, ou nil antes do primeiro segundo; dá erro se a rede não estiver sendo observada |

Os tipos são `item`, `fluid`, `energy`, `chemical` e `source`.

## Telemetria ao Vivo

Depois do `watch`, um evento `logistics_flow` chega a cada segundo:

```lua
local _, side, networkId, sample = os.pullEvent("logistics_flow")
-- sample.channels[1].total, sample.channels[1].resources[1].displayName
```

Cada canal tem `index`, `type`, `total` (quantidade movida naquele segundo, nas unidades do Monitor de E/S) e `resources` — os 16 principais itens, fluidos ou produtos químicos com `kind`, `name`, `displayName` e `amount`. Os canais de Energia e de Fonte têm uma lista de recursos vazia.

As observações terminam quando o computador reinicia ou é desconectado, então chame `watch` no seu script `startup`. Elas também param sem erro se o dono perder acesso à rede ou se a rede for apagada.

## Exemplo

Mostra a taxa ao vivo de cada canal num monitor conectado:

```lua
local lc = peripheral.find("logistics_computer")
local mon = peripheral.find("monitor")
local net = "Main Base"

mon.setTextScale(0.5)
lc.watch(net)
while true do
  local _, _, _, sample = os.pullEvent("logistics_flow")
  mon.clear()
  for i, ch in ipairs(sample.channels) do
    mon.setCursorPos(1, i)
    mon.write(("CH%d %-8s %d/s"):format(ch.index, ch.type or "-", ch.total))
  end
end
```
