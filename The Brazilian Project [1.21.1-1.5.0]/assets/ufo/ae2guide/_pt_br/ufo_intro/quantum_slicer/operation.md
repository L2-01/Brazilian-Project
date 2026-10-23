---
navigation:
  parent: ufo_intro/quantum_slicer.md
  title: Pipeline de Produção
  icon: ufo:quantum_slicer_controller
  position: 20
---

# Pipeline de Produção do Fatiador Quântico

O Fatiador transforma materiais de montante em componentes impressos e fatiados consumidos
por receitas de processadores. Trate-o como o primeiro fornecedor de uma cadeia AE2 de duas máquinas.

1. Codifique um padrão de processamento do Fatiador com a entrada e a saída base exatas do JEI.
2. Armazene-o no Buffer de Padrões Quântico desta máquina, ou no Buffer vinculado ao seu Proxy.
3. Codifique a receita final de processador correspondente para o
   [Montador de Processador Quântico](../quantum_processor_assembler.md).
4. Requisite um único processador final e verifique se os dois fornecedores foram agendados.
5. Aumente o tamanho do lote só depois que os dois caminhos de saída retornarem ao ME de forma confiável.

O controlador oferece 27 threads persistentes, ou 9 no Modo Seguro. A aceitação parcial
de saída é registrada por thread; o restante rejeitado fica em buffer em vez de
ser jogado de novo ou perdido.

## Falhas Comuns do Pipeline

- **Padrão final indisponível:** verifique se o Montador está formado e online.
- **Componente impresso acumulando:** verifique a receita final e seu padrão.
- **CPU de fabricação esperando:** inspecione `OUTPUT_BLOCKED`, energia da grade e capacidade de itens.
- **Tier de receita errado:** instale um único tier de gerador de campo uniforme e suficiente.
