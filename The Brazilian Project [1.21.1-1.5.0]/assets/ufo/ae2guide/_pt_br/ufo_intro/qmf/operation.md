---
navigation:
  parent: ufo_intro/qmf.md
  title: Operação e Receitas
  icon: ufo:quantum_matter_fabricator_controller
  position: 20
---

# Operação e Receitas do QMF

O QMF executa tanto receitas QMF nativas quanto receitas DMA compatíveis. Os requisitos
da receita são verificados contra o tier da máquina antes de qualquer recurso ser
comprometido.

## Checklist de Inicialização

1. Confirme **FORMED** e **GRID ONLINE**.
2. Confirme que o tier MK exibido atende ao requisito da receita.
3. Forneça ingredientes de itens/fluidos e energia AE suficiente.
4. Mantenha um caminho de saída disponível.
5. Comece com uma thread antes de despachar um lote grande.

## Ciclo de Vida das Threads

Cada trabalho aceito possui um dos 27 slots persistentes de processo. Um slot reserva chaves
exatas de insumos, cobra seu registro de energia, progride, prepara a saída determinística
e tenta inseri-la de novo até o armazenamento aceitá-la. Recarregar ou perder a AE2 pausa
o slot sem descartar sua contabilidade.

| Estado | Significado | Ação |
|---|---|---|
| `RUNNING` | Energia e requisitos disponíveis | Nenhuma |
| `PAUSED` | Thread pausada pelo controle da célula | Retomar quando pronto |
| `PAUSED_NO_GRID` | Nó/grade ME indisponível | Restaure cabo, energia e chunks carregados |
| `OUTPUT_BLOCKED` | Saída prometida aguardando | Libere capacidade ME correspondente |
| `UNFORMED` | Estrutura não corresponde mais | Escaneie e repare posições destacadas |

## Escalando com Segurança

O modo normal admite até **27** trabalhos simultâneos; o Modo Seguro admite **9**. Novas
requisições esperam quando todos os slots permitidos estão ocupados. Reservas existentes não
são deletadas silenciosamente quando o limite ou o tier muda.
