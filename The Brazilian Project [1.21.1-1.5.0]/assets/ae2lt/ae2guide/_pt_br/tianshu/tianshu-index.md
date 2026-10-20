---
navigation:
  title: Vetor de Supercomputação Tianshu
  icon: ae2lt:tianshu_supercomputer_controller
  parent: index.md
  position: 46
---

# Vetor de Supercomputação Tianshu

O **Vetor de Supercomputação Tianshu** é uma grande CPU de fabricação multibloco para redes ME. Ele combina todo o armazenamento de fabricação num pool compartilhado e, enquanto houver capacidade disponível, pode aceitar vários trabalhos de fabricação ao mesmo tempo. É destinado a redes de automação com altas contagens de trabalhos e alta taxa de despacho de padrões.

O supercomputador calcula planos, retém o estado dos trabalhos e agenda etapas de fabricação. Os padrões ainda vêm de Fornecedores de Padrões ME ou dispositivos equivalentes, enquanto a rede ME e as máquinas de processamento continuam fornecendo materiais e produzindo resultados.

<SubPages />

## Fluxo Básico

1. [Construa a estrutura 7×7×7](construction.md), instale um Núcleo Principal Tianshu e 26 Unidades Periféricas na câmara do núcleo, e substitua posições de resfriamento da carcaça por armazenamento de circuito fechado conforme necessário
2. Conecte a Porta do Vetor de Supercomputação Tianshu a uma rede ME energizada
3. Use o controlador para verificar o status da estrutura, o armazenamento de fabricação, os despachos bem-sucedidos e o orçamento de cópias, depois configure o [Planejamento Rápido](operation.md#fast-planning) se necessário
4. Inicie um trabalho de fabricação num terminal ME; permita a seleção automática de CPU ou selecione o Vetor de Supercomputação Tianshu na tela de confirmação
5. Use o [Terminal de Codificação de Padrões Tianshu](../terminals/pattern-encoding-terminal.md) para codificação aprimorada de padrões, upload de padrões, padrões de circuito fechado e manutenção de inventário

## Requisitos de Operação

* A estrutura deve estar totalmente formada: um Núcleo Principal Tianshu no centro da câmara do núcleo, as 26 células restantes preenchidas com uma combinação de Unidades Periféricas permitida por aquele Núcleo Principal, e todas as 17 posições compatíveis com resfriamento fora da porta preenchidas com Unidades de Resfriamento do Vetor de Supercomputação Tianshu ou armazenamento de circuito fechado; veja [Estrutura e Construção Automática](construction.md) e [Núcleos Principais, Unidades de Computação e Desempenho](computing-units.md) para as regras completas
* Exatamente uma Porta do Vetor de Supercomputação Tianshu é obrigatória, conectada a uma rede ME energizada; o multibloco formado consome **1 canal**. O consumo em repouso da Porta depende do Núcleo Principal: Básico **256 AE/t**, Quântico **8.192 AE/t**, Sobrecarga **262.144 AE/t** e Multidimensional **8 AE/t**

A estrutura não requer FE externo nem Raios.
