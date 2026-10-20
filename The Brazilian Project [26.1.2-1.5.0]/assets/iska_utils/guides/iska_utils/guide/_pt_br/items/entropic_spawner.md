---
navigation:
  title: Gerador Entropizado
  icon: iska_utils:entropic_spawner
  parent: hubs/world_and_machines.md
  position: 37
item_ids:
  - iska_utils:entropic_spawner
categories:
  - Mundo e máquinas
---
# Gerador Entropizado

<ItemImage id="iska_utils:entropic_spawner" />

## O que faz

**Gerador de criaturas** automatizado. Quando as condições são atendidas, ele invoca o tipo de criatura configurado **no bloco diretamente acima** da máquina. Diferente de um gerador vanilla, você escolhe a criatura com um **ovo gerador** e pode melhorar tempo, tamanho do lote e combustível com espaços de módulo na GUI.

## Definindo a criatura

Use um **ovo gerador** no bloco (mesma interação de configurar um gerador vanilla). O ovo é consumido a menos que você esteja no criativo. Abra a GUI para confirmar a criatura selecionada e a contagem para o próximo ciclo.

Enquanto a máquina está **ativa**, uma pequena **prévia giratória** da criatura configurada aparece dentro do bloco.

## Ciclo de geração

1. Depois que uma criatura é definida, o gerador espera um **intervalo aleatório** antes de cada ciclo.
2. Ao fim do intervalo, ele tenta gerar **uma criatura**, mais **uma criatura extra por Módulo de Produção empilhado** no espaço de módulo.
3. A geração **pausa** enquanto **muitas entidades vivas** estiverem empilhadas acima do bloco (teto de superlotação no servidor). O temporizador pode continuar avançando dependendo do modo de redstone, mas nenhuma criatura aparece até que saiam o suficiente.
4. Se um **limite de gerações por vida útil** se aplicar no seu mundo, a GUI mostra quando a máquina o atingiu e a geração para permanentemente até o bloco ser substituído ou o limite ser zerado por outros meios.

As criaturas são geradas **centralizadas acima** do bloco. Apenas **colisão sólida** bloqueia a colocação; nível de luz e regras vanilla de geração são ignorados.

## Combustível de entropia

Coloque **Gota de Entropia** (ou outro combustível de entropia aceito pela Mesa Ancestral) no **espaço de combustível**. Os itens são convertidos num **buffer interno de carga** mostrado como porcentagem abaixo do espaço.

- O gerador **gera sem carga** — combustível **não** é necessário para gerar criaturas.
- Enquanto houver carga, a **contagem entre ciclos de geração corre mais rápido** (acumula com a redução de atraso do Relógio Entrópico).
- O espaço físico de combustível pode ser reabastecido à mão ou por automação enquanto o buffer absorve mais carga.

## Melhorias

| Espaço | Item | Efeito |
| ---- | ---- | ------ |
| Relógio | <ItemImage id="iska_utils:entropic_clock" /> **Relógio Entrópico** | Encurta o atraso entre ciclos de geração (acumula no espaço). Também melhora o **Acelerador Temporal** — veja **Módulos** → **Relógio Entrópico**. |
| Módulo | <ItemImage id="iska_utils:production_module" /> **Módulo de Produção** | Adiciona **uma criatura extra** por ciclo de geração para cada módulo na pilha. |

Ícones-fantasma em espaços vazios mostram itens válidos.

## GUI

| Controle | Função |
| ------- | ------- |
| Centro | Nome da criatura configurada e **tempo até a próxima geração** (ou mensagem de teto de vida útil). |
| Coluna esquerda | Relógio Entrópico (topo), Módulo de Produção (meio). |
| Espaço de combustível | Combustível de entropia; rótulo de porcentagem abaixo. |
| Botão de **redstone** (direita) | Alterna o modo de controle — clique esquerdo avança, clique direito volta. |
| **✕** | Fechar |

## Redstone

Mesma família das outras máquinas Iska, incluindo **Pulso** neste bloco:

| Modo | Comportamento |
| ---- | --------- |
| **Ignorar** | Sempre roda quando as demais condições são atendidas. |
| **Baixo** | Roda apenas **sem** sinal de redstone. |
| **Alto** | Roda apenas **com** sinal de redstone. |
| **Pulso** | O temporizador avança enquanto energizado; **um ciclo de geração** dispara numa **borda de subida** de redstone. |
| **Desativado** | Nunca gera. |

## Estados do bloco

- **Inativo** — nenhuma criatura configurada, redstone bloqueando a operação ou teto de vida útil atingido.
- **Ativo** — pronto para contar e gerar.
- **Gerando** — breve flash da textura superior quando criaturas são criadas.

## Automação

Espaços de módulo e combustível aceitam **funis e tubos de itens**. Quebrar o bloco larga os módulos e o combustível armazenados.

## Dicas

- Deixe **espaço livre** no bloco diretamente acima do gerador e mantenha-o sem blocos sólidos.
- Combine com um **Ceifador de Criaturas** e uma **Caixa Coletora** para farms autônomas.
- Empilhe **Módulos de Produção** para vazão; empilhe **Relógios Entrópicos** para ciclos mais rápidos; **combustível de entropia** opcional encurta ainda mais o atraso.
- Veja **Módulos** → **Módulo de Produção** e **Relógio Entrópico** para as páginas compartilhadas de módulos.
- Use redstone **Alta** ou **Pulso** para controlar farms por botões ou relógios.