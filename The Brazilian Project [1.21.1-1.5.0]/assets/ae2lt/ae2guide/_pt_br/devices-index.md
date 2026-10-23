---
navigation:
  title: Dispositivos de Sobrecarga
  icon: ae2lt:overload_device_workbench
  parent: index.md
  position: 50
item_ids:
  - ae2lt:overload_device_workbench
  - ae2lt:electromagnetic_railgun
  - ae2lt:celestweave_oculus
  - ae2lt:celestweave_core
  - ae2lt:celestweave_conduit
  - ae2lt:celestweave_stride
---

# Dispositivos de Sobrecarga

Dispositivos de sobrecarga são equipamentos de ponta montados na <ItemLink id="ae2lt:overload_device_workbench" />. Eles usam buffers de FE locais, uma rede ME vinculada e módulos específicos de cada dispositivo.

## Dispositivos Disponíveis

* [Canhão Elétrico Eletromagnético](electromagnetic-railgun.md) — uma arma de longo alcance com fogo de feixe, disparos carregados, arcos em cadeia e módulos táticos
* [Celestweave](celestweave.md) — um conjunto de armadura modular para efeitos de movimento, defesa e utilidade

## Montagem

1. Coloque a Bancada de Trabalho de Dispositivo de Sobrecarga numa rede ME
2. Insira um dispositivo de sobrecarga; a bancada o vincula a essa rede automaticamente
3. Instale um <ItemLink id="ae2lt:ultimate_overload_core" /> no slot de núcleo
4. Coloque um módulo compatível no slot de entrada de módulos; um módulo é instalado após cerca de 20 ticks
5. Abra o Hub de Dispositivo de Sobrecarga com a tecla configurada, padrão G, para trocar módulos e ajustes

## Energia e Rede

Cada dispositivo tem seu próprio buffer de FE e pode receber FE diretamente. Se houver armazenamento de FE do Applied Flux disponível na rede ME vinculada, os dispositivos também podem se recarregar por essa rede.

Módulos de combate e de armadura podem consumir **Raio de Alta Tensão** ou **Raio de Altíssima Tensão** da mesma rede vinculada. Mantenha Raios suficientes armazenados antes de depender de módulos ativos.
