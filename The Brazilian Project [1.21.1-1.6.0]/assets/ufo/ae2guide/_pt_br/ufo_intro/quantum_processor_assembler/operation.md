---
navigation:
  parent: ufo_intro/quantum_processor_assembler.md
  title: Montagem de Processadores
  icon: ufo:quantum_processor_assembler_controller
  position: 20
---

# Montagem de Processadores

Este é o fornecedor de finalização para famílias de processadores suportadas. Ele aceita
apenas receitas cujos insumos, saídas e tier exigido correspondem ao padrão codificado.

## Cadeia AE2 Recomendada

1. Publique todo padrão pré-requisito de componente impresso pelo Fatiador Quântico.
2. Publique o padrão de montagem final pelo seu Buffer de Padrões, ou pelo Buffer vinculado ao seu Proxy.
3. Mantenha os dois fornecedores na mesma rede de fabricação energizada.
4. Requisite um resultado e inspecione o plano de fabricação antes de requisitar trabalho em massa.

Até 27 trabalhos podem ser reservados simultaneamente, reduzidos a 9 no Modo Seguro. Trabalhos
que já possuem insumos permanecem persistentes entre recarga e perda temporária de grade.
A saída é inserida em lotes determinísticos; quantidades rejeitadas permanecem anexadas
ao seu processo original.

## Diagnóstico de Receitas

Se a AE2 não selecionar este fornecedor, verifique a saída base codificada, as quantidades
exatas de insumos, o tier MK da máquina, a contagem de threads livres e a conexão de rede. Ingredientes
químicos exigem seu caminho de porta suportado e falham fechados se entregues como
uma chave desconhecida.
