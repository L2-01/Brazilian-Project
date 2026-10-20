---
navigation:
  parent: ufo_intro/quantum_slicer.md
  title: Pipeline de Produção
  icon: ufo:quantum_slicer_controller
  position: 20
---

# Pipeline de Produção do Fatiador Quântico

O Fatiador transforma materiais anteriores em componentes impressos e fatiados consumidos
pelas receitas de processador. Trate-o como o primeiro fornecedor de uma cadeia AE2 de duas máquinas.

1. Codifique um padrão de processamento do Fatiador com a entrada exata e a saída base do JEI.
2. Guarde-o no Buffer de Padrões Quântico desta máquina, ou no Buffer vinculado ao seu Proxy.
3. Codifique a receita de processador final correspondente para o
   [Montador de Processador Quântico](../quantum_processor_assembler.md).
4. Peça um único processador final e verifique se os dois fornecedores são agendados.
5. Aumente o tamanho do lote só depois que ambos os caminhos de saída retornarem à ME de forma confiável.

O controlador oferece 27 threads persistentes, ou 9 no Modo Seguro. A aceitação parcial de saída
é registrada por thread; o resto rejeitado fica em buffer em vez
de ser rolado de novo ou perdido.

## Falhas Comuns do Pipeline

- **Padrão final indisponível:** verifique se o Montador está formado e online.
- **Componente impresso acumula:** verifique a receita final e seu padrão.
- **CPU de fabricação esperando:** inspecione `OUTPUT_BLOCKED`, energia da rede e capacidade de itens.
- **Tier de receita errado:** instale um tier de gerador de campo uniforme e suficiente.
