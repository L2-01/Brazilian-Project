---
navigation:
  parent: index.md
  title: Cartão de Circuito Programado
  icon: pccard:card_programmed_circuit
  position: 10
categories:
  - tools
item_ids:
  - pccard:card_programmed_circuit
---

# Cartão de Circuito Programado

Um Provedor de Padrões com este cartão inserido mudará o número do circuito em vez de enviar um circuito programado para
as máquinas do GregTech.

## Receita

<RecipeFor id="pccard:card_programmed_circuit" />

## Registro de Padrão

Inclua o circuito programado no padrão. Ele funcionará mesmo que não haja circuito programado na rede.  
Colocá-lo manualmente toda vez é inconveniente, então o comportamento foi modificado para incluir o circuito programado ao
registrar receitas do JEI ou EMI.  
Se o circuito programado não estiver sendo colocado, ou se quiser desativar esse recurso, verifique a opção `jei_integration`
na configuração.  
![Registro de Padrão](../pic/encode_pattern.png)

## Provedor de Padrões

Coloque o Cartão de Circuito Programado no espaço de melhoria do Provedor de Padrões.  
**Não se esqueça de ativar o Modo de Bloqueio do Provedor de Padrões.**  
![Provedor de Padrões](../pic/pattern_provider.png)

### OBSERVAÇÃO

> - Padrões sem circuito programado serão tratados como circuito número 0.
> - Os modos de bloqueio podem não funcionar bem se vários provedores de padrões estiverem adjacentes à mesma máquina.

## Pedido de Fabricação

Você pode encomendá-lo como um item normal. O circuito programado não aparecerá no plano de fabricação.  
Se aparecer, verifique se o Cartão de Circuito Programado está instalado no Provedor de Padrões.
