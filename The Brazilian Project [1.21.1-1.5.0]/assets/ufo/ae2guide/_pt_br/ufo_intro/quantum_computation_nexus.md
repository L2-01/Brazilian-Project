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

O **Nexus de Computação Quântica** combina todos os blocos de Armazenamento de Fabricação e
Coprocessador UFO na sua cavidade em um único pool de computação AE2 compartilhado.

<GameScene zoom="1.45" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/quantum_computation_nexus.snbt" />
  <DiamondAnnotation pos="8.5 2.5 7.5" color="#80c6ff">Controlador do Nexus de Computação Quântica</DiamondAnnotation>
  <DiamondAnnotation pos="8.5 2.5 11.5" color="#58e6ff">Vínculo de Grade Quântico</DiamondAnnotation>
  <IsometricCamera yaw="35" pitch="25" />
</GameScene>

## Construção

Construa o casco mostrado acima e instale os módulos de fabricação desejados no
espaço interno de módulos. Pelo menos um Armazenamento de Fabricação UFO é exigido para que a CPU
fique disponível ao serviço de fabricação ME. Coprocessadores adicionam pistas de fabricação.

O espaço válido de módulos é a cavidade totalmente fechada atrás do vidro. Blocos
fora do casco nunca são contados. Módulos reconhecidos permanecem fisicamente presentes,
visíveis e mantêm seu conteúdo enquanto o Nexus detém sua capacidade de computação.

Conecte o **Vínculo de Grade Quântico** a uma rede ME energizada pela sua face
externa. O Vínculo consome um canal e publica o pool nessa grade; os módulos
internos nunca viram CPUs individuais e o controlador não aceita cabos ME.

## Requisitos

- Um **Controlador do Nexus de Computação Quântica**
- Um **Vínculo de Grade Quântico** na posição de carcaça marcada
- Pelo menos um módulo de **Armazenamento de Fabricação** UFO
- Qualquer número de módulos de **Coprocessador** UFO suportados e armazenamento adicional
- Um canal ME livre e pelo menos **32 AE/t** para o Vínculo de Grade

Apenas a face externa do Vínculo de Grade aceita cabo. Seu indicador aponta para
o lado do cabo. Se o Vínculo disser `unlinked`, verifique o casco; se disser `offline`,
a estrutura é válida mas a rede ME conectada não tem energia/canal utilizável.

## Como Funciona

Quando ocioso, o Nexus aparece no Terminal de Fabricação como **uma CPU** contendo
toda a capacidade livre no momento. Iniciar um trabalho reserva apenas os bytes
exigidos por aquele plano e cria uma CPU virtual temporária. Todos os bytes restantes ficam disponíveis
para trabalhos simultâneos. Os Coprocessadores são um único orçamento de despacho compartilhado, dividido
igualmente entre os trabalhos ativos em vez de duplicado para cada trabalho.

A fabricação do Nexus não consome a energia armazenada da rede por padrão: os trabalhos
só precisam do Vínculo de Grade energizado. Operadores de servidor podem restaurar o custo
de energia por padrão nativo da AE2 e a limitação por buffer baixo em `config/ufo/server.toml`.

### Modo de computação infinita

Instalar pelo menos **25 Armazenamentos de Fabricação da Linha Cósmica** (o tier de 1 TiB) e
**25 Coprocessadores da Linha Cósmica** (65.536 pistas cada) ativa o modo de computação
infinita do Nexus. Tanto o
Armazenamento de Fabricação quanto os Coprocessadores passam a ser anunciados como **infinitos** à AE2.
O controlador exibe `∞`, enquanto suas tooltips continuam reportando a capacidade
física instalada na cavidade.

Ambos os requisitos devem ser atendidos com os módulos de tier mais alto. Módulos de tier mais baixo
ainda somam sua capacidade finita normal, mas não contam para este desbloqueio.

Depois que um trabalho termina e seus itens retidos voltam à rede, sua CPU
virtual desaparece e sua reserva retorna ao pool ocioso. O controlador
reporta totais físicos e trabalhos ativos, nunca dezenas de entradas de CPU físicas.

Quebrar o casco, o controlador ou o Vínculo de Grade desanexa a CPU com segurança. O conteúdo
dos módulos não é convertido em um inventário separado: os blocos originais permanecem
no lugar.

## Controlador

A tela do controlador reporta separadamente o status de estrutura, grade e CPU. Também
mostra o armazenamento total exato, as pistas paralelas e o número de módulos reconhecidos.
No modo infinito as métricas principais viram `∞`; passe o cursor sobre elas para inspecionar seus totais físicos.

- **Abrir Guia** retorna a esta página.
- **Escanear estrutura do multibloco** reporta e destaca blocos faltantes.
- **Construir estrutura automaticamente** coloca blocos de casco faltantes quando o jogador tem os
  materiais exigidos. Nunca substitui posições ocupadas.
- **Prioridade de CPU** abre o editor nativo de prioridade da AE2. Pools de Nexus de
  prioridade mais alta são preferidos quando a AE2 escolhe uma CPU de fabricação automaticamente.

O estado do trabalho virtual e sua reserva exata são persistidos para que a fabricação ativa possa
ser reconstruída após o mundo ser recarregado.

## Solução de Problemas

- **Estrutura offline:** use **Escanear estrutura do multibloco** e repare a posição destacada.
- **Grade offline:** conecte um cabo AE2 energizado ao indicador do Vínculo de Grade e forneça um canal.
- **CPU offline:** instale pelo menos um módulo de Armazenamento de Fabricação suportado na cavidade fechada.
- **Módulo não contado:** confirme que ele está dentro da cavidade fechada de vidro, não apenas dentro dos limites da prévia.
