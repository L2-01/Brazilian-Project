---
navigation:
  title: Módulos
  icon: nautec:aquatic_chip
  position: 6
  parent: submarine/submarine-index.md
---

# <Color id="light_purple">Módulos</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquatic_chip" scale="2"/>
  Nove espaços de melhorias.
</Column>

Módulos são itens que você instala no compartimento de módulos do Explorador Marinho para lhe dar novas habilidades, disparados de uma barra que substitui sua barra de acesso rápido enquanto você pilota.

***

## <Color id="gold">O Compartimento de Módulos</Color>

Fique fora do casco, sem agachar, e clique nele com o botão direito usando uma <ItemLink id="aquarine_steel_wrench"/> (qualquer chave-Inglesa serve) para abrir o compartimento: nove espaços, um módulo em cada. Só módulos entram. Agachar e clicar com o botão direito recolhe o casco em vez disso.

Os módulos ficam instalados quando você recolhe o casco, e a dica do item os lista.

***

## <Color id="gold">Disparando</Color>

Enquanto você pilota, os nove espaços do compartimento aparecem no fundo da tela no lugar da sua barra de acesso rápido, com o nome do módulo selecionado acima deles. Escolha um espaço com as teclas numéricas ou a roda do mouse, depois clique com o botão esquerdo ou aperte F para dispará-lo.

* Um módulo passivo mostra uma faixa pálida na base de seu espaço e funciona de qualquer espaço sem ser disparado.
* Um Módulo de Impulso ou um Módulo de Furtividade em atividade mostra uma faixa luminosa na base de seu espaço.
* Um módulo em recarga enche seu espaço com uma varredura escura que encolhe conforme fica pronto.

Se um módulo não puder disparar, o motivo aparece acima da barra: "Esse módulo ainda está completando o ciclo", "Energia insuficiente para esse módulo" ou uma mensagem de teletransporte. Um módulo recusado não custa nada.

As recargas pertencem ao tipo de módulo e começam quando você dispara. Disparar uma cópia de um módulo põe toda cópia dele no compartimento em recarga, então um segundo Módulo de Impulso não lhe dá um segundo impulso. Um casco recolhido no meio da recarga guarda o tempo que faltava, e a contagem continua ao lançá-lo de novo. Módulos passivos não acumulam: um segundo Módulo Solar, Módulo de Blindagem ou Módulo de Voo não adiciona nada.

***

## <Color id="gold">Todos os Módulos</Color>

| Módulo | Tipo | Energia | Recarga |
|---|---|---|---|
| [Solar](solar_module.md) | Passivo | Gera 2.000 a cada 5 s | Nenhuma |
| [Blindagem](armor_module.md) | Passivo | Nenhuma | Nenhuma |
| [Impulso](booster_module.md) | 10 s de velocidade | 20.000 | 13 s |
| [Furtividade](stealth_module.md) | 2 min de furtividade | 50.000 | 130 s |
| [Sonar](sonar_module.md) | Um pulso | 30.000 | 45 s |
| [Escudo](shield_module.md) | Absorção passiva e uma descarga | 10.000 por coração absorvido, 25.000 por descarga | 5 s |
| [Laser de Impulso](impulse_laser_module.md) | Dispara enquanto segurado | 400 por tick, subindo a 1.400 por tick | Nenhuma |
| [Teletransporte](teleport_module.md) | Salto para uma âncora | 200.000 | 30 s |
| [Voo](flight_module.md) | Passivo | 4 por tick enquanto no ar | Nenhuma |
| [Porão de Carga](cargo_module.md) | Abre o porão | Nenhuma | Nenhuma |

Para os Módulos de Impulso e de Furtividade, a recarga inclui o tempo em que o efeito dura. A dica de cada módulo mostra sua energia por uso e sua recarga, e todo valor aqui é configurável.
