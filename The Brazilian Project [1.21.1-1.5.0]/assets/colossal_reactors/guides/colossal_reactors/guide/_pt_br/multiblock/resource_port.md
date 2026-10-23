---
navigation:
  parent: multiblock/multiblock-index.md
  title: Porta de Recursos do Reator
  icon: resource_port
  position: 35
item_ids:
  - colossal_reactors:resource_port
categories:
  - ports
---

# Porta de Recursos do Reator

<BlockImage id="resource_port" scale="4" />

Anexe **Porta(s) de Recursos do Reator** ao **revestimento** para mover itens e/ou fluidos entre o mundo exterior e o reator.

## Layouts típicos

### Manual / só-RF (sem portas necessárias)

Combustível e resíduo podem ser manuseados pela GUI do [Controlador do Reator](reactor_controller.md). Você ainda precisa de pelo menos uma [Porta de Energia](power_ports.md).

### Automação: combustível entra + resíduo sai (**duas portas**, mesma face do controlador)

Coloque **as duas portas de recursos na mesma parede** do controlador do reator. Exemplo em [Primeiros passos](getting_started.md) — as portas ficam espalhadas nessa face; passe o mouse sobre os diamantes na cena para dicas de configuração.

| Porta (exemplo) | Modo | Filtro | Move |
|----------------|------|--------|-------|
| Inferior-esquerda | **INSERIR** | **Combustível** | Combustível sólido **para dentro** das barras |
| Inferior-direita | **EXTRAIR** | **Resíduo** | **Resíduo** **para fora** |

Adicione uma **porta de energia** na mesma face. Tubo/tolva do **lado de fora** de cada porta.

<GameScene zoom="6" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="200" pitch="28" />
  <BlockAnnotation x="1" y="2" z="0" color="#55ff55">
**Exemplo: combustível ENTRA** — abra a porta → **Inserir** → filtro **Combustível** → ative **Sólido** / **Líquido** conforme necessário. Dica em **Inserir**: *O reator aceita combustível sólido e um fluido refrigerante.*
  </BlockAnnotation>
  <BlockAnnotation x="5" y="2" z="0" color="#ffaa55">
**Exemplo: resíduo SAI** — **Extrair** → filtro **Resíduo**. Dica em **Extrair**: *O reator extrai Resíduo Nuclear e fluido refrigerante usado.*
  </BlockAnnotation>
</GameScene>

### Circuito de refrigerante fluido (**portas extras**, opcional)

Se você usar **refrigerante ativo** (Configuração 2 em [Primeiros passos](getting_started.md)):

- **INSERIR** com filtro **Refrigerante** — tubo de refrigerante **entrando** (*Entrada: apenas fluido refrigerante.*)
- **EXTRAIR** com filtro **Refrigerante** — tubo de **vapor / fluido usado** **saindo** → [Primeiros passos da Turbina](../turbine/getting_started.md) (*Saída: apenas refrigerante líquido usado.*)
- Mantenha **EXTRAIR resíduo** numa porta separada; não espere que uma porta EXTRAIR ejete fluidos não relacionados.

## GUI — botões e dicas

Abra a GUI da porta e **passe o mouse sobre cada controle** — o texto abaixo corresponde às dicas padrão.

### Modo (botão superior — clique para alternar)

| Rótulo | Dica |
|-------|---------|
| **Inserir** | O reator aceita combustível sólido e um fluido refrigerante. |
| **Extrair** | O reator extrai Resíduo Nuclear e fluido refrigerante usado. |
| **Ejetar** | O reator ejeta o combustível sólido que contém. |

### Filtro (apenas reator — clique para alternar o papel combustível / refrigerante)

Depende do **modo**; passe o mouse no botão para ver o filtro atual:

| Modo | Rótulo do filtro | Dica |
|------|--------------|---------|
| **Inserir** | Tudo / Combustível / Refrigerante | *Entrada: combustível e refrigerante.* / *Entrada: apenas combustível (itens ou fluido).* / *Entrada: apenas fluido refrigerante.* |
| **Extrair** | Tudo / Resíduo / Refrigerante | *Saída: resíduo sólido e refrigerante líquido.* / *Saída: apenas resíduo sólido.* / *Saída: apenas refrigerante líquido usado.* |
| **Ejetar** | Ambos / Só Combustível / Só Refrigerante | *Ejetar: itens de combustível e fluido refrigerante das barras.* / *Ejetar: apenas itens de combustível…* / *Ejetar: apenas fluido refrigerante.* |

### Alternâncias de meio (clique para ativar — sublinhadas quando ativas)

| Botão | Dica |
|--------|---------|
| **Sólido** | Clique para permitir ou bloquear itens sólidos por esta porta. |
| **Líquido** | Clique para permitir ou bloquear fluidos por esta porta. |
| **Gás** | Clique para permitir ou bloquear gases do Mekanism por esta porta. |

### Tanques e descarte

| Controle | Dica |
|---------|---------|
| **Tanque de líquido** (barra ao passar o mouse) | Líquido: quantidade / capacidade em mB, mais o nome do fluido |
| **Tanque de gás** (barra ao passar o mouse, Mekanism) | Gás: quantidade / capacidade em mB, mais o nome do gás |
| **D** sob o tanque de líquido | Descartar: esvaziar o tanque interno de fluido (o fluido é descartado) |
| **D** sob o tanque de gás | Descartar: esvaziar o tanque de gás (o gás é descartado) |

- **Espaço de item** — E/S manual ou tolva/tubo na face **externa**.

Depois de mudar modos ou filtros, **Reinicie** o [Controlador do Reator](reactor_controller.md).

## Escalonamento automático de capacidade

Quando o reator é **revalidado**, cada porta de recursos redimensiona os tanques de fluido/gás (gás do Mekanism quando habilitado):

- Alvo ≈ **mB/t estimada para o modo e filtro daquela porta × 10**, mínimo de **16.000 mB** por tanque.
- **Sem teto fixo** de volume de fluido/gás para reatores grandes.
- A capacidade **cresce** imediatamente quando a demanda aumenta; **diminui** apenas quando o conteúdo armazenado ainda cabe no tamanho menor.
