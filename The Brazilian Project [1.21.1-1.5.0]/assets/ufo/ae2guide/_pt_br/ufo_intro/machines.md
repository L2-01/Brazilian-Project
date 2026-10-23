---
navigation:
  title: Máquinas
  icon: ufo:quantum_matter_fabricator_controller
  parent: ufo_intro/index.md
  position: 20
---

# Máquinas

A produção UFO é dividida em máquinas com responsabilidades distintas. O DMA
é flexível e compacto; os multiblocos universais adicionam despacho de padrões AE2 e
paralelismo; o Nexus Estelar lida com simulações de fim de jogo longas e caras.

<SubPages />

## Controles dos Controladores Universais

- **Escanear** valida a estrutura e reporta posições faltantes ou inválidas.
- **Modo Seguro** limita a execução paralela a 9 e interrompe o trabalho no limite térmico.
- **Sobrecarga** aumenta o progresso por tick enquanto gera substancialmente mais
  calor.
- As páginas de processo mostram até 27 trabalhos independentes. Pausar afeta apenas o
  processo selecionado e não apaga seus insumos, energia ou progresso.

## Estados Comuns de Execução

| Estado | Significado | Primeira verificação |
|---|---|---|
| `UNFORMED` | Estrutura não corresponde | Execute o Escanear e inspecione os blocos destacados |
| `PAUSED_NO_GRID` | Sem nó AE2 energizado utilizável | Face do cabo, canal e energia da grade |
| `IDLE` | Formada, conectada, sem trabalho executável | Padrão e tier da receita |
| `RUNNING` | Pelo menos uma thread está progredindo | Temperatura e capacidade de saída |
| `OUTPUT_BLOCKED` | A saída concluída não pode entrar no armazenamento | Libere armazenamento ME ou corrija o acesso de saída |
| `INVALID_RECIPE` | Processo salvo não resolve mais | Datapack/recarga e caminho de reembolso |
