---
navigation:
  parent: introduction/index.md
  title: Cartão de Fabricação Virtual
  position: 3
  icon: extendedae_plus:virtual_crafting_card
categories:
  - extendedae_plus items
item_ids:
  - extendedae_plus:virtual_crafting_card
---

# Cartão de Fabricação Virtual

<Row>
  <ItemImage id="extendedae_plus:virtual_crafting_card" scale="4" />
</Row>

O Cartão de Fabricação Virtual é uma melhoria especializada para Provedores de Padrões que conclui instantaneamente o "despacho final" de tarefas cujos produtos não precisam ser devolvidos ao armazenamento.

## Recursos e Efeitos

- **Conclusão Automática**: Marca a tarefa como concluída instantaneamente quando o provedor está prestes a despachar o lote final e a receita não exige devolver produtos à rede ME.
- **Liberação de Fila**: Libera a memória de fabricação imediatamente, sem esperar a devolução dos produtos, permitindo o agendamento seguinte.
- **Limite de Um Cartão**: Apenas 1 cartão pode ser instalado por Provedor de Padrões (incluindo versões estendidas).

## Cenários de Uso

| Cenário | Efeito |
| :--- | :--- |
| Construção de Multibloco | Materiais são marcados automaticamente como entregues ao serem despachados ao local alvo, sem esperar confirmação de devolução |
| Auxílio à Fabricação Manual | Materiais não automatizáveis (como Estrelas do Nether, livros encantados etc.) são despachados a um baú perto da bancada de trabalho, concluindo a tarefa após a coleta manual |
| Colocação de Blocos em Massa | Despacha grandes quantidades de blocos de construção direto para a hotbar, concluindo automaticamente após a colocação |
| Suprimento de Linha de Produção Automatizada | Conclui automaticamente após reabastecer insumos (como combustível de fornalha, frascos de experiência etc.) de linhas de produção automatizadas |

## Dispositivos Suportados

- <ItemLink id="ae2:pattern_provider" />
- <ItemLink id="ae2:pattern_provider_part" />
- <ItemLink id="extendedae_plus:ex_pattern_provider" />
- <ItemLink id="extendedae_plus:ex_pattern_provider_part" />

## Receita de Fabricação

<RecipeFor id="extendedae_plus:virtual_crafting_card" />
