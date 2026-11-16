---
navigation:
  title: Temporizador Inteligente
  icon: iska_utils:smart_timer
  parent: hubs/world_and_machines.md
  position: 53
item_ids:
  - iska_utils:smart_timer
categories:
  - World and machines
---
# Temporizador Inteligente

<ItemImage id="iska_utils:smart_timer" />

## Propósito

O Temporizador Inteligente é uma **fonte de redstone repetitiva**. Ele alterna entre:

1. **Resfriamento** — sem saída (o bloco fica **desligado**).
2. **Pulso** — saída de redstone de **força 15** por uma duração definida.

Assim você tem um trem de pulsos com um intervalo silencioso entre eles, sem construir relógios gigantes de funis.

## GUI — dois temporizadores

Abra o bloco para ajustar **duas durações independentes** (mostradas em horas, minutos, segundos, mais os tiques restantes):

| Rótulo no jogo | Significado |
| ------------- | ------- |
| **Redstone desligada por:** | Tempo que o bloco fica **desligado** entre pulsos — este é o **resfriamento** antes da próxima fase **ligada**. |
| **Redstone ligada por:** | Quanto tempo cada **pulso** fica **ligado** (força total de redstone). |

**Padrões** (se não alterados): cerca de **5 segundos** de resfriamento, **3 segundos** de pulso (o servidor usa tiques internamente).

### Ajustando valores

- Fileiras de botões **+ / −** avançam em **horas, minutos, segundos** ou passos finos (**10 tiques / 5 tiques** — 0,5 s / 0,25 s a 20 TPS).
- Cada valor também mostra o **total de tiques** para construções precisas.
- A duração mínima aplicada pelo servidor é de **5 tiques** por fase.

Enquanto o pulso está **ativo**, o modo de redstone é ignorado — a fase LIGADA sempre corre até o fim.

## Saída de redstone

- O bloco **emite energia forte** quando "ligado": configurações com comparador veem **15** no estado energizado.
- Quando "desligado", a saída é **0**.

## Modos de controle de redstone (ao lado do botão de fechar)

Um pequeno ícone alterna **quando o resfriamento pode avançar** (a pausa entre pulsos). **Clique esquerdo** avança; **clique direito** volta.

| Ícone (dica) | Modo | Comportamento durante o resfriamento |
| ----------- | ---- | ------------------------- |
| Pólvora | **Ignorar redstone** | O resfriamento **sempre** corre; o temporizador nunca pausa. |
| Pó de redstone | **Baixo** | O resfriamento corre apenas enquanto **não** há energia de redstone adjacente (padrão). |
| Estilo tocha de redstone | **Alto** | O resfriamento corre apenas enquanto o bloco **está** energizado pelos vizinhos. |
| Barreira | **Desativado** | O resfriamento **nunca** avança — temporizador congelado até você mudar o modo. |

Durante o **pulso** (fase LIGADA), esse condicionamento não se aplica; o comprimento da saída é fixo pela **duração do sinal**.

## Dicas

- Use o modo **Baixo** para que uma alavanca possa **pausar** o relógio quando energizada (inverta a fiação se precisar de "correr quando energizado").
- Use **Ignorar** para um relógio que deve rodar independente de pó ou alavancas por perto.
- Combine com **comparadores** ou **blocos opacos** para ramificar sinais sem carregar a mesma face duas vezes.
