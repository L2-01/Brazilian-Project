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
  Nove slots de melhorias.
</Column>

Módulos são itens que você instala no compartimento de módulos do Explorador Marinho para dar a ele novas habilidades, disparados de uma barra que substitui sua barra de acesso enquanto você pilota.

***

## <Color id="gold">O Compartimento de Módulos</Color>

Fique fora do casco, sem agachar, e clique nele com o botão direito segurando uma <ItemLink id="aquarine_steel_wrench"/> (qualquer chave funciona) para abrir o compartimento: nove slots, um módulo em cada. Só módulos entram. Agachar e clicar com o botão direito recolhe o casco no lugar.

Os módulos ficam instalados quando você recolhe o casco, e a dica do item os lista.

***

## <Color id="gold">Disparando</Color>

Enquanto você pilota, os nove slots do compartimento aparecem na base da tela no lugar da sua barra de acesso, com o nome do módulo selecionado acima deles. Escolha um slot com as teclas numéricas ou a roda do mouse, depois clique com o botão esquerdo ou pressione F para dispará-lo.

* Um módulo passivo mostra uma faixa pálida na base do seu slot e funciona de qualquer slot sem ser disparado.
* Um Módulo de Impulso ou de Furtividade em funcionamento mostra uma faixa clara na base do seu slot.
* Um módulo recarregando preenche seu slot com um arco escuro que encolhe conforme fica pronto.

Se um módulo não puder disparar, o motivo aparece acima da barra: "Esse módulo ainda está em ciclo", "Energia insuficiente para esse módulo", ou uma mensagem de teletransporte. Um módulo recusado não custa nada.

As recargas pertencem ao tipo de módulo e começam quando você dispara. Disparar uma cópia de um módulo põe toda cópia dele no compartimento em recarga, então um segundo Módulo de Impulso não dá um segundo impulso. Um casco recolhido no meio de uma recarga guarda o tempo que faltava, e a contagem continua quando você o lança de novo. Módulos passivos não acumulam: um segundo Módulo Solar, de Blindagem ou de Voo não adiciona nada.

***

## <Color id="gold">Todos os Módulos</Color>

| Módulo | Tipo | Energia | Recarga |
|---|---|---|---|
| [Solar](solar_module.md) | Passivo | Gera 2.000 a cada 5 s | Nenhuma |
| [Blindagem](armor_module.md) | Passivo | Nenhuma | Nenhuma |
| [Impulso](booster_module.md) | 10 s de velocidade | 20.000 | 13 s |
| [Furtividade](stealth_module.md) | 2 min de furtividade | 50.000 | 130 s |
| [Sonar](sonar_module.md) | Um ping | 30.000 | 45 s |
| [Escudo](shield_module.md) | Absorção passiva e uma descarga | 10.000 por coração absorvido, 25.000 por descarga | 5 s |
| [Laser de Impulso](impulse_laser_module.md) | Dispara enquanto segurado | 400 por tique, subindo a 1.400 por tique | Nenhuma |
| [Teletransporte](teleport_module.md) | Salto a uma âncora | 200.000 | 30 s |
| [Voo](flight_module.md) | Passivo | 4 por tique enquanto no ar | Nenhuma |
| [Porão de Carga](cargo_module.md) | Abre o porão | Nenhuma | Nenhuma |

Nos Módulos de Impulso e de Furtividade a recarga inclui o tempo em que o efeito roda. A dica de cada módulo mostra sua energia por uso e sua recarga, e todo número aqui é configurável.