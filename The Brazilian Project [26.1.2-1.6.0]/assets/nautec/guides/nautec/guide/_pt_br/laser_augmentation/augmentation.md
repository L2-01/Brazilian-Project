---
navigation:
  title: Aprimoramento Corporal
  icon: nautec:claw_robot_arm
  position: 2
  parent: laser_augmentation/laser_augmentation-index.md
---

# <Color id="light_purple">Aprimoramento Corporal</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="claw_robot_arm" scale="2"/>
  Seu corpo tem nove espaços de aprimoramentos, e cada espaço comporta um.
</Column>

Cada aprimoramento só cabe em certos espaços. A tela da estação lista os espaços em que uma peça pode ir quando você sobe nela.

***

## <Color id="gold">Espaços Corporais</Color>

| Espaço | Aprimoramentos que cabem |
|---|---|
| Cabeça | Carapaça Hidrotermal, Ressonância (Amuleto de Ressonância) |
| Olhos | Olho de Guardião, Olhos Abissais |
| Corpo | Barbatana de Golfinho, Voo do Modo Criativo (Tanque de Flutuação), Pele Fotófora, Carapaça Hidrotermal |
| Pulmões | Pulmão de Afogado |
| Coração | Coração Eldritch, Corações Adicionais (Ventrículo Auxiliar) |
| Braço Esquerdo, Braço Direito | Ímã, Ímã de Ender, Velocidade de Mineração Subaquática, Tridente Saltitante, Tridente Dispersor, Arremesso de Poções Aleatórias |
| Perna Esquerda, Perna Direita | Salto, Subir Degraus, Prevenção de Dano de Queda, Velocidade de Caminhada |

Voo, a Barbatana de Golfinho e a Pele Fotófora todos precisam do espaço Corpo, então você fica com um dos três. A Carapaça Hidrotermal pode ir na Cabeça, o que mantém o espaço Corpo livre, mas aí ela compete com o aprimoramento de Ressonância.

O aprimoramento de Ressonância é um [Amuleto de Ressonância](nautec:deep_engineering/resonance_network.md) instalado como peça, então ele carrega seus itens sem ocupar um espaço de amuleto.

Duas cópias da mesma peça de perna não fazem mais que uma, então instale duas pernas diferentes. O mesmo vale para a Carapaça Hidrotermal em Cabeça e Corpo.

***

## <Color id="gold">Instalando</Color>

Carregue a peça e um Braço Robótico de Garra numa extensão de uma [Estação de Aprimoramento Corporal](augmentation_station.md) formada, dê àquela extensão um feixe de 25 AP por baixo, depois suba no bloco do meio, escolha um espaço e aperte Aplicar. A instalação leva quatro segundos, durante os quais você não pode se mover.

***

## <Color id="gold">Substituindo e Removendo</Color>

Instalar num espaço que já tem um aprimoramento o substitui. O aprimoramento antigo é destruído, não devolvido como item.

Não há forma de tirar um aprimoramento em sobrevivência além de substituí-lo. Operadores podem usar `/nautec augments remove <slot>` (por exemplo `nautec:left_arm`) ou `/nautec augments clear`, que agem no jogador que roda o comando.

Aprimoramentos são mantidos quando você morre.

***

## <Color id="gold">Teclas de Atalho</Color>

A maioria dos aprimoramentos funciona sozinha. Estes precisam de uma tecla, listada na tela de Controles sob a categoria Nautec:

| Tecla (padrão) | Nome do atalho | Aprimoramento |
|---|---|---|
| B | Abrir Tela de Aprimoramento Corporal | Mostra seus aprimoramentos instalados e seus espaços |
| L (segurar) | Ativar Laser do Olho de Guardião | Olho de Guardião |
| Alt Esquerdo | Salto | Salto (Perna Hidráulica) |
| Y | Arremessar Tridente | Tridente Saltitante (Braço Lançador de Tridente) |
| U | Arremessar Tridente Dispersor | Tridente Dispersor (Braço de Salva de Tridentes) |
| G | Arremessar Poção | Arremesso de Poções Aleatórias (Braço Robótico de Seringa) |

Nenhum dos aprimoramentos ativos usa energia ou itens. Salto e os três braços arremessadores têm um curto tempo de recarga entre usos; o Olho de Guardião dispara enquanto você segurar a tecla.
