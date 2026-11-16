---
navigation:
  parent: multiblock/multiblock-index.md
  title: Controlador do Reator
  icon: reactor_controller
  position: 20
item_ids:
  - colossal_reactors:reactor_controller
categories:
  - multiblock
---

# Controlador do Reator

<BlockImage id="reactor_controller" scale="4" />

Abra o controlador **clicando com o botão direito** no bloco quando ele estiver numa face **lateral** do revestimento (não no topo ou na base), **substituindo um bloco de revestimento** na moldura externa com a tela voltada **para fora**.

Novo em multiblocos? Comece com [Primeiros passos](colossal_reactors:multiblock/getting_started.md).

## Operação

- **Validar / operar** — a primeira abertura executa a validação; quando válido, o reator pode ser **LIGADO** e mostra leituras de RF/tique, combustível e refrigerante.
- **Combustível** — mova combustível entre seu inventário e o armazenamento das barras quando os espaços forem exibidos.
- **Fluido refrigerante** — veja o nível e encha/drene quando os controles forem oferecidos (opcional para jogo **só-RF** com o buffer de refrigerante vazio).
- **Reiniciar** — revalida a estrutura e atualiza os tamanhos dos tanques das portas depois que você muda a construção ou as configurações das portas.

## Parando sem quebrar o multibloco

Use uma [Porta de Redstone do Reator](redstone_port.md) se quiser que redstone externa **segure** ou **pare** a operação enquanto a casca permanece formada. **Sem** uma porta de redstone, o reator funciona sempre que estiver válido e **LIGADO** (sem portão de redstone).

Se leituras de **estabilidade** estiverem habilitadas no seu pacote, elas aparecem aqui — veja [Instabilidade do reator](reactor_instability.md).

## Reator válido mas sem produzir?

| Verificação | |
|-------|---|
| Porta de energia presente e cabeada? | RF precisa de uma [Porta de Energia](power_ports.md) com algo aceitando energia do **lado de fora**. |
| Modo só-RF? | Buffer de refrigerante vazio = nenhum fluido necessário; o modo água/vapor precisa de refrigerante + caminho de extração. |
| Porta de redstone? | O reator pode ficar **DESLIGADO** até que o modo + sinal da porta permitam funcionar. |
| Resíduo acumulando? | Adicione uma [Porta de Recursos](resource_port.md) **EXTRAIR** ou esvazie o resíduo manualmente. |

As dicas e a linha de status nesta tela explicam o estado atual.
