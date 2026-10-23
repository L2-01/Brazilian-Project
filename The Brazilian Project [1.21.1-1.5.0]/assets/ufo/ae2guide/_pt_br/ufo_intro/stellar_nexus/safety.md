---
navigation:
  parent: ufo_intro/stellar_nexus.md
  title: Segurança, Sobrecarga e Recuperação
  icon: ufo:stellar_field_generator_t3
  position: 40
---

# Segurança, Sobrecarga e Recuperação do Nexus

O Modo Seguro fica habilitado por padrão. Ele multiplica o custo de energia, combustível e refrigerante por
**2.5**, mas executa um desligamento controlado no calor máximo. A Sobrecarga fornece
**velocidade 5×**, com **custo de AE 10×** e **carga de combustível, calor e refrigerante 5×**.

Com o Modo Seguro desabilitado, atingir o calor máximo dispara a falha de contenção local
configurada. Dano destrutivo a blocos fica desligado por padrão; quando habilitado
explicitamente por um administrador, permanece limitado por raio, trabalho por tick, orçamento
total de blocos e lista de permissão de dimensões.

## Tabela de Recuperação

| Sintoma | Causa provável | Recuperação |
|---|---|---|
| Estrutura inválida | Campo faltante/misturado ou contagem errada de escotilhas | Escaneie, repare a posição destacada exata |
| Energia não sobe | Escotilha de energia sem suprimento externo de FE | Verifique o cabo FE, a fonte e o armazenamento da escotilha |
| Início rejeitado | Portão de receita, combustível, AE ou saída indisponível | Leia as linhas de validação do controlador |
| Calor sobe rápido demais | Refrigerante fraco/ausente ou Sobrecarga | Desabilite a Sobrecarga, melhore o refrigerante, mantenha o Modo Seguro |
| Saída permanece pendente | Capacidade/partição ME rejeita a chave | Restaure a capacidade correspondente; não reinicie a receita |
| Offline após recarga | Parte da área/chunks indisponível | Carregue a estrutura inteira e permita a reconciliação |

Nunca desabilite o Modo Seguro no primeiro ciclo de uma nova receita nem imediatamente após
mudar o tier de campo, o roteamento de refrigerante ou a configuração térmica do servidor.
