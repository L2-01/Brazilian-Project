---
navigation:
  parent: ufo_intro/qmf.md
  title: Operação e Receitas
  icon: ufo:quantum_matter_fabricator_controller
  position: 20
---

# Operação e Receitas do QMF

O QMF executa tanto receitas nativas do QMF quanto receitas de DMA compatíveis. Os
requisitos da receita são verificados contra o tier da máquina antes de qualquer recurso ser
comprometido.

## Checklist de Inicialização

1. Confirme **FORMED** e **GRID ONLINE**.
2. Confirme que o tier MK exibido atende ao requisito da receita.
3. Forneça ingredientes de item/fluido e energia AE suficiente.
4. Mantenha um caminho de saída disponível.
5. Comece com uma thread antes de despachar um lote grande.

## Ciclo de Vida da Thread

Cada trabalho aceito ocupa um dos 27 espaços de processo persistentes. Um espaço reserva
chaves de entrada exatas, cobra seu registro de energia, progride, prepara a saída determinística
e tenta a inserção de novo até o armazenamento aceitá-la. Recarregar ou perder o AE2 pausa
o espaço sem descartar sua contabilidade.

| Estado | Significado | Ação |
|---|---|---|
| `RUNNING` | Energia e requisitos disponíveis | Nenhuma |
| `PAUSED` | Thread pausada pelo controle da sua célula | Retome quando pronto |
| `PAUSED_NO_GRID` | Nó/rede ME indisponível | Restaure cabo, energia e chunks carregados |
| `OUTPUT_BLOCKED` | A saída prometida está esperando | Libere capacidade ME correspondente |
| `UNFORMED` | A estrutura não corresponde mais | Escaneie e repare as posições destacadas |

## Escalando com Segurança

O modo normal admite até **27** trabalhos simultâneos; o Modo Seguro admite **9**. Novos
pedidos esperam quando todos os espaços permitidos estão ocupados. Reservas existentes não são
silenciosamente apagadas quando o limite ou o tier muda.
