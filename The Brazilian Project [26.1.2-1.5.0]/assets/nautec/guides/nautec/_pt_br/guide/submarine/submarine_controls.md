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
  Teclas, direção e o painel.
</Column>

O piloto dirige o Explorador Marinho com as teclas normais de movimento e o dirige olhando, e recebe um painel de energia e casco mais uma barra de módulos no lugar da barra de atalhos.

***

## <Color id="gold">Teclas</Color>

| Tecla (padrão) | O que faz |
|---|---|
| W | Acelerador para frente |
| S | Ré, a meia força |
| Correr (Ctrl) segurado com W ou S | 60% mais força |
| Mouse | Dirigir: o nariz segue sua visão |
| Espaço | Subir |
| C | Descer |
| Segurar botão direito (usar) | Visão livre: olhar ao redor sem dirigir |
| 1 a 9, ou roda do mouse | Selecionar um slot de módulo |
| Botão esquerdo, ou F | Disparar o módulo selecionado |
| Ctrl + H | Mover o painel |
| Agachar (Shift) | Desembarcar |

C, F e Ctrl + H são atalhos do NauTec, listados na tela de Controles como Descer Explorador Marinho, Disparar Módulo do Explorador Marinho e Reposicionar Interface do Explorador Marinho. Remapeie-os lá. Enquanto você pilota, F só dispara módulos, então não troca suas mãos nem liga/desliga uma luz do Propulsor Aquático.

***

## <Color id="gold">Direção</Color>

Não há tecla de virar. O casco vira para seguir para onde você olha, e debaixo d'água inclina para cima ou para baixo até 75 graus. Solte o botão direito depois da visão livre e sua visão volta ao nariz.

O casco só vira se tiver espaço. Olhe para dentro da rocha e ele mantém o rumo em vez de atravessar, então recue ou suba antes de virar numa caverna apertada. Sua colisão segue a forma real do casco conforme ele vira. Ele só colide com blocos: peixes e outras criaturas no caminho são empurrados para o lado.

Na superfície o casco fica nivelado e os propulsores trabalham a cerca de um terço da força, com subida e descida mais fracas também. Entre na água antes de esperar velocidade.

Com um [Módulo de Voo](flight_module.md) instalado, o casco voa em vez disso: fora da água ele dirige e inclina igual a debaixo d'água, Espaço e C sobem e descem com força total, e ele se move uma vez e meia mais rápido.

Impulso precisa de energia. Com a célula vazia o casco vai à deriva.

A câmera em terceira pessoa fica 10 blocos atrás enquanto você pilota, então dá para ver o casco inteiro. A distância é configurável (`submarineCameraDistance`).

***

## <Color id="gold">O Painel</Color>

Sentar no banco do piloto põe um painel na tela com duas linhas, PWR para a célula e HULL para o casco, cada uma com uma porcentagem. O esquema de controles aparece embaixo.

* PWR pisca abaixo de 20% e mostra CHG quando a célula está vazia.
* HULL fica vermelho abaixo de 35% e pisca abaixo de 15%.

O painel substitui os corações de veículo do vanilla, a barra de atalhos e o nível de experiência enquanto você pilota. Os nove slots de módulo tomam o lugar da barra de atalhos no fundo da tela (veja [Módulos](submarine_modules.md)).

Pressione Ctrl + H a qualquer momento para abrir a tela de posicionamento, arraste o painel para onde quiser e pressione Esc ou Ctrl + H de novo para salvar. A posição fica na configuração do cliente.

O passageiro de trás não vê nada disso e mantém sua barra de atalhos normal.