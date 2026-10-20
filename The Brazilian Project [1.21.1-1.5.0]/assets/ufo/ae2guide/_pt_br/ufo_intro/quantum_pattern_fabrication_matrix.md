---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Matriz de Fabricação de Padrões Quântica
  position: 56
item_ids:
  - ufo:quantum_pattern_fabrication_matrix_controller
---

# Matriz de Fabricação de Padrões Quântica

<BlockImage id="ufo:quantum_pattern_fabrication_matrix_controller" scale="4"></BlockImage>

A **Matriz de Fabricação de Padrões Quântica** é um repositório escalado por campo e um
montador virtual para padrões de fabricação AE2. Ela aceita **Padrões de Fabricação**, **Padrões
de Mesa de Ferraria** e **Padrões de Corte de Pedra**. Padrões de Processamento pertencem a
Buffers de Padrões e máquinas de processamento e são rejeitados pela Matriz. Seu
controlador detém o inventário de padrões e o Vínculo de Grade Quântico conecta esse
inventário a uma rede ME.

<GameScene zoom="1.8" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/quantum_pattern_fabrication_matrix.snbt" />
  <DiamondAnnotation pos="1.5 0.5 6.5" color="#b268ff">Controlador — frente da estrutura</DiamondAnnotation>
  <DiamondAnnotation pos="5.5 0.5 6.5" color="#58e6ff">Vínculo de Grade Quântico — lado do cabo</DiamondAnnotation>
  <IsometricCamera yaw="35" pitch="25" />
</GameScene>

## Estrutura exata

A área é **7 blocos de largura, 5 blocos de altura e 9 blocos de profundidade**. Ela exige:

- 1 Controlador da Matriz de Fabricação de Padrões Quântica
- 1 Vínculo de Grade Quântico
- 127 Carcaças Hiper Mecânicas Quânticas
- 44 Vidros Vibrantes de Quartzo
- 22 Geradores de Campo Estelar, em qualquer mistura de MK1, MK2 e MK3
- 16 Blocos de Quartzo
- 15 Blocos de Fluix

Coloque o controlador com sua face iluminada virada para o jogador. A estrutura é
construída atrás daquela face; o Vínculo de Grade fica no lado oposto. Agache e use o
controlador para prever o holograma, ou use **Construção Automática** no seu painel.

## Formada versus online

Esses são estados separados:

- **Estrutura completa** significa que toda posição estrutural exigida corresponde.
- **Rede ME online** exige adicionalmente um cabo AE2 na face externa do
  Vínculo de Grade Quântico, energia de rede e um canal disponível.

Uma estrutura completa permanece formada enquanto seu cabo ME está desconectado. Seu
painel reporta **ESTRUTURA COMPLETA • REDE ME OFFLINE** até o vínculo ficar
ativo. Use **Escanear Estrutura** para destacar uma divergência estrutural real.

## Capacidade escalada por campo

Cada Gerador de Campo instalado contribui independentemente:

| Gerador de Campo | Espaços por bloco | 22 Campos iguais |
| --- | ---: | ---: |
| MK1 | 256 | 5.632 |
| MK2 | 512 | 11.264 |
| MK3 | 1.024 | 22.528 |

Toda posição de Campo precisa usar o mesmo tier. Misturar Campos MK1, MK2 e MK3
invalida a estrutura e o scanner destaca o primeiro Campo divergente.

Rebaixar Campos nunca apaga padrões. Entradas existentes acima da nova capacidade
permanecem disponíveis para remoção, enquanto novas inserções esperam até capacidade suficiente ser
restaurada.

## Gerenciamento de padrões

O botão de grade de padrões logo abaixo do botão de prioridade abre a tela de
Gerenciamento de Padrões. Ela oferece:

- inserção e remoção de Padrões de Fabricação, de Mesa de Ferraria e de Corte de Pedra;
- transferência por shift-clique entre a biblioteca e o inventário do jogador;
- páginas do lado do servidor de 54 espaços com navegação por roda do mouse ou barra de rolagem;
- busca pelos nomes exibidos das entradas e saídas dos padrões na página carregada;
- renderização do item de saída enquanto o padrão codificado fica armazenado intacto.

Quando o Vínculo de Grade Quântico está online, a Matriz também é listada como um
provedor compacto no **Terminal de Acesso a Padrões** do AE2. Capacidade vazia não é transmitida como
dezenas de milhares de espaços reservados: o terminal recebe os padrões armazenados
mais uma posição gravável, impedindo que Matrizes de grande capacidade travem o
servidor.

O botão pode ser aberto mesmo quando a estrutura ou a rede ME está offline, o que
mantém possível a recuperação dos padrões armazenados.

## Envio automático

Depois de codificar com sucesso um Padrão de Fabricação, de Mesa de Ferraria ou de Corte de Pedra num
Terminal de Codificação de Padrões AE2 — ou num terminal Tianshu compatível — conectado à
mesma rede, o padrão codificado é movido para uma Matriz online automaticamente.
Padrões de Processamento permanecem no espaço de saída do terminal e não são enviados.

1. Matrizes online são ordenadas por **Prioridade de Padrão**, da maior para a menor.
2. Prioridades iguais usam uma ordem estável de posição.
3. Uma Matriz cheia é pulada e a próxima Matriz elegível é tentada.
4. Se nenhuma conseguir aceitar o padrão, ele permanece no espaço de saída do terminal.

O botão de prioridade usa o editor de prioridade nativo do AE2. A prioridade afeta a seleção
de envio automático; ela não muda o número de espaços.

## Controles do painel

- **Guia** abre esta página.
- **Escanear Estrutura** valida a orientação atual e destaca erros.
- **Construção Automática** coloca blocos estruturais faltantes sem substituir blocos ocupados.
- **Gerenciamento de Padrões** abre o repositório pesquisável.
- **Prioridade de Padrão** seleciona qual Matriz recebe os padrões codificados primeiro.

O painel de Campos do dashboard lista as contagens atuais de MK1/MK2/MK3 e a barra
da biblioteca mostra os espaços ocupados contra a capacidade calculada a partir daqueles Campos.

A Matriz executa fabricações idênticas em lotes e suporta até **16 / 32 / 64 lotes de receita pendentes** com Campos MK1 / MK2 / MK3. Ela pode devolver tantos lotes ao armazenamento ME por tique. O rendimento real depende das operações das CPUs de fabricação, dos ingredientes disponíveis, da energia da rede e do espaço de armazenamento de saída.
