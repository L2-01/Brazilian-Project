---
navigation:
  title: Fabricador de Padrões
  icon: iska_utils:improved_pattern_crafter
  parent: hubs/world_and_machines.md
  position: 37
item_ids:
  - iska_utils:pattern_crafter
  - iska_utils:improved_pattern_crafter
  - iska_utils:pattern_crafter_improver
categories:
  - World and machines
---
# Fabricador de Padrões

<ItemImage id="iska_utils:improved_pattern_crafter" />

## O que faz

O **Fabricador de Padrões** (e o **Fabricador de Padrões Aprimorado**) é uma máquina de fabricação automatizada guiada por **padrões de letras**. Você atribui letras a uma grade 3×3, mapeia cada letra para um **filtro de item** (uma "variável"), alimenta ingredientes no inventário da máquina, e o fabricador repete as fabricações correspondentes usando RF/FE.

A variante **Aprimorada** suporta um orçamento maior de melhorias e mais trabalho concorrente; as duas compartilham a mesma GUI e controles.

## Fabricação

### Fabricador de Padrões

Moldura de pedregulho + tábuas ao redor de um **Fabricador** vanilla (dois padrões espelhados).

<RecipesFor id="iska_utils:pattern_crafter" />

### Fabricador de Padrões Aprimorado

Mesma moldura de gemas do Aprimorador, com um **Fabricador de Padrões** no centro (gemas: quartzo / diamante / prismarinho nos cantos; lápis-lazúli / tinta brilhante nos lados).

<RecipesFor id="iska_utils:improved_pattern_crafter" />

### Aprimorador de Fabricador de Padrões

Mesma moldura de gemas, mas o centro é qualquer `#minecraft:planks`. Usado apenas para a melhoria in-loco abaixo.

<RecipesFor id="iska_utils:pattern_crafter_improver" />

## Melhoria in-loco

Fabrique um **Aprimorador de Fabricador de Padrões** (receita acima). **Shift + clique direito** num Fabricador de Padrões normal colocado com o Aprimorador para convertê-lo em Aprimorado **sem perder** inventário, padrões, filtros, energia ou configurações. O Aprimorador é consumido.

## Padrões

- A coluna esquerda guarda o **padrão atual**: controles de modo, navegador de padrões, grade de letras 3×3, **Salvar** / **Descartar** e **Marcar Entrada**.
- O **Aprimorado** começa com **6** slots de padrão (configurável). Cada **Módulo Lógico** adiciona **+1** padrão (até o máximo configurado).
- Cada célula é uma letra (ou vazia). Letras ligam a **variáveis** na área de filtros.
- Alterne uma célula com clique esquerdo/direito; **Shift + clique** a limpa. Você também pode colocar um item numa célula para atribuir uma letra correspondente das suas variáveis.
- Troque entre padrões armazenados com as setas / rótulo do padrão. **Shift + clique** no rótulo do padrão limpa o padrão atual.
- **Salvar** grava as edições pendentes da grade no slot de padrão selecionado; **Descartar** cancela edições não salvas.

## Variáveis (filtros)

Acima do inventário da máquina ficam os slots de **variáveis** (paginados quando você desbloqueia muitas teclas):

- O **Aprimorado** começa com **uma página** de **18** teclas de variáveis.
- Cada **Módulo Lógico** desbloqueia **uma página extra** (+18 teclas). Com o máximo padrão de **4** Módulos Lógicos você alcança **5 páginas** (90 teclas), limitado pela config.
- Pequenos botões de **letra** acima/abaixo de cada slot desbloqueiam e alternam a letra daquela variável.
- Enquanto travado (sem letra), o botão grande fica inativo.
- Desbloqueado, clique no botão grande para abrir o **editor em linha** do texto de filtro daquela variável.
- Os filtros usam a mesma linguagem das **Teclas Válidas** dos filtros da Gaveta Profunda (id de item, id de mod, tag, NBT, macros). Abra **Teclas Válidas** no editor para a lista completa.
- Botões de seta paginam as variáveis quando Módulos Lógicos desbloqueiam mais de uma tela.

## Modos de fabricação

Alterne **Ambos / Só com Forma / Só sem Forma** para restringir quais formas de receita a máquina aceita.

## Roteamento de resultados (saídas recursivas)

Controla para onde vão os **resultados** das fabricações:

| Modo | Comportamento |
| ---- | -------- |
| **Res. Ejetar** | Os resultados vão apenas para os slots de **saída** da máquina. A fabricação para se não houver espaço. |
| **Res. Manter** | Os resultados são fundidos nas **entradas** primeiro; o excedente vai para a saída. Para se algo não couber. |
| **Res. Inteligente** | Funde nas entradas o tanto do resultado que couber; ejeta o resto. Para se qualquer parte transbordar. |

## Ingredientes não usados (restos)

Quando uma fabricação deixa entradas sobrando (ou pilhas parciais):

| Modo | Comportamento |
| ---- | -------- |
| **Ing. Manter** | Os restos tentam primeiro os slots de **entrada**, depois as saídas. A fabricação é bloqueada se não couberem. |
| **Ing. Ejetar** | Os restos tentam primeiro os slots de **saída**. A fabricação é bloqueada se não couberem. |

## Proteção de ferramentas

- **Ferramentas: Proteger** — ferramentas que quebrariam são ejetadas para a saída em vez de consumidas.
- **Ferramentas: Permitir Quebra** — ferramentas podem ser usadas até quebrar.

## Resultados proibidos

**Resultados Proibidos** abre uma lista de resultados de fabricação que a máquina nunca deve produzir. Edite as entradas com o mesmo editor de filtros (Teclas Válidas, variantes, aplicar/limpar). Útil para bloquear subprodutos ou caminhos de receita indesejados.

## Marcar Entrada / Marcar Saída

Mesma ideia das marcas de "definir inventário" do Posicionador de Estruturas:

- **Marcar Entrada** — lembra quais itens pertencem a cada slot de entrada da máquina (fantasmas nos slots vazios). Variantes de Clique / Shift / Ctrl-Alt limpam ou renovam as marcas.
- **Marcar Saída** — o mesmo para a grade de saída paginada. Slots marcados vazios mostram prévias-fantasma.
- Duplo clique num slot marcado vazio limpa a marca daquele slot.

As marcas orientam o que funis e jogadores devem colocar onde; elas não substituem os filtros de letra.

## Inventário e automação

- **Entrada da máquina** (9×3): ingredientes para fabricação; funis podem inserir.
- **Saída** (3×3, paginada): resultados fabricados e restos/ferramentas ejetados.
- **Inventário do jogador** na parte de baixo da GUI.
- Quebre o bloco para derrubar o conteúdo e os módulos.

## Redstone e energia

- Precisa de **RF/FE** na barra de energia.
- Botão de modo de redstone: ignorar / baixo / alto / desativado (mesma família das outras máquinas).

## Módulos

Três slots de melhoria (ícones-fantasma quando vazios):

| Slot | Módulo | Efeito |
| ---- | ------ | ------ |
| Lógica | <ItemImage id="iska_utils:logic_module" /> **Módulo Lógico** | **+1 padrão** e **+1 página de variáveis** (18 teclas) cada. Máx. padrão **4** no Aprimorado. |
| Velocidade | **Módulos vetoriais** (**Lento** → **Ultra**) | Encurta o tempo de fabricação (níveis maiores são mais rápidos). |
| Produção | <ItemImage id="iska_utils:production_module" /> **Módulo de Produção** | Aumenta quantas fabricações rodam em paralelo. |

Veja **Módulos** → **Módulo Lógico**, **Módulos vetoriais** e **Módulo de Produção**.

## JEI

Com a GUI do Fabricador de Padrões aberta, use a transferência de receita do JEI (**+**) numa receita de fabricação:

- **Variáveis** (filtros / letras, incluindo `#tag` quando a receita usa tags) se aplicam **imediatamente**.
- A grade do **padrão** e o **modo de fabricação** ficam **pendentes** até você confirmar.
- **Salvar** confirma só o padrão (e o modo); **Descartar** cancela as edições pendentes de padrão (as variáveis ficam).

Requer slots de variáveis livres e letras não usadas para quaisquer novos tipos de ingrediente.

<ItemGrid>
  <ItemIcon id="iska_utils:pattern_crafter" />
  <ItemIcon id="iska_utils:improved_pattern_crafter" />
  <ItemIcon id="iska_utils:pattern_crafter_improver" />
  <ItemIcon id="iska_utils:logic_module" />
  <ItemIcon id="iska_utils:slow_module" />
  <ItemIcon id="iska_utils:production_module" />
</ItemGrid>

## Dicas

- Desbloqueie as letras nas variáveis **antes** de editar seus filtros.
- Mantenha o Marcar Entrada alinhado com seus filtros de letra para a automação ficar consistente.
- Use **Resultados Proibidos** para parar subprodutos incômodos; use o modo de fabricação para forçar linhas só com forma ou só sem forma.
- Combine Módulos Lógicos com padrões multi-ingrediente mais complexos; use Produção quando precisar de vazão.
