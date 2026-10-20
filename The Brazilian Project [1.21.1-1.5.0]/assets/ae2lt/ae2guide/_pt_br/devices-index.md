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

Dispositivos de sobrecarga são equipamentos de ponta montados na <ItemLink id="ae2lt:overload_device_workbench" />. Eles usam buffers locais de FE, uma rede ME vinculada e módulos específicos de cada dispositivo.

## Dispositivos Disponíveis

* [Canhão Elétrico Eletromagnético](electromagnetic-railgun.md) — uma arma de longo alcance com fogo de feixe, tiros carregados, arcos em cadeia e módulos táticos
* [Celestweave](celestweave.md) — um conjunto de armadura modular para movimento, defesa e efeitos utilitários

## Montagem

1. Coloque a Bancada de Trabalho de Dispositivo de Sobrecarga numa rede ME
2. Insira um dispositivo de sobrecarga; a bancada o vincula automaticamente àquela rede
3. Instale um <ItemLink id="ae2lt:ultimate_overload_core" /> no espaço do núcleo
4. Coloque um módulo compatível no espaço de entrada de módulos; um módulo é instalado após cerca de 20 tiques
5. Abra o Hub de Dispositivos de Sobrecarga com a tecla configurada, padrão G, para alternar módulos e configurações

## Energia e Rede

Cada dispositivo tem seu próprio buffer de FE e pode receber FE diretamente. Se houver armazenamento de FE do Applied Flux disponível na rede ME vinculada, os dispositivos também podem se reabastecer a partir dessa rede.

Módulos de combate e de armadura podem consumir **Raios de Alta Tensão** ou **Raios de Altíssima Tensão** da mesma rede vinculada. Mantenha Raios suficientes armazenados antes de depender de módulos ativos.
