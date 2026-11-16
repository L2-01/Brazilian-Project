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
2. Verifique os quatro papéis de escotilha e suas conexões ME externas.
3. Aguarde o buffer interno de AE carregar.
4. Selecione uma receita e confirme seus portões de campo, insumos, saída, energia e refrigerante.
5. Mantenha o Modo Seguro habilitado e a Sobrecarga desabilitada.
6. Inicie um ciclo; monitore AE armazenado, calor e saída até a conclusão.

Iniciar compromete o combustível exigido e o custo efetivo de energia. A execução então acumula
calor e consome refrigerante. Perda temporária de rede pausa o progresso; a saída
prometida permanece em buffer se o armazenamento ME a recusar.

## Escala de Refrigerantes

A requisição ativa base é de **100 mB/t**. O Modo Seguro a eleva para 250 mB/t e a
Sobrecarga multiplica o resultado por cinco.

| Fluido | Eficiência padrão |
|---|---:|
| Criotêmio Gélido | 1 refrigeração / mB |
| Refrigerante Estável | 4 refrigeração / mB |
| Condensado de Bose-Einstein | 16 refrigeração / mB |

O tier de campo multiplica a refrigeração efetiva. A configuração do servidor pode mudar cada
eficiência ou desabilitar um fluido definindo-o como zero.
