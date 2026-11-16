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

## Construindo a casca

<Row gap="16" fullWidth={true}>
  <BlockImage id="turbine_casing" scale="4" />
  <BlockImage id="turbine_glass" scale="4" />
</Row>

- Use **Revestimento da Turbina** para paredes sólidas e **Vidro da Turbina** onde você quiser ver o interior.

- Construa uma **caixa fechada**. O tamanho máximo padrão é **65×65×65** (mesma lógica dos reatores grandes; seu pacote pode permitir menos).

- Dentro você precisa de espaço para **barras e hélices**, uma seção de **bobinas**, **portas** nas paredes e um **Controlador da Turbina** numa **parede lateral** externa (norte, sul, leste ou oeste — não no topo ou na base da caixa).

## Controladores de barras

<ItemImage id="turbine_rod_controller" scale="4" />

Coloque blocos de **Controlador da Barra da Turbina** na **plataforma de fechamento** — a camada de revestimento que separa o **rotor** (abaixo) da **zona de bobinas** (acima). Eles definem a direção do eixo (você pode orientá-los em **seis direções**, como uma bobina de aquecimento).

- Você precisa de **pelo menos um**. Você pode colocar **um controlador por coluna de barras**, cada um **diretamente na célula da plataforma acima da pilha de barras dessa coluna**.
- Todos os controladores devem estar no **mesmo plano da plataforma** e com a **mesma orientação**.
- Os controladores **não** ficam na borda externa da casca.

Se alguma coluna de barras tiver barras, mas **não** tiver um controlador na célula da plataforma dela, a eficiência das hélices sofre uma penalidade de **−5%** (veja [Barras e hélices](turbine_rod_and_blades.md)). Colocar um controlador em **cada** coluna de barras anula essa penalidade.

- As barras devem se alinhar ao eixo do controlador. Barras na direção errada são corrigidas quando a turbina verifica a construção, quando possível.

- Isto **não** é o **Controlador da Turbina** na parede externa — aquele abre a tela principal da turbina.

## Barras da turbina

<ItemImage id="turbine_rod" scale="4" />

- As **Barras da Turbina** formam o eixo. Elas seguem a direção do controlador de barras (para cima/baixo ou ao longo de uma parede).

- **Clique com o botão direito** no piso ou no teto para um eixo **vertical**; **clique com o botão direito** numa parede para um eixo **horizontal** ao longo dela.

- Anexe **hélices** com o item de hélice — veja [Barras e hélices](turbine_rod_and_blades.md). Quebrar uma barra larga todas as hélices dela naquele ponto.

## O que vai onde (visão geral)

| Área | Onde | O que você coloca |
|------|--------|-------------------|
| **Rotor** | Interior principal, abaixo das bobinas | Barras, hélices |
| **Plataforma de fechamento** | Camada entre o rotor e as bobinas | Revestimento + controladores de barras acima das colunas de barras |
| **Bobinas** | Camadas superiores internas | Blocos de armazenamento de metal (ouro, cobre...) |
| **Portas** | Faces do revestimento | Vapor entra, RF sai, redstone |

Quantas camadas de bobina usar (padrão **3**) é definido no [Construtor da Turbina](turbine_builder.md). Para números de RF e vapor, veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).
