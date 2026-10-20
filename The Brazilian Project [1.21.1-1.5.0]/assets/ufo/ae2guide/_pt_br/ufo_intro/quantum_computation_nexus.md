---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Nexus de Computação Quântica
  position: 55
item_ids:
  - ufo:quantum_computation_nexus_controller
  - ufo:quantum_grid_link
---

# Nexus de Computação Quântica

<BlockImage id="ufo:quantum_computation_nexus_controller" scale="4"></BlockImage>

O **Nexus de Computação Quântica** combina todos os blocos de Armazenamento de
Fabricação e de Coprocessador UFO da sua cavidade num único pool de computação AE2 compartilhado.

<GameScene zoom="1.45" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/quantum_computation_nexus.snbt" />
  <DiamondAnnotation pos="8.5 2.5 7.5" color="#80c6ff">Controlador do Nexus de Computação Quântica</DiamondAnnotation>
  <DiamondAnnotation pos="8.5 2.5 11.5" color="#58e6ff">Vínculo de Grade Quântico</DiamondAnnotation>
  <IsometricCamera yaw="35" pitch="25" />
</GameScene>

## Construção

Construa a carcaça mostrada acima e instale os módulos de fabricação desejados no
espaço interno de módulos. Pelo menos um Armazenamento de Fabricação UFO é exigido para a CPU
ficar disponível ao serviço de fabricação da ME. Coprocessadores adicionam canais de fabricação.

O espaço de módulos válido é a cavidade completamente fechada atrás do vidro. Blocos
fora da carcaça nunca são contados. Os módulos reconhecidos permanecem fisicamente presentes,
visíveis e mantêm seu conteúdo enquanto o Nexus detém sua capacidade de computação.

Conecte o **Vínculo de Grade Quântico** a uma rede ME energizada pela sua face
externa. O Vínculo consome um canal e publica o pool naquela rede; os módulos
internos nunca viram CPUs individuais e o controlador não aceita cabos ME.

## Requisitos

- Um **Controlador do Nexus de Computação Quântica**
- Um **Vínculo de Grade Quântico** na posição de carcaça marcada
- Pelo menos um módulo de **Armazenamento de Fabricação** UFO
- Qualquer número de módulos de **Coprocessador** UFO suportados e armazenamento adicional
- Um canal ME livre e pelo menos **32 AE/t** para o Vínculo de Grade

Apenas a face externa do Vínculo de Grade aceita cabo. Seu overlay aponta para
o lado do cabo. Se o Vínculo diz `unlinked`, verifique a carcaça; se diz `offline`,
a estrutura é válida mas a rede ME conectada não tem energia/canal utilizável.

## Como Funciona

Quando ocioso, o Nexus aparece no Terminal de Fabricação como **uma CPU** contendo
toda a capacidade atualmente livre. Iniciar um trabalho reserva apenas os bytes exigidos
daquele plano e cria uma CPU virtual temporária. Todos os bytes restantes ficam disponíveis
para trabalhos simultâneos. Os Coprocessadores são um orçamento de despacho compartilhado, dividido
igualmente entre os trabalhos ativos em vez de duplicado para cada trabalho.

A fabricação do Nexus não consome a energia armazenada da rede por padrão: os trabalhos
só precisam do Vínculo de Grade energizado. Operadores de servidor podem restaurar o custo
de energia por padrão nativo do AE2 e a limitação por buffer baixo em `config/ufo/server.toml`.

### Modo de computação infinita

Instalar pelo menos **25 Armazenamentos de Fabricação da Linha Cósmica** (o tier de 1 TiB) e
**25 Coprocessadores da Linha Cósmica** (65.536 canais cada) ativa o modo de computação
infinita do Nexus. Tanto o Armazenamento de
Fabricação quanto os Coprocessadores passam a ser anunciados como **infinitos** ao AE2.
O controlador exibe `∞`, enquanto seus tooltips continuam reportando a capacidade
física instalada na cavidade.

Ambos os requisitos precisam ser cumpridos usando os módulos de tier mais alto. Módulos
de tier inferior ainda adicionam sua capacidade finita normal mas não contam para este desbloqueio.

Depois que um trabalho termina e seus itens retidos voltaram à rede, sua CPU
virtual desaparece e sua reserva retorna ao pool ocioso. O controlador
reporta totais físicos e trabalhos ativos, nunca dezenas de entradas de CPU físicas.

Quebrar a carcaça, o controlador ou o Vínculo de Grade desanexa a CPU com segurança. O conteúdo
dos módulos armazenado não é convertido num inventário separado: os blocos originais permanecem
no lugar.

## Controlador

A tela do controlador reporta o status da estrutura, da rede e da CPU separadamente. Ela também
mostra o armazenamento total exato, os canais paralelos e o número de módulos reconhecidos.
No modo infinito as métricas principais viram `∞`; passe o mouse sobre elas para inspecionar seus totais físicos.

- **Abrir Guia** volta a esta página.
- **Escanear Estrutura do Multibloco** reporta e destaca blocos faltantes.
- **Construir Estrutura Automaticamente** coloca blocos de carcaça faltantes quando o jogador tem os
  materiais exigidos. Nunca substitui posições ocupadas.
- **Prioridade da CPU** abre o editor de prioridade nativo do AE2. Pools de Nexus
  de prioridade mais alta são preferidos quando o AE2 escolhe uma CPU de fabricação automaticamente.

O estado do trabalho virtual e sua reserva exata são persistidos para que a fabricação ativa
seja reconstruída depois que o mundo for recarregado.

## Solução de Problemas

- **Estrutura offline:** use **Escanear Estrutura do Multibloco** e repare a posição destacada.
- **Rede offline:** conecte um cabo AE2 energizado ao overlay do Vínculo de Grade e forneça um canal.
- **CPU offline:** instale pelo menos um módulo de Armazenamento de Fabricação suportado na cavidade fechada.
- **Módulo não contado:** confirme que ele está dentro da cavidade fechada por vidro, não apenas dentro dos limites da prévia.
