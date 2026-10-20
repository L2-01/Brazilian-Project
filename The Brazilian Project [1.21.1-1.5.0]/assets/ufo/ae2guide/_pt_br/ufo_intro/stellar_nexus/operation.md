---
navigation:
  parent: ufo_intro/stellar_nexus.md
  title: Operação de Simulação
  icon: ufo:stellar_nexus_controller
  position: 30
---

# Operação de Simulação Estelar

## Primeiro Ciclo Seguro

1. Escaneie até a estrutura reportar formada e um tier de campo uniforme.
2. Verifique todos os quatro papéis de escotilha e suas conexões ME externas.
3. Espere o buffer interno de AE carregar.
4. Selecione uma receita e confirme seus portões de campo, entrada, saída, energia e refrigerante.
5. Mantenha o Modo Seguro ligado e o Overclock desligado.
6. Inicie um ciclo; monitore AE armazenada, calor e saída até a conclusão.

Iniciar compromete o combustível exigido e o custo de energia efetivo. A execução então acumula
calor e consome refrigerante. Perda temporária de rede pausa o progresso; a saída
prometida permanece em buffer se o armazenamento ME a recusar.

## Escala de Refrigerante

O pedido base ativo é **100 mB/t**. O Modo Seguro sobe para 250 mB/t e o
Overclock multiplica o resultado por cinco.

| Fluido | Eficiência padrão |
|---|---:|
| Criotêmio Gélido | 1 resfriamento / mB |
| Refrigerante Estável | 4 resfriamento / mB |
| Condensado de Bose-Einstein | 16 resfriamento / mB |

O tier de campo multiplica o resfriamento efetivo. A configuração do servidor pode mudar cada
eficiência ou desativar um fluido definindo-o como zero.
