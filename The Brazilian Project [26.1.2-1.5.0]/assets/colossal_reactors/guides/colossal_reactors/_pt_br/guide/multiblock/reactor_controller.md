---
navigation:
  parent: multiblock/multiblock-index.md
  title: Controlador do Reator
  icon: reactor_controller
  position: 20
item_ids:
  - colossal_reactors:reactor_controller
categories:
  - Multibloco
---

# Controlador do Reator

<BlockImage id="reactor_controller" scale="4" />

Abra o controlador **clicando com o botão direito** no bloco quando ele estiver numa face **lateral** do revestimento (não em cima nem embaixo), **substituindo um bloco de revestimento** na moldura externa com a tela virada para **fora**.

Novo em multiblocos? Comece com [Começando](colossal_reactors:multiblock/getting_started.md).

## Operação

- **Validar / executar** — a primeira abertura roda a validação; quando válido, o reator pode ligar (**ON**) e mostrar leituras de RF/tique, combustível e refrigerante.
- **Combustível** — mova combustível entre o seu inventário e o armazenamento de barras quando os espaços forem mostrados.
- **Fluido refrigerante** — veja o nível e encha/drene quando os controles forem fornecidos (opcional para jogo **só-RF** com buffer de refrigerante vazio).
- **Reiniciar** — revalida a estrutura e atualiza os tamanhos dos tanques das portas depois que você muda a construção ou as configurações das portas.

## Parando sem quebrar o multibloco

Use uma [Porta de Redstone do Reator](redstone_port.md) se você quer que redstone externa **segure** ou **pare** a operação enquanto a carcaça continua formada. **Sem** uma porta de redstone, o reator roda sempre que estiver válido e **ON** (sem portão de redstone).

Se leituras de **estabilidade** estiverem habilitadas no seu pacote, elas aparecem aqui — veja [Instabilidade do reator](reactor_instability.md).

## Reator válido mas não produzindo?

| Verificação | |
|-------|---|
| Porta de energia presente e cabeada? | RF precisa de uma [Porta de Energia](power_ports.md) com algo aceitando energia do lado de **fora**. |
| Modo só-RF? | Buffer de refrigerante vazio = nenhum fluido exigido; modo água/vapor precisa de refrigerante + caminho de extração. |
| Porta de redstone? | O reator pode ficar em **OFF** até o modo + sinal da porta permitirem rodar. |
| Resíduo acumulando? | Adicione uma [Porta de Recursos](resource_port.md) de **Extrair** ou esvazie o resíduo manualmente. |

Dicas de ferramenta e a linha de estado nesta tela explicam o estado atual.
