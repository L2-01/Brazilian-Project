---
navigation:
  parent: multiblock/multiblock-index.md
  title: Porta de Recursos do Reator
  icon: resource_port
  position: 35
item_ids:
  - colossal_reactors:resource_port
categories:
  - Portas
---

# Porta de Recursos do Reator

<BlockImage id="resource_port" scale="4" />

Anexe **Porta(s) de Recursos do Reator** ao **revestimento** para mover itens e/ou fluidos entre o mundo externo e o reator.

## Layouts típicos

### Manual / só-RF (nenhuma porta necessária)

Combustível e resíduo podem ser manuseados pela GUI do [Controlador do Reator](reactor_controller.md). Você ainda precisa de pelo menos uma [Porta de Energia](power_ports.md).

### Automação: combustível entra + resíduo sai (**duas portas**, mesma face do controlador)

Coloque **as duas portas de recursos na mesma parede** do controlador do reator. Exemplo em [Começando](getting_started.md) — as portas ficam espalhadas naquela face; passe o mouse sobre os losangos na cena para dicas de configuração.

| Porta (exemplo) | Modo | Filtro | Move |
|----------------|------|--------|-------|
| Inferior esquerdo | **Inserir** | **Combustível** | Combustível sólido **para dentro** das barras |
| Inferior direito | **Extrair** | **Resíduo** | **Resíduo** **para fora** |

Adicione uma **porta de energia** na mesma face. Tubo/funil no lado de **fora** de cada porta.

<GameScene zoom="6" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="200" pitch="28" />
  <BlockAnnotation x="1" y="2" z="0" color="#55ff55">
**Exemplo: combustível ENTRA** — abra a porta → **Inserir** → filtro **Combustível** → ative **Sólido** / **Líquido** conforme necessário. Dica no **Inserir**: *O reator aceita combustível sólido e um fluido refrigerante.*
  </BlockAnnotation>
  <BlockAnnotation x="5" y="2" z="0" color="#ffaa55">
**Exemplo: resíduo SAI** — **Extrair** → filtro **Resíduo**. Dica no **Extrair**: *O reator extrai resíduo nuclear e fluido refrigerante gasto.*
  </BlockAnnotation>
</GameScene>

### Circuito de refrigerante fluido (**portas extras**, opcional)

Se você rodar **refrigerante ativo** (Configuração 2 em [Começando](getting_started.md)):

- **Inserir** com filtro **Refrigerante** — encane o refrigerante **para dentro** (*Importar: só fluido refrigerante.*)
- **Extrair** com filtro **Refrigerante** — encane o **vapor / fluido gasto** **para fora** → [Turbina — Começando](../turbine/getting_started.md) (*Saída: só refrigerante líquido exaurido.*)
- Mantenha o **EXTRACT de resíduo** numa porta separada; não espere que uma porta EXTRACT ejete fluidos não relacionados.

## GUI — botões e dicas de ferramenta

Abra a GUI da porta e **passe o mouse sobre cada controle** — o texto abaixo é o que você vê no jogo.

### Modo (botão do topo — clique para alternar)

| Rótulo | Dica de ferramenta |
|-------|---------|
| **Inserir** | O reator aceita combustível sólido e um fluido refrigerante. |
| **Extrair** | O reator extrai resíduo nuclear e fluido refrigerante gasto. |
| **Ejetar** | O reator ejeta o combustível sólido que contém. |

### Filtro (só reator — clique para alternar o papel combustível / refrigerante)

Depende do **modo**; passe o mouse sobre o botão para o filtro atual:

| Modo | Rótulo do filtro | Dica de ferramenta |
|------|--------------|---------|
| **Inserir** | Tudo / Combustível / Refrigerante | *Importar: combustível e refrigerante.* / *Importar: só combustível (itens ou fluido).* / *Importar: só fluido refrigerante.* |
| **Extrair** | Tudo / Resíduo / Refrigerante | *Saída: resíduo sólido e refrigerante líquido.* / *Saída: só resíduo sólido.* / *Saída: só refrigerante líquido exaurido.* |
| **Ejetar** | Ambos / Apenas combustível / Apenas refrigerante | *Ejetar: itens de combustível e fluido refrigerante das barras.* / *Ejetar: só itens de combustível…* / *Ejetar: só fluido refrigerante.* |

### Chaves de meio (clique para habilitar — sublinhadas quando ativas)

| Botão | Dica de ferramenta |
|--------|---------|
| **Sólido** | Clique para permitir ou bloquear itens sólidos por esta porta. |
| **Líquido** | Clique para permitir ou bloquear fluidos por esta porta. |
| **Gas** | Clique para permitir ou bloquear gases do Mekanism por esta porta. |

### Tanques e despejo

| Controle | Dica de ferramenta |
|---------|---------|
| **Tanque de líquido** (barra ao passar o mouse) | Líquido: quantidade / capacidade em mB, mais o nome do fluido |
| **Tanque de gás** (barra ao passar o mouse, Mekanism) | Gás: quantidade / capacidade em mB, mais o nome do gás |
| **D** sob o tanque de líquido | Despejar: esvazia o tanque interno de fluido (o fluido é descartado) |
| **D** sob o tanque de gás | Despejar: esvazia o tanque de gás (o gás é descartado) |

- **Espaço de item** — E/S manual ou funil/tubo na face de **fora**.

Depois de mudar modos ou filtros, **Reinicie** o [Controlador do Reator](reactor_controller.md).

## Escalonamento automático de capacidade

Quando o reator **revalida**, cada porta de recursos redimensiona os tanques de fluido/gás (gás do Mekanism quando habilitado):

- Alvo ≈ **mB/t estimado para o modo e filtro daquela porta × 10**, mínimo de **16.000 mB** por tanque.
- **Sem teto fixo** no volume de fluido/gás para reatores grandes.
- A capacidade **cresce** imediatamente quando a demanda aumenta; **encolhe** só quando o conteúdo armazenado ainda cabe no tamanho menor.
