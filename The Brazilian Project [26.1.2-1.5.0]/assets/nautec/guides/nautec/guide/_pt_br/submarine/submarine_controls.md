---
navigation:
  title: Pilotagem
  icon: nautec:submarine
  position: 1
  parent: submarine/submarine-index.md
---

# <Color id="light_purple">Pilotagem</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="submarine" scale="2"/>
  Teclas, condução e o painel.
</Column>

O piloto dirige o Explorador Marinho com as teclas normais de movimento e o conduz olhando, e recebe um painel de energia e casco mais uma barra de módulos no lugar da barra de acesso rápido.

***

## <Color id="gold">Teclas</Color>

| Tecla (padrão) | O que faz |
|---|---|
| W | Acelera à frente |
| S | Ré, com metade da propulsão |
| Correr (Ctrl) segurado com W ou S | 60% a mais de propulsão |
| Mouse | Conduzir: a proa segue sua visão |
| Espaço | Subir |
| C | Mergulhar |
| Segurar botão direito (usar) | Visão livre: olhe ao redor sem conduzir |
| 1 a 9, ou roda do mouse | Selecionar um espaço de módulo |
| Botão esquerdo, ou F | Disparar o módulo selecionado |
| Ctrl + H | Mover o painel |
| Agachar (Shift) | Desembarcar |

C, F e Ctrl + H são atalhos do NauTec, listados na tela de Controles como Descer Explorador Marinho, Disparar Módulo do Explorador Marinho e Reposicionar Interface do Explorador Marinho. Reatribua-os ali. Enquanto você pilota, F só dispara módulos, então não troca suas mãos nem alterna a luz de um Propulsor Aquático.

***

## <Color id="gold">Condução</Color>

Não há tecla de curva. O casco vira seguindo para onde você olha, e debaixo d'água inclina para cima ou para baixo até 75 graus. Solte o botão direito após a visão livre e sua visão volta à proa na hora.

O casco só vira se tiver espaço. Olhe para dentro de rocha e ele mantém o rumo em vez de atravessar, então recue ou suba antes de virar numa caverna apertada. Sua colisão acompanha a forma real do casco ao virar. Ele só colide com blocos: peixes e outras criaturas no caminho são empurrados para o lado.

Na superfície o casco fica nivelado e os propulsores trabalham com cerca de um terço da força, com subida e mergulho também mais fracos. Fique debaixo d'água antes de esperar velocidade.

Com um [Módulo de Voo](flight_module.md) instalado, o casco voa em vez disso: fora da água ele se conduz e inclina como debaixo d'água, Espaço e C sobem e mergulham com força total, e ele se move metade mais rápido.

Propulsão precisa de energia. Com a célula vazia o casco fica à deriva.

A câmera em terceira pessoa fica 10 blocos atrás enquanto você pilota, para que você veja o casco inteiro. A distância é configurável (`submarineCameraDistance`).

***

## <Color id="gold">O Painel</Color>

Tomar o assento do piloto põe um painel na tela com duas linhas, PWR para a célula e HULL para o casco, cada uma com uma porcentagem. O esquema de controles é listado abaixo dele.

* PWR pisca abaixo de 20% e exibe CHG quando a célula está vazia.
* HULL fica vermelha abaixo de 35% e pisca abaixo de 15%.

O painel substitui os corações de veículo do vanilla, a barra de acesso rápido e o nível de experiência enquanto você pilota. Os nove espaços de módulo tomam o lugar da barra de acesso rápido no fundo da tela (veja [Módulos](submarine_modules.md)).

Aperte Ctrl + H a qualquer momento para abrir a tela de posicionamento, arraste o painel para onde quiser e aperte Esc ou Ctrl + H de novo para salvar. A posição fica salva na configuração do cliente.

O passageiro de trás não vê nada disso e mantém sua barra de acesso rápido normal.
