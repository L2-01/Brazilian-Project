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

- Lê insumos diretamente da rede ME
- Carrega um buffer interno de **200B AE** enquanto montado
- Consome combustível ao iniciar
- Consome refrigerante enquanto roda
- Gera calor continuamente durante a operação
- Exige uma escotilha de entrada de itens, uma de saída de itens, uma de saída de fluido e uma de entrada de energia AE

A **Escotilha de Entrada de Energia AE** é a única porta que carrega o buffer interno.
Alimente-a com um cabo de energia FE: ela consome apenas seu reservatório local, nunca
energia da grade AE2. Toda escotilha massiva conecta à AE2 apenas pela face indicada
pela sua orientação; as outras cinco faces são eletricamente isoladas, então escotilhas
vizinhas não podem criar uma conexão de grade invisível através do casco da estrutura.

## Tiers de Campo

Todas as **138 posições de gerador de campo** devem ser do mesmo tier:

- **MK1**
- **MK2**
- **MK3**

Tiers misturados invalidam a estrutura.

## Segurança e Sobrecarga

- **Modo Seguro** custa **2.5x** de AE, combustível e refrigerante, mas desliga em vez de explodir
- **Sobrecarga** dá **5x** de velocidade, **10x** de custo de AE e **5x** de uso de combustível, calor e refrigerante

Com o Modo Seguro desabilitado, o superaquecimento causa uma explosão de contenção local por padrão. Dano destrutivo a blocos fica desabilitado a menos que um administrador de servidor o habilite explicitamente; a onda habilitada permanece limitada por raio, orçamentos de CPU/blocos por tick, um limite total de blocos e uma lista de permissão de dimensões.

## Perfil de Calor

- Geração de calor base: **nível de refrigeração da receita + 1 HU/tick**.
- Geração de calor em Sobrecarga: **5x** o calor da receita por tick.
- Receitas mais fortes naturalmente rodam mais quentes, então o nível de refrigeração faz parte da carga térmica da máquina.

## Escala de Refrigerantes

- O controlador tenta consumir **100 mB/tick** de refrigerante enquanto roda.
- O **Modo Seguro** eleva isso para **250 mB/tick**.
- A **Sobrecarga** multiplica o consumo de refrigerante por **5x** sobre isso.
- **Criotêmio Gélido**: **1 de refrigeração por mB**.
- **Refrigerante Estável**: **4 de refrigeração por mB**.
- **Condensado de Bose-Einstein**: **16 de refrigeração por mB**.
- A refrigeração final é multiplicada pelo seu bônus de tier de campo, então geradores de campo melhores tornam o mesmo refrigerante mais forte.

Os valores **1/4/8** são configuráveis pelo servidor em `stellar.coolant`; zero desabilita aquele refrigerante para o Nexus Estelar. Os valores listados são os padrões usados pela progressão do UFO.

## Procedimento Seguro de Inicialização

1. Forme a estrutura com todos os 138 geradores de campo no mesmo tier.
2. Conecte cada escotilha massiva na sua face indicada.
3. Aguarde o buffer interno carregar e verifique a disponibilidade de combustível/refrigerante.
4. Mantenha o Modo Seguro habilitado no primeiro ciclo.
5. Inicie uma receita conhecida e observe temperatura, AE armazenado e saída pendente.
6. Habilite a Sobrecarga só depois que a refrigeração permanecer estável por um ciclo normal
   completo.

Se o armazenamento de saída encher, o resultado prometido permanece em buffer. Se a grade AE for
desconectada, o controlador pausa em vez de descartar a operação ativa.

## Escotilhas de suprimento dedicadas

Instale pelo menos uma **Escotilha de Fluido Massiva ME** e uma **Escotilha de Entrada de Energia AE** em qualquer posição de Carcaça de Singularidade. Escotilhas de entrada e saída de itens também são exigidas. A prévia mostra uma disposição de exemplo; as posições das escotilhas são intercambiáveis. Carcaças de núcleo, matrizes e geradores de campo mantêm seus próprios requisitos.

Forneça refrigerante à escotilha de fluido usando tubos ou um Barramento de Exportação ME configurado pelo jogador. A máquina consome apenas o refrigerante já presente naquele tanque; nunca procura refrigerante no armazenamento ME. O tanque comporta 16.000.000 mB de um refrigerante. Fluidos de receita e químicos permanecem separados.

A escotilha de energia aceita **apenas cabos FE** externos. O FE é convertido usando o ajuste de conversão do servidor AE2 e armazenado localmente (até 1.000.000.000 AE equivalente). Adicionar escotilhas não multiplica o limite de carga do controlador. A rede de receitas ainda precisa de energia própria para a automação de itens/fluidos.
