---
navigation:
  title: Cabo ME de Sobrecarga
  icon: ae2lt:overloaded_cable
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_cable
  - ae2lt:overloaded_cable_white
  - ae2lt:overloaded_cable_orange
  - ae2lt:overloaded_cable_magenta
  - ae2lt:overloaded_cable_light_blue
  - ae2lt:overloaded_cable_yellow
  - ae2lt:overloaded_cable_lime
  - ae2lt:overloaded_cable_pink
  - ae2lt:overloaded_cable_gray
  - ae2lt:overloaded_cable_light_gray
  - ae2lt:overloaded_cable_cyan
  - ae2lt:overloaded_cable_purple
  - ae2lt:overloaded_cable_blue
  - ae2lt:overloaded_cable_brown
  - ae2lt:overloaded_cable_green
  - ae2lt:overloaded_cable_red
  - ae2lt:overloaded_cable_black
---

# Cabo ME de Sobrecarga

O **Cabo ME de Sobrecarga** é a versão melhorada do Cabo Denso do AE2 vanilla, sem limite de canais por cabo.

## Recursos Centrais

* **Sem limite de canais por cabo**: um único Cabo ME de Sobrecarga não tem gargalo de canais; ele pode carregar qualquer número de canais
* **Total de canais da rede determinado pelos controladores**: o total de canais disponíveis numa rede de Sobrecarga depende do número de **Controladores ME de Sobrecarga** — cada controlador de Sobrecarga fornece 128 canais (padrão, configurável)
* **Alocação inteligente de canais**: a rede de Sobrecarga usa um **algoritmo de fluxo máximo** em vez do BFS do AE2 vanilla, usando o orçamento total de canais com mais eficiência em layouts complexos
* **Aparência de cabo denso**: visualmente idêntico ao Cabo Denso do vanilla
* **Variantes de cor**: 17 variantes de cor disponíveis; cores diferentes não se conectam entre si (mesma regra de coloração dos cabos do AE2 vanilla)

## Mecânica de Canais

Ao contrário dos tetos fixos por cabo do AE2 vanilla (8 para cabo inteligente, 32 para cabo denso inteligente), o Cabo ME de Sobrecarga segue estas regras:

1. **Sem gargalo por cabo**: todo Cabo ME de Sobrecarga pode carregar qualquer número de canais
2. **Total de canais da rede = controladores de Sobrecarga × 128**: o total de canais disponíveis na rede é determinado pelo número de Controladores ME de Sobrecarga
3. **Alocação por fluxo máximo**: os canais são alocados pela rede usando um algoritmo de fluxo máximo, não descontados segmento a segmento ao longo de um caminho

O que isso significa para o jogador:

* Você não precisa mais se preocupar com um cabo troncal ficando sem canais
* Enquanto o total de canais da rede for suficiente, todo dispositivo recebe seu canal
* Adicione mais Controladores ME de Sobrecarga para escalar o orçamento total de canais da rede

> **Importante**: o Cabo ME de Sobrecarga só entrega seu comportamento completo de capacidade ilimitada quando **ambas as pontas são dispositivos de Sobrecarga** (Cabo ME de Sobrecarga, Controlador ME de Sobrecarga etc.). Se um Cabo ME de Sobrecarga for conectado diretamente a um dispositivo do AE2 vanilla, essa conexão ainda conta nos limites de canais do vanilla.

## Variantes de Cor

O Cabo ME de Sobrecarga tem 17 variantes de cor: a cor Fluix padrão, mais todas as 16 cores de corante do Minecraft:

Branco, Laranja, Magenta, Azul-claro, Amarelo, Verde-limão, Rosa, Cinza, Cinza-claro, Ciano, Roxo, Azul, Marrom, Verde, Vermelho, Preto.

Cores diferentes de Cabo ME de Sobrecarga não se conectam entre si (mesma regra de coloração dos cabos do AE2 vanilla).

## Como Usar

O Cabo ME de Sobrecarga é usado da mesma forma que o Cabo Denso Inteligente do vanilla — basta colocá-lo na lateral de um bloco para conectar à rede.

## Bons Lugares para Usá-lo

* Linhas troncais principais numa base grande, onde um único Cabo ME de Sobrecarga pode absorver a carga de canais de muitos cabos densos
* Redes de alta capacidade construídas em torno de Controladores ME de Sobrecarga
* Simplificar layouts de rede — você não precisa mais rotear especificamente contornando gargalos de canais
