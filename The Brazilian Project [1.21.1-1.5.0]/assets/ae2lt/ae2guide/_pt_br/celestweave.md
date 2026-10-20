---
navigation:
  title: Celestweave
  icon: ae2lt:celestweave_core
  parent: devices-index.md
  position: 20
item_ids:
  - ae2lt:celestweave_oculus
  - ae2lt:celestweave_core
  - ae2lt:celestweave_conduit
  - ae2lt:celestweave_stride
  - ae2lt:energy_module_t1
  - ae2lt:energy_module_t2
  - ae2lt:energy_module_t3
  - ae2lt:railgun_module_core
  - ae2lt:module_night_vision
  - ae2lt:module_water_breathing
  - ae2lt:module_saturation
  - ae2lt:module_reach_extension
  - ae2lt:module_matrix_shield
  - ae2lt:module_phase_shield
  - ae2lt:module_reflect
  - ae2lt:module_overload_protection
  - ae2lt:module_multidimensional_protection
  - ae2lt:module_purification
  - ae2lt:module_radiation_protection
  - ae2lt:module_laser_protection
  - ae2lt:module_creative_flight
  - ae2lt:module_phase_flight
  - ae2lt:module_phase_lock
  - ae2lt:module_dash
  - ae2lt:module_dig_affinity
  - ae2lt:module_movement_assist
---

# Celestweave

<ItemGrid>
  <ItemIcon id="ae2lt:celestweave_oculus" />
  <ItemIcon id="ae2lt:celestweave_core" />
  <ItemIcon id="ae2lt:celestweave_conduit" />
  <ItemIcon id="ae2lt:celestweave_stride" />
</ItemGrid>

**Celestweave** é um conjunto de armadura modular. Cada peça tem seu próprio buffer de FE, vínculo de rede, espaço de núcleo e espaços de módulos.

| Peça | Espaço de Armadura |
|-------|------------|
| Óculo Celestweave | Capacete |
| Núcleo Celestweave | Peitoral |
| Conduto Celestweave | Calças |
| Passos Celestweave | Botas |

## Montagem

Use a <ItemLink id="ae2lt:overload_device_workbench" /> para cada peça:

1. Insira a peça de armadura; ela se vincula à rede ME da bancada
2. Instale um <ItemLink id="ae2lt:ultimate_overload_core" /> no espaço do núcleo
3. Instale um Módulo de Energia opcional e quaisquer módulos de armadura compatíveis
4. Equipe a armadura e abra o Hub de Dispositivos de Sobrecarga com a tecla padrão G para ativar, desativar ou configurar módulos

Cada peça de armadura aceita qualquer quantidade de módulos compatíveis, respeitando os limites por módulo e os grupos de exclusão mútua; apenas um Módulo de Energia pode ser instalado. Sem um Módulo de Energia, cada peça armazena 10.000.000 FE. Módulos T1 / T2 / T3 elevam a capacidade da armadura para 1.000.000.000 / 5.000.000.000 / 20.000.000.000 FE.

## Funcionamento

Um módulo só funciona enquanto sua peça de armadura estiver equipada, tiver um núcleo instalado e o módulo estiver ativado. Módulos ativos consomem FE das peças Celestweave vestidas e normalmente consomem Raios da rede ME vinculada.

Se FE ou os Raios necessários estiverem faltando, os efeitos afetados não podem ser mantidos.

## Módulos do Capacete

| Módulo | Efeito |
|--------|--------|
| Visão Noturna | Mantém Visão Noturna enquanto ativo |
| Respiração Aquática | Mantém Respiração Aquática enquanto ativo |
| Saturação | Restaura fome e saturação até o máximo, gastando Raios de Alta Tensão ao restaurar |

## Módulos do Peitoral

| Módulo | Efeito |
|--------|--------|
| Extensão de Alcance | Adiciona alcance de interação com blocos / entidades; configurável em 1x, 2x ou 4x |
| Escudo de Matriz | Cancela dano ambiental e apaga fogo, reduz dano comum em cerca de 80% e reduz dano severo em cerca de 50% |
| Escudo de Fase | Absorve até 1024 de dano por acerto a 20.000 FE e 2 EHV por ponto. Acertos cobertos são cancelados; o dano excedente passa. Não anula mecanismos nem apaga fogo |
| Reflexão | Reflete até 30% do dano do atacante, gastando FE e Raios de Alta Tensão |
| Proteção contra Sobrecarga | Aprimora o Escudo de Fase com blindagem ilimitada e proteção de último recurso, compartilhando um teto de custo de 20 GFE e 16.384 EHV por 20 tiques |
| Proteção Multidimensional | Blindagem ilimitada e proteção de último recurso; nenhum dos caminhos consome FE ou Raios |
| Purificação | Remove e bloqueia efeitos de status configurados; por padrão, apenas efeitos prejudiciais |
| Assimilação de Radiação | Impede nova exposição e dano por radiação; enquanto houver radiação ambiente, restaura 1-5 corações por segundo conforme a gravidade da radiação |
| Proteção contra Laser | Absorve lasers do Mekanism completamente e converte os Joules efetivamente absorvidos em FE usando a taxa de conversão configurada do Mekanism, preenchendo o peitoral e depois o restante do conjunto equipado |
| Trava de Fase | Oferece quatro recursos alternáveis independentemente: Trava de Armadura, Trava de Voo, Bloqueio de Forças Externas e Bloqueio de Teletransportes Externos; veja abaixo |
| Módulo do Núcleo de Sobrecarga | Desbloqueia a compensação de Raios para o conjunto de armadura. Raios de Altíssima Tensão existentes são consumidos primeiro, e qualquer déficit é pago a 16 Raios de Alta Tensão por Raio de Altíssima Tensão |

Escudo de Matriz, Escudo de Fase, Proteção contra Sobrecarga e Proteção Multidimensional compartilham um único grupo de instalação exclusivo. A Proteção contra Sobrecarga é fabricada a partir do Escudo de Fase; sua conversão por Pigmee produz a Proteção Multidimensional.

Módulos Undying legados são convertidos em Proteção contra Sobrecarga, preservando alternâncias, opções e o estado do combo de último recurso. Se um peitoral legado também contiver Escudo de Fase ou de Matriz, a proteção aprimorada absorve esses níveis inferiores instalados. Itens de escudo soltos em inventários não são afetados.

### Trava de Fase

O Módulo de Trava de Fase usa o peitoral como controlador e expõe quatro recursos alternáveis independentemente no Hub de Dispositivos:

* **Trava de Armadura:** Move o conjunto Celestweave atualmente vestido para quatro espaços privados de fase vinculados ao jogador; cada espaço de armadura exibe uma Projeção com Trava de Fase para indicar que a armadura correspondente está segura no armazenamento de fase privado. A armadura real continua funcionando dentro dos espaços privados, e novas peças Celestweave vestidas entram na trava automaticamente. Projeções não têm brilho de encantamento e não podem ser extraídas ou negociadas; substituir ou remover uma projeção custa 1.000.000 FE e 16 Raios de Altíssima Tensão para reconstruí-la no lugar, e um pagamento falho libera a trava e reequipa todo o conjunto real.
`Pense nisso como um vínculo de alma.`
* **Trava de Voo:** Congela o estado de voo atual, mantém o voo ativo após pousar e rejeita mudanças externas de estado. Ela reconhece módulos ativos de Voo Criativo/de Fase, voo de modo de jogo e o atributo `CREATIVE_FLIGHT` do NeoForge, mas nunca concede voo por conta própria.
* **Bloqueio de Forças Externas:** Bloqueia mudanças de velocidade vindas de água, ventiladores, repulsão e sistemas externos semelhantes, enquanto a entrada do jogador e o movimento gerado pela armadura continuam funcionando.
`Por exemplo: ignora o empurrão e a sucção do Ventilador Encaixotado do Create.`
* **Bloqueio de Teletransportes Externos:** Bloqueia reescritas externas de coordenadas, teletransportes e mudanças de dimensão, enquanto o movimento normal do jogador não é afetado.
`Por exemplo: ignora o teletransporte forçado do Guardião do Caos do Draconic Evolution.`

## Módulos das Calças

| Módulo | Efeito |
|--------|--------|
| Voo Criativo | Fornece pairar e planar com asas; velocidade e inércia são configuráveis |
| Voo de Fase | Fornece pairar e planar com asas de fase; o Modo de Fase oferece Desligado, Apenas Voo Criativo ou Criativo + Élitros |

Voo Criativo e Voo de Fase compartilham o mesmo grupo de instalação, então apenas um pode ser instalado nas calças. O Voo de Fase fica desativado por padrão após a instalação e precisa ser ativado no Hub de Dispositivos.

Ambos os módulos de voo compartilham controles no estilo vanilla: toque em Pular no ar para abrir as asas, ou toque duas vezes em Pular para alternar o pairar. Segure Pular enquanto plana para impulsionar na direção do olhar. Ao pairar, Pular sobe e Agachar desce; segurar ambos cancela a entrada vertical e expõe um estado agachado para outros mods. Agachar-se enquanto paira usa a velocidade de agachamento no solo (incluindo atributos de agachamento e multiplicadores de agachamento da Assistência de Movimento), desativa temporariamente a inércia e para imediatamente quando a entrada direcional é solta. Sair do agachamento restaura a velocidade de voo e a inércia configuradas. Apenas o Voo de Fase expõe o Modo de Fase: **Desligado** desativa a travessia de fase sem desativar o voo, **Apenas Voo Criativo** aplica fase ao pairar mas mantém colisão normal ao planar, e **Criativo + Élitros** aplica fase tanto ao pairar quanto ao planar. A Trava de Voo é controlada centralmente pelo Módulo de Trava de Fase do peitoral.

## Módulos das Botas

| Módulo | Efeito |
|--------|--------|
| Arrancada | Pressione a tecla de Arrancada, padrão V, para avançar rapidamente; recarga de 40 tiques |
| Afinidade de Mineração | Compensa as penalidades de mineração subaquática e no ar |
| Assistência de Movimento | Ajusta separadamente a velocidade de andar, correr e agachar (0,5x-4x), além da altura de passo automática (0,6-3 blocos) |

## Notas de Custo

A maioria dos módulos ativos consome 1 Raio de Alta Tensão por tique, além do consumo de FE. Voo Criativo e Voo de Fase usam mais Raios de Alta Tensão enquanto em movimento; a travessia em Modo de Fase ativo usa Raios de Altíssima Tensão. Os custos de Escudo de Matriz e Purificação aumentam em disparos repetidos. Os escudos de Fase e de Sobrecarga pagam apenas os aumentos até o maior acerto numa janela fixa de 20 tiques. A Fase custa no máximo 20.480.000 FE e 2.048 EHV por janela. A blindagem de sobrecarga ainda custa 20.000 FE e 2 EHV por dano, pagando apenas os aumentos até o maior acerto numa janela fixa de 20 tiques. As taxas de dano sempre param em 2 GFE e 1.024 EHV e nunca avançam o combo de morte. Apenas mortes elevam o nível: a morte n na janela custa até min(2n GFE, 20 GFE) e min(1024n EHV, 16.384 EHV), cobrados no teto daquele nível. Blindagem e último recurso compartilham o crédito pago e só pagam diferenças: um teto de dano totalmente pago cobre a primeira morte de graça, enquanto a segunda morte completa até 4 GFE e 2.048 EHV. Níveis de morte mais altos nunca elevam o teto de dano. Retornos de chamada repetidos para um mesmo ataque e reentrada no mesmo tique por ganchos de morte forçada não cobram duas vezes. O FE atinge seu teto no nível de morte 10 e o EHV no nível 16; a proteção continua sem custos adicionais de disparo depois que ambos os tetos são pagos. Disparos não estendem a janela; o crédito pago e o combo de morte reiniciam após 20 tiques. Instalar um Módulo do Núcleo de Sobrecarga no peitoral permite que todo o conjunto compense Raios de Altíssima Tensão faltantes a 16 Raios de Alta Tensão por Raio de Altíssima Tensão.
