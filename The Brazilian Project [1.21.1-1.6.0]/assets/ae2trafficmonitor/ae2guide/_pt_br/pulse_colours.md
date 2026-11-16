---
navigation:
  parent: ae2trafficmonitor:index.md
  title: Cores dos Pulsos
  icon: ae2:network_tool
  position: 50
---

# Cores dos Pulsos

Os pulsos de cada tipo podem ter uma cor ou um efeito próprios. Defina na aba Filtros da tela da [Ferramenta de Rede](ae2:items-blocks-machines/network_tool.md). O dono da rede define e todos veem, como descrito em [Filtros de Pulso](pulse_filters.md).

## A lista suspensa

Clique na caixa de cor para abrir a lista.

- **Cor do cabo** é o padrão. Os pulsos assumem a cor do cabo por onde viajam.
- **Cores do Minecraft** são as 16 cores de corante.
- **Efeitos** estão listados abaixo.

Você também pode digitar uma cor hexadecimal como `FF69B4`, ou clicar na amostra para abrir um seletor de cores. O botão de borracha ao lado da caixa volta para a cor do cabo.

## Efeitos

| Efeito | Aparência |
| --- | --- |
| RGB | O matiz percorre o pulso |
| Fogo | Cabeça branco-incandescente, cauda vermelha |
| Aurora | Uma transição lenta de verde a violeta |
| Oceano | Azul e turquesa ondulantes |
| Cintilação | Um traço azul-pálido com faíscas brancas |
| Synthwave | Ciano esmaecendo para rosa |
| Calor por tráfego | Azul quando quieto, vermelho quando ocupado |
| Falha | Pedaços quebrados em magenta, ciano e a cor do cabo |

Escolher uma cor encerra um efeito, e escolher um efeito encerra uma cor.

O Calor por tráfego vai de azul a cerca de 10 itens por minuto até vermelho total a 30.000 por minuto. Fluidos contam em baldes. A opção `heatRedPerMinute` na configuração do servidor muda o nível de vermelho. Um tipo mais movimentado também ganha um pulso mais longo.
