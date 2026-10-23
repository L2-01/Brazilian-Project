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

**Celestweave** é um conjunto de armadura modular. Cada peça tem seu próprio buffer de FE, vínculo de rede, slot de núcleo e slots de módulos.

| Peça | Slot de Armadura |
|-------|------------|
| Óculo Celestweave | Capacete |
| Núcleo Celestweave | Peitoral |
| Conduto Celestweave | Calças |
| Passos Celestweave | Botas |

## Montagem

Use a <ItemLink id="ae2lt:overload_device_workbench" /> para cada peça:

1. Insira a peça de armadura; ela se vincula à rede ME da bancada
2. Instale um <ItemLink id="ae2lt:ultimate_overload_core" /> no slot de núcleo
3. Instale um Módulo de Energia opcional e quaisquer módulos de armadura compatíveis
4. Equipe a armadura e abra o Hub de Dispositivo de Sobrecarga com a tecla padrão G para habilitar, desabilitar ou configurar módulos

Cada peça de armadura aceita qualquer quantidade de módulos compatíveis, embora limites por módulo e grupos de exclusão mútua ainda se apliquem; apenas um Módulo de Energia pode ser instalado. Sem um Módulo de Energia, cada peça armazena 10.000.000 FE. Módulos T1 / T2 / T3 elevam a capacidade da armadura para 1.000.000.000 / 5.000.000.000 / 20.000.000.000 FE.

## Execução

Um módulo só funciona enquanto sua peça de armadura está equipada, tem um núcleo instalado e o módulo está habilitado. Módulos ativos consomem FE das peças Celestweave vestidas e geralmente consomem Raios da rede ME vinculada.

Se FE ou os Raios exigidos faltarem, os efeitos afetados não podem ser mantidos.

## Módulos do Capacete

| Módulo | Efeito |
|--------|--------|
| Visão Noturna | Mantém Visão Noturna enquanto ativa |
| Respiração Aquática | Mantém Respiração Aquática enquanto ativa |
| Saturação | Restaura comida e saturação até o máximo, gastando Raio de Alta Tensão ao restaurar |

## Módulos do Peitoral

| Módulo | Efeito |
|--------|--------|
| Extensão de Alcance | Adiciona alcance de interação com blocos / entidades; configurável em 1x, 2x ou 4x |
| Escudo de Matriz | Cancela dano ambiental e apaga fogo, reduz dano comum em cerca de 80% e reduz dano pesado em cerca de 50% |
| Escudo de Fase | Absorve até 1024 de dano por golpe a 20.000 FE e 2 EHV por ponto. Golpes cobertos são cancelados; o dano excedente passa. Não anula mecanismos nem apaga fogo |
| Reflexão | Reflete até 30% do dano do atacante, gastando FE e Raio de Alta Tensão |
| Proteção contra Sobrecarga | Melhora o Escudo de Fase com blindagem ilimitada e proteção de último recurso, dividindo um teto de custo de 20 GFE e 16.384 EHV por 20 ticks |
| Proteção Multidimensional | Blindagem ilimitada e proteção de último recurso; nenhum caminho consome FE nem Raios |
| Purificação | Remove e bloqueia efeitos de status configurados; por padrão, apenas efeitos nocivos |
| Assimilação de Radiação | Impede nova exposição e dano de radiação; enquanto houver radiação ambiente, restaura 1-5 corações por segundo conforme a gravidade da radiação |
| Proteção contra Laser | Absorve lasers do Mekanism completamente e converte os Joules realmente absorvidos em FE usando a taxa de conversão configurada do Mekanism, enchendo o peitoral e depois o resto do conjunto equipado |
| Trava de Fase | Fornece quatro recursos alternáveis independentemente: Trava de Armadura, Trava de Voo, Bloquear Forças Externas e Bloquear Teleportes Externos; veja abaixo |
| Módulo do Núcleo de Sobrecarga | Desbloqueia a compensação de Raios para o conjunto de armadura. O Raio de Altíssima Tensão existente é consumido primeiro e qualquer déficit é pago a 16 Raios de Alta Tensão por Raio de Altíssima Tensão |

Escudo de Matriz, Escudo de Fase, Proteção contra Sobrecarga e Proteção Multidimensional dividem um único grupo de instalação exclusivo. A Proteção contra Sobrecarga é fabricada a partir do Escudo de Fase; sua conversão Pigmee produz a Proteção Multidimensional.

Módulos legados de Imortalidade convertem-se em Proteção contra Sobrecarga, preservando alternâncias, opções e o estado do combo de último recurso. Se um peitoral legado também contém Escudo de Fase ou de Matriz, a proteção melhorada absorve esses tiers inferiores instalados. Itens de escudo soltos em inventários não são afetados.

### Trava de Fase

O Módulo de Trava de Fase usa o peitoral como controlador e expõe quatro recursos alternáveis independentemente no Hub de Dispositivo:

* **Trava de Armadura:** Move o conjunto Celestweave atualmente vestido para quatro slots de fase privados vinculados ao jogador; cada slot de armadura exibe uma Projeção com Trava de Fase mostrando que sua armadura correspondente está segura no armazenamento de fase privado. A armadura real continua funcionando dentro dos slots privados e peças Celestweave recém-vestidas entram na trava automaticamente. Projeções não têm brilho de encantamento e não podem ser extraídas nem trocadas; substituir ou remover uma projeção custa 1.000.000 FE e 16 Raios de Altíssima Tensão para reconstruí-la no lugar, e um pagamento falho libera a trava e reequipa todo o conjunto real.
`Think of this as soulbinding.`
* **Trava de Voo:** Congela o estado atual de voo, mantém o voo ativo após pousar e rejeita mudanças externas de estado. Reconhece módulos de Voo Criativo/de Fase ativos, voo do modo de jogo e o atributo `CREATIVE_FLIGHT` do NeoForge, mas nunca concede voo por si só.
* **Bloquear Forças Externas:** Bloqueia mudanças de velocidade vindas de água, ventiladores, repulsão e sistemas externos semelhantes, enquanto a entrada do jogador e o movimento da armadura continuam funcionando.
`Por exemplo: ignora o empurrar e o puxar do Ventilador Revestido do Create.`
* **Bloquear Teleportes Externos:** Bloqueia reescritas externas de coordenadas, teleportes e mudanças de dimensão, enquanto o movimento normal do jogador não é afetado.
`For example: ignores forced teleportation by Draconic Evolution's Chaos Guardian.`

## Módulos das Calças

| Módulo | Efeito |
|--------|--------|
| Voo Criativo | Fornece pairar e planar com asas; velocidade e inércia são configuráveis |
| Voo de Fase | Fornece pairar e planar com asas de fase; o Modo de Fase oferece Desligado, Apenas Voo Criativo ou Criativo + Élitro |

Voo Criativo e Voo de Fase dividem o mesmo grupo de instalação, então apenas um pode ser instalado nas calças. O Voo de Fase fica desabilitado por padrão após a instalação e deve ser habilitado no Hub de Dispositivo.

Os dois módulos de voo compartilham os controles no estilo vanilla: toque em Pular no ar para abrir as asas, ou toque duplo em Pular para alternar o pairar. Segure Pular enquanto plana para impulsionar na direção do olhar. Ao pairar, Pular sobe e Agachar desce; segurar ambos cancela a entrada vertical e expõe um estado agachado a outros mods. Agachar enquanto paira usa a velocidade de agachamento no chão (incluindo atributos de agachamento e multiplicadores de agachamento da Assistência de Movimento), desabilita a inércia temporariamente e para imediatamente quando a entrada direcional é solta. Sair do agachamento restaura a velocidade de voo e a inércia configuradas. Apenas o Voo de Fase expõe o Modo de Fase: **Desligado** desabilita a travessia de fase sem desabilitar o voo, **Apenas Voo Criativo** aplica fase ao pairar mas mantém a colisão normal ao planar, e **Criativo + Élitro** aplica fase a ambos. A Trava de Voo é controlada centralmente pelo Módulo de Trava de Fase do peitoral.

## Módulos das Botas

| Módulo | Efeito |
|--------|--------|
| Arrancada | Pressione a tecla de Arrancada, padrão V, para avançar em disparada; recarga de 40 ticks |
| Afinidade de Mineração | Compensa as penalidades de mineração submersa e no ar |
| Assistência de Movimento | Ajusta separadamente a velocidade de caminhar, correr e agachar (0.5x-4x), além da altura de passo automática (0.6-3 blocos) |

## Notas de Custo

A maioria dos módulos ativos consome 1 Raio de Alta Tensão por tick além de seu consumo de FE. Voo Criativo e Voo de Fase usam mais Raio de Alta Tensão em movimento; a travessia de fase ativa usa Raio de Altíssima Tensão. Os custos do Escudo de Matriz e da Purificação aumentam em gatilhos repetidos. Os escudos de Fase e de Sobrecarga pagam apenas os aumentos do maior golpe numa janela fixa de 20 ticks. O de Fase custa no máximo 20.480.000 FE e 2.048 EHV por janela. A blindagem de Sobrecarga ainda custa 20.000 FE e 2 EHV por dano, pagando apenas os aumentos do maior golpe dentro de uma janela fixa de 20 ticks. Taxas de dano sempre param em 2 GFE e 1.024 EHV e nunca avançam o combo de morte. Só as mortes sobem o tier: a morte n na janela custa até min(2n GFE, 20 GFE) e min(1024n EHV, 16.384 EHV), cobrada no teto daquele tier. Blindagem e último recurso compartilham o crédito pago e só pagam diferenças: um teto de dano totalmente pago cobre a primeira morte de graça, enquanto a segunda morte completa até 4 GFE e 2.048 EHV. Tiers de morte mais altos nunca elevam o teto de dano. Chamadas repetidas de um mesmo ataque e reentrada no mesmo tick por ganchos de morte forçada não cobram duas vezes. O FE atinge seu teto no tier de morte 10 e o EHV no tier 16; a proteção continua sem novos custos de gatilho depois que ambos os tetos são pagos. Gatilhos não estendem a janela; o crédito pago e o combo de morte reiniciam após 20 ticks. Instalar um Módulo do Núcleo de Sobrecarga no peitoral permite a todo o conjunto compensar o Raio de Altíssima Tensão faltante a 16 Raios de Alta Tensão por Raio de Altíssima Tensão.
