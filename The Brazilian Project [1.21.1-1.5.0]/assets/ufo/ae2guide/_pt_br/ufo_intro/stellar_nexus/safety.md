---
navigation:
  parent: ufo_intro/stellar_nexus.md
  title: Segurança, Overclock e Recuperação
  icon: ufo:stellar_field_generator_t3
  position: 40
---

# Segurança, Overclock e Recuperação do Nexus

O Modo Seguro fica ligado por padrão. Ele multiplica o custo de energia, combustível e refrigerante por
**2,5**, mas executa um desligamento controlado no calor máximo. O Overclock fornece
**5× de velocidade**, com **10× de custo de AE** e **5× de carga de combustível, calor e refrigerante**.

Com o Modo Seguro desligado, atingir o calor máximo dispara a falha de contenção local
configurada. Dano destrutivo a blocos fica desligado por padrão; quando explicitamente
ativado por um administrador, permanece limitado por raio, trabalho por tique, orçamento total
de blocos e lista de permissão de dimensões.

## Tabela de Recuperação

| Sintoma | Causa provável | Recuperação |
|---|---|---|
| Estrutura inválida | Campo faltante/misturado ou contagem errada de escotilhas | Escaneie, repare a posição exata destacada |
| Energia não sobe | A escotilha de energia não tem fornecimento externo de FE | Verifique o cabo de FE, a fonte e o armazenamento da escotilha |
| Início rejeitado | Portão de receita, combustível, AE ou saída indisponível | Leia as linhas de validação do controlador |
| Calor sobe rápido demais | Refrigerante fraco/ausente ou Overclock | Desligue o Overclock, melhore o refrigerante, mantenha o Modo Seguro |
| Saída fica pendente | Capacidade/partição ME rejeita a chave | Restaure a capacidade correspondente; não reinicie a receita |
| Offline após recarregar | Parte da área/chunks indisponível | Carregue a estrutura inteira e permita a reconciliação |

Nunca desligue o Modo Seguro no primeiro ciclo de uma receita nova ou logo depois de
mudar o tier de campo, o roteamento de refrigerante ou a configuração térmica do servidor.
