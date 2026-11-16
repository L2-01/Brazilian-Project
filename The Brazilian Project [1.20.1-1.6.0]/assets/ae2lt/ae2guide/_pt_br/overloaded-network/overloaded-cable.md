---
navigation:
  title: Cabo de Sobrecarga
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

# Cabo de Sobrecarga

O **Cabo de Sobrecarga** é a versão aprimorada do Cabo Denso de AE2 vanilla, sem limite de canais por cabo.

## Recursos Centrais

* **Sem limite de canais por cabo**: um único Cabo de Sobrecarga não tem gargalo de canais; pode carregar qualquer número de canais
* **Total de canais da rede determinado pelos controladores**: os canais totais disponíveis numa rede de Sobrecarga dependem do número de **Controladores ME de Sobrecarga** — cada controlador de Sobrecarga fornece 128 canais (padrão, configurável)
* **Alocação inteligente de canais**: a rede de Sobrecarga usa um **algoritmo de fluxo máximo** no lugar do BFS do AE2 vanilla, usando o orçamento total de canais de forma mais eficiente em layouts complexos
* **Aparência de cabo denso**: visualmente idêntico ao Cabo Denso vanilla
* **Variantes de cor**: 17 variantes de cor disponíveis; cores diferentes não se conectam entre si (mesma regra de coloração dos cabos de AE2 vanilla)

## Mecânica de Canais

Diferente dos tetos fixos por cabo do AE2 vanilla (8 para cabo inteligente, 32 para cabo inteligente denso), o Cabo de Sobrecarga segue estas regras:

1. **Sem gargalo por cabo**: todo Cabo de Sobrecarga pode carregar qualquer número de canais
2. **Total de canais da rede = controladores de Sobrecarga × 128**: os canais totais disponíveis na rede são determinados pelo número de Controladores ME de Sobrecarga
3. **Alocação por fluxo máximo**: os canais são alocados pela rede usando um algoritmo de fluxo máximo, não deduzidos segmento a segmento ao longo de um caminho

O que isso significa para o jogador:

* Você não precisa mais se preocupar com um cabo troncal ficar sem canais
* Desde que o total de canais da rede seja suficiente, cada dispositivo recebe seu canal
* Adicione mais Controladores ME de Sobrecarga para escalar o orçamento total de canais da rede

> **Importante**: o Cabo de Sobrecarga só entrega seu comportamento de capacidade ilimitada completo quando **ambas as pontas são dispositivos de Sobrecarga** (Cabo de Sobrecarga, Controlador ME de Sobrecarga, etc.). Se um Cabo de Sobrecarga for conectado diretamente a um dispositivo de AE2 vanilla, essa conexão ainda conta nos limites de canais do vanilla.

## Variantes de Cor

O Cabo de Sobrecarga tem 17 variantes de cor: a cor padrão de Fluix, mais as 16 cores de corantes do Minecraft:

Branco, Laranja, Magenta, Azul-Claro, Amarelo, Verde-Limão, Rosa, Cinza, Cinza-Claro, Ciano, Roxo, Azul, Marrom, Verde, Vermelho, Preto.

Cores diferentes de Cabo de Sobrecarga não se conectam entre si (mesma regra de coloração dos cabos de AE2 vanilla).

## Como Usar

O Cabo de Sobrecarga é usado da mesma forma que o Cabo Inteligente Denso vanilla — basta colocá-lo na lateral de um bloco para conectar à rede.

## Bons Lugares para Usá-lo

* Linhas troncais principais numa base grande, onde um único Cabo de Sobrecarga pode absorver a carga de canais de muitos cabos densos
* Redes de alta capacidade construídas em torno de Controladores ME de Sobrecarga
* Simplificar layouts de rede — você não precisa mais rotear especificamente em torno de gargalos de canais
