---
navigation:
  title: Começando
  icon: ufo:dimensional_matter_assembler
  parent: ufo_intro/index.md
  position: 10
---

# Começando

Este tutorial leva você de uma rede AE2 existente até a primeira linha de
produção UFO automatizada.

## Pré-requisitos

Prepare uma rede ME estável com armazenamento, CPUs de fabricação, suporte a
padrões de processamento e geração de AE suficiente para receitas de fim de jogo.
Instale o JEI: as categorias de receita do UFO são a visão oficial de entradas,
fluidos, saídas, tempo, energia e tier de máquina exigido.

Mantenha um <ItemLink id="ufo:structure_scanner" /> por perto. Clicar com o
botão direito num controlador suportado valida sua estrutura e destaca posições
incorretas. No modo Criativo, Shift + Botão Direito pode construir a carcaça
aprovada automaticamente usando blocos do inventário do jogador.

## Passo 1: Construa e Energize o DMA

Fabrique um <ItemLink id="ufo:dimensional_matter_assembler" />, conecte-o ao AE2
e abra sua interface.

1. Ponha os ingredientes de item sem formato nos nove espaços de entrada.
2. Ponha o fluido da receita no tanque de fluido-base apenas quando o JEI listar um.
3. Ponha refrigerante no tanque de refrigerante dedicado.
4. Forneça AE suficiente para a receita completa.
5. Adicione catalisadores só depois que a receita básica funcionar de forma confiável.

Os dois tanques têm donos diferentes: o fluido da receita é consumido como
ingrediente; o refrigerante é consumido apenas para remover calor. Veja
[DMA](dma.md) e [Catalisadores](catalysts.md).

## Passo 2: Estabeleça a Cadeia de Matéria Estelar

Use o JEI para progredir pelos materiais de Anã Branca, Estrela de Nêutrons e
Pulsar. Eles alimentam matrizes de componentes, células de armazenamento grandes,
carcaças e controladores. Não copie custos fixos de capturas de tela: um modpack
pode substituir receitas.

## Passo 3: Construa um Multibloco Universal

Escolha a máquina para o trabalho:

- <ItemLink id="ufo:quantum_matter_fabricator_controller" /> para trabalho em
  massa nativo do QMF e compatível com DMA.
- <ItemLink id="ufo:quantum_slicer_controller" /> para componentes impressos.
- <ItemLink id="ufo:quantum_processor_assembler_controller" /> para processadores
  concluídos.
- <ItemLink id="ufo:quantum_cryoforge_controller" /> para produção de refrigerante.

Abra a página de uso do controlador no JEI para inspecionar sua estrutura. Use
Alternativas para escolher escotilhas ou geradores de campo válidos, depois use o
padrão de construção rápida do visualizador ou o Scanner de Estrutura no Criativo
quando apropriado.

## Passo 4: Conecte a Automação

1. Coloque cada escotilha exigida numa posição de estrutura válida.
2. Conecte a face indicada das escotilhas AE à mesma rede ME energizada.
3. Insira padrões de processamento codificados no Buffer de Padrões Quântico. Use
   um Proxy de Padrões vinculado em cada multibloco de processamento adicional.
4. Garanta que existam entradas e capacidade de saída no armazenamento ME.
5. Envie um trabalho primeiro, depois escale até o limite de 27 threads do
   controlador.

O modo normal suporta até **27 trabalhos**. O Modo Seguro limita a execução a
**9 trabalhos** e impede operação térmica insegura. Cada thread pode ser pausada
e retomada sem descartar seus buffers persistentes.

## Passo 5: Suba o Tier

O menor tier válido de gerador de campo determina o tier da máquina universal.
MK2 e MK3 desbloqueiam suas próprias receitas e melhoram o processamento de tier
inferior. O Nexus Estelar é mais rígido: os quatro geradores de campo precisam
ser iguais.

## Passo 6: Prepare o Nexus Estelar

Antes de iniciar uma simulação, verifique tudo o seguinte:

- a estrutura está formada e cada escotilha massiva exigida está conectada na sua
  face indicada;
- o buffer interno de AE está carregado;
- as entradas da receita, o combustível e o refrigerante estão disponíveis;
- o armazenamento de saída tem espaço suficiente;
- o Modo Seguro e o Overclock combinam com a capacidade de refrigeração da
  instalação.

Veja [Nexus Estelar](stellar_nexus.md) antes de desligar o Modo Seguro.
