---
navigation:
  parent: ae2trafficmonitor:index.md
  title: Configurações
  icon: ae2:network_tool
  position: 60
---

# Configurações

## A aba Visual

A aba Visual da tela da [Ferramenta de Rede](ae2:items-blocks-machines/network_tool.md) guarda suas próprias configurações. Elas valem apenas para o seu jogo e mais ninguém as vê.

- **Brilho** desenha um halo tênue ao redor de cada pulso.
- **Difusão de luz** ilumina as superfícies próximas a um pulso em sua cor. É experimental, desligada por padrão e permanece desligada quando um pacote de shaders está instalado.
- **Intensidade** é a força da difusão.
- **Alcance** é a distância que ela se espalha, em blocos.

## Arquivos de configuração

Configuração do cliente, para o seu próprio jogo:

- `showPulses` desenha os pulsos.
- `pulseSpeed` e `pulseLength` definem a velocidade e o comprimento de um pulso.
- `matchCableColour` acende os pulsos na cor do cabo. Desligado, todo pulso é ciano pálido.
- `jitterTicks` espalha pulsos que chegam juntos.
- `maxActivePulses` limita quantos são desenhados ao mesmo tempo.
- `showStartup` desenha a inicialização do Farejador.

Configuração do servidor, para o mundo:

- `enabled` desliga os pulsos para todos.
- `requireSnooper` limita os pulsos a redes com um Farejador energizado.
- `viewRange` é a distância a que um jogador precisa estar para ver um pulso, 96 blocos por padrão.
- `maxPulsesPerTick`, `cooldownTicks` e `maxRouteLength` limitam quantos pulsos são enviados e a que distância.
- `hideChannelLines` e `startupSequence` estão descritos na página do Farejador ME.
- `heatRedPerMinute` é o nível de vermelho do Calor por tráfego.

A configuração comum tem `visualCables`, que troca o Farejador pelos Cabos Visuais ME. Precisa de reinicialização. Na 26.3 fica em `ae2trafficmonitor-startup.toml`.
