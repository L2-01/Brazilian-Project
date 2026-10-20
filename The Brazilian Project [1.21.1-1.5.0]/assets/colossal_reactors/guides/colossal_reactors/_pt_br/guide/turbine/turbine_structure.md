---
navigation:
  parent: turbine/turbine-index.md
  title: Estrutura da turbina
  icon: turbine_casing
  position: 10
item_ids:
  - colossal_reactors:turbine_casing
  - colossal_reactors:turbine_glass
  - colossal_reactors:turbine_rod_controller
categories:
  - multiblock
---

# Estrutura da turbina

## Construindo a carcaça

<Row gap="16" fullWidth={true}>
  <BlockImage id="turbine_casing" scale="4" />
  <BlockImage id="turbine_glass" scale="4" />
</Row>

- Use **Revestimento da Turbina** para paredes sólidas e **Vidro da Turbina** onde você quer ver dentro.

- Construa uma **caixa fechada**. O tamanho máximo padrão é **65×65×65** (mesma ideia dos reatores grandes; seu pacote pode permitir menos).

- Por dentro você precisa de espaço para **barras e hélices**, uma seção de **bobinas**, **portas** nas paredes, e um **Controlador da Turbina** numa **parede lateral** externa (norte, sul, leste ou oeste — não o topo nem o fundo da caixa).

## Controlador de barras

<ItemImage id="turbine_rod_controller" scale="4" />

Você precisa de **exatamente um** **Controlador de Barras da Turbina** na **camada superior da seção do rotor**. Ele define para que lado o eixo corre (você pode orientá-lo em **seis direções**, como uma bobina de aquecimento).

- Numa pegada de barras **ímpar × ímpar**, ele fica na célula **central**.
- Se um dos lados for **par**, **duas** células centrais funcionam; se **ambos** forem pares, **quatro** células centrais funcionam. Qualquer uma delas serve à mão; o **Construtor da Turbina** escolhe um centro para você e o destaca na prévia.

- As colunas de barras são dispostas pelo seu padrão no volume **abaixo** da seção de bobinas — elas não precisam ficar diretamente sob este bloco.

- As barras precisam se alinhar com o eixo do controlador. Barras viradas errado são corrigidas quando a turbina checa a construção, quando possível.

- Isto **não** é o **Controlador da Turbina** na parede externa — aquele abre a tela principal da turbina.

## Barras da turbina

<ItemImage id="turbine_rod" scale="4" />

- As **Barras da Turbina** formam o eixo. Elas seguem a direção do controlador de barras (para cima/para baixo ou ao longo de uma parede).

- **Clique com o botão direito** no piso ou no teto para um eixo **vertical**; **clique com o botão direito** numa parede para um eixo **horizontal** ao longo daquela parede.

- Anexe **hélices** com o item de hélice — veja [Barras e hélices](turbine_rod_and_blades.md). Quebrar uma barra larga todas as suas hélices naquele ponto.

## O que vai onde (visão geral)

| Área | Onde | O que você põe lá |
|------|--------|-------------------|
| **Rotor** | Interior principal, abaixo das bobinas | Barras, hélices |
| **Bobinas** | Camadas de cima por dentro | Blocos de armazenamento de metal (ouro, cobre, …) |
| **Portas** | Faces do revestimento | Vapor entra, RF sai, redstone |

Quantas camadas de bobina usar (padrão **3**) é definido no [Construtor da Turbina](turbine_builder.md). Para números de RF e vapor veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).
