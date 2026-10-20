---
navigation:
  parent: ufo_intro/machines.md
  title: Nexus Estelar
  position: 50
item_ids:
  - ufo:stellar_nexus_controller
---

# Nexus Estelar

<BlockImage id="ufo:stellar_nexus_controller" scale="4"></BlockImage>

O **Nexus Estelar** é o multibloco de simulação estelar de fim de jogo.

<SubPages />

## Mecânicas Centrais

- Lê entradas diretamente da rede ME
- Carrega um buffer interno de **200B AE** enquanto montado
- Consome combustível ao iniciar
- Consome refrigerante enquanto roda
- Gera calor continuamente durante a operação
- Exige uma escotilha de entrada de item, uma de saída de item, uma de saída de fluido e uma de entrada de energia FE

A **Escotilha de Entrada de Energia AE** é a única porta que carrega o buffer interno.
Alimente-a com um cabo de energia FE: ela consome apenas seu reservatório local, nunca a
energia da rede AE2. Toda escotilha massiva conecta ao AE2 apenas pela face indicada
pela sua orientação; as outras cinco faces são eletricamente isoladas, então escotilhas
vizinhas não conseguem criar uma conexão de rede invisível através da carcaça da estrutura.

## Tiers de Campo

Todas as **138 posições de gerador de campo** precisam ser do mesmo tier:

- **MK1**
- **MK2**
- **MK3**

Tiers misturados invalidam a estrutura.

## Segurança e Overclock

- O **Modo Seguro** custa **2,5x** AE, combustível e refrigerante, mas desliga em vez de explodir
- O **Overclock** dá **5x** de velocidade, **10x** de custo de AE e **5x** de uso de combustível, calor e refrigerante

Com o Modo Seguro desligado, o superaquecimento causa uma explosão de contenção local por padrão. Dano destrutivo a blocos fica desativado a menos que um administrador de servidor o ative explicitamente; a onda opt-in permanece limitada por raio, orçamentos de CPU/blocos por tique, um limite total de blocos e uma lista de permissão de dimensões.

## Perfil de Calor

- Geração de calor base: **nível de resfriamento da receita + 1 UC/tique**.
- Geração de calor com Overclock: **5x** o calor da receita por tique.
- Receitas mais fortes naturalmente rodam mais quentes, então o nível de resfriamento faz parte da carga térmica da máquina.

## Escala de Refrigerante

- O controlador tenta consumir **100 mB/tique** de refrigerante enquanto roda.
- O **Modo Seguro** sobe isso para **250 mB/tique**.
- O **Overclock** multiplica o consumo de refrigerante por **5x** em cima disso.
- **Criotêmio Gélido**: **1 de resfriamento por mB**.
- **Refrigerante Estável**: **4 de resfriamento por mB**.
- **Condensado de Bose-Einstein**: **16 de resfriamento por mB**.
- O resfriamento final é multiplicado pelo seu bônus de tier de campo, então geradores de campo melhores tornam o mesmo refrigerante mais forte.

Os valores **1/4/8** são configuráveis pelo servidor em `stellar.coolant`; zero desativa aquele refrigerante para o Nexus Estelar. Os valores listados são os padrões usados pela progressão do UFO.

## Procedimento Seguro de Inicialização

1. Forme a estrutura com todos os 138 geradores de campo no mesmo tier.
2. Conecte cada escotilha massiva na sua face indicada.
3. Espere o buffer interno carregar e verifique a disponibilidade de combustível/refrigerante.
4. Mantenha o Modo Seguro ligado no primeiro ciclo.
5. Inicie uma receita conhecida e observe temperatura, AE armazenada e saída pendente.
6. Ligue o Overclock só depois que o resfriamento permanecer estável por um ciclo normal
   completo.

Se o armazenamento de saída encher, o resultado prometido permanece em buffer. Se a rede AE for
desconectada, o controlador pausa em vez de descartar a operação ativa.

## Escotilhas de suprimento dedicadas

Instale pelo menos uma **Escotilha de Fluido Massiva ME** e uma **Escotilha de Entrada de Energia AE** em qualquer posição de Carcaça de Singularidade. Escotilhas de entrada e saída de item também são exigidas. A prévia mostra um exemplo de layout; as posições de escotilha são intercambiáveis. Carcaças de núcleo, matrizes e geradores de campo mantêm seus próprios requisitos.

Forneça refrigerante à escotilha de fluido usando tubos ou um Ponto de Exportação ME configurado pelo jogador. A máquina consome apenas refrigerante já naquele tanque; ela nunca procura refrigerante no armazenamento ME. O tanque comporta 16.000.000 mB de um refrigerante. Fluidos e químicos de receita permanecem separados.

A escotilha de energia aceita **apenas cabos de FE externos**. O FE é convertido usando a configuração de conversão do servidor AE2 e armazenado localmente (até 1.000.000.000 equivalente a AE). Adicionar escotilhas não multiplica o limite de carregamento do controlador. A rede de receitas ainda precisa de sua própria energia para a automação de itens/fluidos.
