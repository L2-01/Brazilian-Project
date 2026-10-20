---
navigation:
  title: Máquinas
  icon: ufo:quantum_matter_fabricator_controller
  parent: ufo_intro/index.md
  position: 20
---

# Máquinas

A produção UFO é dividida em máquinas com responsabilidades distintas. O DMA
é flexível e compacto; os multiblocos universais adicionam despacho de padrões
AE2 e paralelismo; o Nexus Estelar cuida das simulações longas e caras do fim
de jogo.

<SubPages />

## Controles do Controlador Universal

- **Escanear** valida a estrutura e reporta posições faltantes ou inválidas.
- **Modo Seguro** limita a execução paralela a 9 e interrompe o trabalho no limite térmico.
- **Overclock** aumenta o progresso por tique ao mesmo tempo em que gera
  substancialmente mais calor.
- As páginas de processo mostram até 27 trabalhos independentes. Pausar afeta
  apenas o processo selecionado e não apaga suas entradas, energia ou progresso.

## Estados Comuns de Execução

| Estado | Significado | Primeira verificação |
|---|---|---|
| `UNFORMED` | Estrutura não corresponde | Execute Escanear e inspecione os blocos destacados |
| `PAUSED_NO_GRID` | Nenhum nó AE2 energizado utilizável | Face do cabo, canal e energia da rede |
| `IDLE` | Montada, conectada, sem trabalho executável | Padrão e nível da receita |
| `RUNNING` | Pelo menos um trabalho está progredindo | Temperatura e capacidade de saída |
| `OUTPUT_BLOCKED` | Saída finalizada não consegue entrar no armazenamento | Libere armazenamento ME ou corrija o acesso à saída |
| `INVALID_RECIPE` | Processo salvo não resolve mais | Datapack/reload e caminho de reembolso |
