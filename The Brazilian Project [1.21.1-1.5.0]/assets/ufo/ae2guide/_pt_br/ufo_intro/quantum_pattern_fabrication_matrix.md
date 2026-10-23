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

A **Matriz de Fabricação de Padrões Quântica** é um repositório escalado por campos e
montador virtual de padrões de fabricação AE2. Ela aceita **Padrões de Fabricação**, **Padrões de
Ferraria** e **Padrões de Corte de Pedra**. Padrões de Processamento pertencem a
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

A área ocupada é de **7 blocos de largura, 5 de altura e 9 de profundidade**. Ela exige:

- 1 Controlador da Matriz de Fabricação de Padrões Quântica
- 1 Vínculo de Grade Quântico
- 127 Carcaças Hiper Mecânicas Quânticas
- 44 Vidros Vibrantes de Quartzo
- 22 Geradores de Campo Estelar, em qualquer mistura de MK1, MK2 e MK3
- 16 Blocos de Quartzo
- 15 Blocos de Fluix

Coloque o controlador com a face iluminada voltada ao jogador. A estrutura é
construída atrás dessa face; o Vínculo de Grade fica no lado oposto. Use agachado no
controlador para pré-visualizar o holograma, ou use **Auto-construir** no seu painel.

## Formada versus online

São estados separados:

- **Estrutura completa** significa que toda posição estrutural exigida corresponde.
- **Grade ME online** exige adicionalmente um cabo AE2 na face externa do
  Vínculo de Grade Quântico, energia de rede e um canal disponível.

Uma estrutura completa permanece formada enquanto seu cabo ME está desconectado. Seu
painel reporta **STRUCTURE COMPLETE • ME GRID OFFLINE** até o vínculo ficar
ativo. Use **Escanear Estrutura** para destacar uma divergência estrutural real.

## Capacidade escalada por campos

Cada Gerador de Campo instalado contribui independentemente:

| Gerador de Campo | Slots por bloco | 22 Campos iguais |
| --- | ---: | ---: |
| MK1 | 256 | 5,632 |
| MK2 | 512 | 11,264 |
| MK3 | 1,024 | 22,528 |

Toda posição de Campo deve usar o mesmo tier. Misturar Campos MK1, MK2 e MK3
invalida a estrutura e o scanner destaca o primeiro Campo divergente.

Rebaixar Campos nunca deleta padrões. Entradas existentes acima da nova capacidade
permanecem disponíveis para remoção, enquanto novas inserções esperam até capacidade
suficiente ser restaurada.

## Gerenciamento de padrões

O botão de grade de padrões logo abaixo do botão de prioridade abre a tela de
Gerenciamento de Padrões. Ela fornece:

- inserção e remoção de Padrões de Fabricação, de Ferraria e de Corte de Pedra;
- transferência por shift-clique entre a biblioteca e o inventário do jogador;
- páginas de 54 slots no lado do servidor com navegação por roda do mouse ou barra de rolagem;
- busca pelos nomes exibidos dos insumos e saídas dos padrões na página carregada;
- renderização do item de saída enquanto o padrão codificado permanece armazenado intacto.

Quando o Vínculo de Grade Quântico está online, a Matriz também é listada como um
fornecedor compacto no **Terminal de Acesso a Padrões** da AE2. Capacidade vazia não é transmitida como
dezenas de milhares de slots vazios: o terminal recebe os padrões armazenados
mais uma posição gravável, evitando que Matrizes de grande capacidade travem o
servidor.

O botão pode ser aberto mesmo quando a estrutura ou a rede ME está offline, o que
mantém possível a recuperação dos padrões armazenados.

## Envio automático

Após codificar com sucesso um Padrão de Fabricação, de Ferraria ou de Corte de Pedra em
um Terminal de Codificação de Padrões AE2 — ou um terminal Tianshu compatível — conectado à
mesma grade, o padrão codificado é movido automaticamente para uma Matriz online.
Padrões de Processamento permanecem no slot de saída do terminal e não são enviados.

1. Matrizes online são ordenadas por **Prioridade de Padrões**, maior primeiro.
2. Prioridades iguais usam uma ordem de posição estável.
3. Uma Matriz cheia é pulada e a próxima Matriz elegível é tentada.
4. Se nenhuma puder aceitar o padrão, ele permanece no slot de saída do terminal.

O botão de prioridade usa o editor nativo de prioridade da AE2. A prioridade afeta a seleção do
envio automático; não muda o número de slots.

## Controles do painel

- **Guia** abre esta página.
- **Escanear Estrutura** valida a orientação atual e destaca erros.
- **Auto-construir** coloca blocos estruturais faltantes sem substituir blocos ocupados.
- **Gerenciamento de Padrões** abre o repositório pesquisável.
- **Prioridade de Padrões** seleciona qual Matriz recebe padrões codificados primeiro.

O painel de Campos do painel lista as contagens ao vivo de MK1/MK2/MK3 e a barra da biblioteca
mostra os slots ocupados contra a capacidade calculada a partir desses Campos.

A Matriz executa fabricações idênticas em lotes e suporta até **16 / 32 / 64 lotes de receita pendentes** com Campos MK1 / MK2 / MK3. Ela pode devolver essa quantidade de lotes ao armazenamento ME por tick. A vazão real depende das operações da CPU de fabricação, dos ingredientes disponíveis, da energia da rede e do espaço de armazenamento de saída.
