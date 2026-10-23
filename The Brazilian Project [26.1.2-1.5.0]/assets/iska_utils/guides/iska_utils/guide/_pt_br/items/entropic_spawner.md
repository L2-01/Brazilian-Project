---
navigation:
  title: Gerador Entropizado
  icon: iska_utils:entropic_spawner
  parent: hubs/world_and_machines.md
  position: 37
item_ids:
  - iska_utils:entropic_spawner
categories:
  - World and machines
---
# Gerador Entropizado

<ItemImage id="iska_utils:entropic_spawner" />

## O que faz

**Gerador de criaturas** automatizado. Quando as condições são atendidas, ele invoca o tipo de criatura configurado **no bloco diretamente acima** da máquina. Diferente de um gerador vanilla, você escolhe a criatura com um **ovo gerador** e pode melhorar o tempo, o tamanho do lote e o combustível com slots de módulos na GUI.

## Definindo a criatura

Use um **ovo gerador** no bloco (mesma interação de configurar um gerador vanilla). O ovo é consumido, a menos que você esteja no criativo. Abra a GUI para confirmar a criatura selecionada e a contagem regressiva para o próximo ciclo.

Enquanto a máquina está **ativa**, uma pequena **prévia giratória** da criatura configurada aparece dentro do bloco.

## Ciclo de spawn

1. Depois de definir a criatura, o gerador aguarda um **intervalo aleatório** antes de cada ciclo.
2. Ao fim do intervalo, tenta gerar **uma criatura**, mais **uma criatura extra por Módulo de Produção** empilhado no slot de módulo.
3. O spawn **pausa** enquanto houver **entidades vivas demais** acumuladas acima do bloco (limite de aglomeração do servidor). O temporizador pode continuar avançando conforme o modo de redstone, mas nenhuma criatura aparece até que saiam o suficiente.
4. Se um **limite de spawns vitalício** se aplicar ao seu mundo, a GUI mostra quando a máquina o atingiu e o spawn para permanentemente até o bloco ser recolocado ou o limite zerado por outros meios.

As criaturas aparecem **centralizadas acima** do bloco. Só **colisão sólida** impede a colocação; nível de luz e regras vanilla de spawn são ignorados.

## Combustível de entropia

Coloque **Gota de Entropia** (ou outro combustível de entropia aceito pela Mesa Ancestral) no **slot de combustível**. Os itens são convertidos num **buffer interno de carga** mostrado como porcentagem abaixo do slot.

- O gerador **gera sem carga** — o combustível **não** é necessário para produzir criaturas.
- Enquanto houver carga, a **contagem regressiva entre ciclos corre mais rápido** (acumula com a redução de atraso do Relógio Entrópico).
- O slot físico de combustível pode ser reabastecido à mão ou por automação enquanto o buffer absorve mais carga.

## Melhorias

| Slot | Item | Efeito |
| ---- | ---- | ------ |
| Relógio | <ItemImage id="iska_utils:entropic_clock" /> **Relógio Entrópico** | Encurta o atraso entre ciclos de spawn (empilha no slot). Também melhora o **Acelerador Temporal** — veja **Módulos** → **Relógio Entrópico**. |
| Módulo | <ItemImage id="iska_utils:production_module" /> **Módulo de Produção** | Adiciona **uma criatura extra** por ciclo de spawn para cada módulo na pilha. |

Ícones-fantasma nos slots vazios mostram itens válidos.

## GUI

| Controle | Função |
| ------- | ------- |
| Centro | Nome da criatura configurada e **tempo até o próximo spawn** (ou mensagem de limite vitalício). |
| Coluna esquerda | Relógio Entrópico (topo), Módulo de Produção (meio). |
| Slot de combustível | Combustível de entropia; rótulo de porcentagem abaixo. |
| Botão **Redstone** (direita) | Alterna o modo de controle — clique esquerdo avança, direito volta. |
| **✕** | Fechar |

## Redstone

Mesma família das outras máquinas Iska, incluindo **Pulso** neste bloco:

| Modo | Comportamento |
| ---- | --------- |
| **Ignorar** | Sempre funciona quando as demais condições são atendidas. |
| **Baixo** | Funciona apenas **sem** sinal de redstone. |
| **Alto** | Funciona apenas **com** sinal de redstone. |
| **Pulso** | O temporizador avança enquanto energizado; **um ciclo de spawn** dispara numa borda de redstone **subindo**. |
| **Desativado** | Nunca gera. |

## Estados do bloco

- **Inativo** — sem criatura configurada, redstone bloqueando ou limite vitalício atingido.
- **Ativo** — pronto para contar e gerar.
- **Gerando** — breve flash na textura do topo quando criaturas são criadas.

## Automação

Os slots de módulo e combustível aceitam **funis e canos de itens**. Quebrar o bloco derruba módulos e combustível armazenados.

## Dicas

- Deixe **espaço livre** no bloco diretamente acima do gerador, sem blocos sólidos.
- Combine com um **Ceifador de Criaturas** e uma **Caixa Coletora** para farms autônomas.
- Empilhe **Módulos de Produção** para vazão; empilhe **Relógios Entrópicos** para ciclos mais rápidos; **combustível de entropia** opcional encurta ainda mais o atraso.
- Veja **Módulos** → **Módulo de Produção** e **Relógio Entrópico** para as páginas de módulos compartilhados.
- Use redstone **Alta** ou **Pulso** para condicionar farms a botões ou relógios.
