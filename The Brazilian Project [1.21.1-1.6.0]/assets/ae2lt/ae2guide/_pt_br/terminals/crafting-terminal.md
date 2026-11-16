---
navigation:
  title: Terminal de Fabricação Tianshu
  icon: ae2lt:tianshu_crafting_terminal
  parent: index.md
  position: 48
item_ids:
  - ae2lt:tianshu_crafting_terminal
  - ae2lt:wireless_tianshu_crafting_terminal
---

# Terminal de Fabricação Tianshu

O <ItemLink id="ae2lt:tianshu_crafting_terminal" /> combina uma bancada de trabalho, mesa de ferraria, Bigorna de Liga de Sobrecarga, cortador de pedras e Bancada de Células num único terminal ME. Conecte-o a um cabo; **nenhum Vetor de Supercomputação Tianshu é exigido**.

<RecipeFor id="ae2lt:tianshu_crafting_terminal" />

A versão sem fio oferece as mesmas páginas de trabalho e também pode ser usada como módulo do Terminal Universal Sem Fio.

<RecipeFor id="ae2lt:wireless_tianshu_crafting_terminal" />

<a name="work-pages"></a>

## Páginas de Trabalho

Use as abas à direita para alternar páginas:

* **Fabricação:** Faça itens na grade de fabricação 3×3.
* **Ferraria:** Insira um molde, uma base e uma adição, depois pegue o resultado.
* **Bigorna:** Repare, combine encantamentos ou renomeie itens. Pegar o resultado custa a experiência exibida.
* **Corte em pedra:** Insira um ingrediente, selecione uma receita e pegue o resultado.
* **Bancada de Células:** Insira uma célula de armazenamento ME editável para configurar partições, cartões de melhoria e correspondência aproximada. Role as áreas de filtro e de melhorias separadamente; o modo de cópia controla se a configuração permanece após remover a célula.

As páginas de fabricação, ferraria, corte em pedra e bigorna suportam transferência de receitas do JEI. **Transferência com Ctrl-clique** usa primeiro os ingredientes disponíveis, depois abre a confirmação de fabricação para os materiais faltantes fabricáveis. Transfira de novo após a tarefa completar.

## Entradas Salvas

Alternar páginas ou fechar o terminal mantém suas entradas. Entradas e ajustes de ferraria, bigorna, corte em pedra e Bancada de Células ficam com o terminal, então você pode continuar ao reabri-lo. Eles não voltam ao seu inventário ao fechar. Todos os jogadores usando o mesmo terminal com fio compartilham seus slots de trabalho.

<a name="inventory-maintenance"></a>

## Manutenção de Estoque

Quando um Vetor de Supercomputação Tianshu formado está disponível na rede, o terminal pode configurar regras automáticas de reposição por item: a fabricação começa quando a quantidade armazenada cai **abaixo** do limite inferior, para quando **atinge** o limite superior, e cada tarefa solicita o tamanho de lote configurado.

### Configuração

* Dê **Shift + botão do meio** num item fabricável no terminal para abrir seu editor de Manutenção de Estoque, que funciona de forma parecida com um Solicitador ME.
* O botão **Manutenção de Estoque** abre uma visão geral listando cada entrada configurada, incluindo materiais cujo estoque atual é zero. Clique numa entrada para editar sua regra.
* A visão **Mantível** filtra a lista do terminal para os materiais configurados para manutenção de estoque, facilitando revê-los juntos.

* **Iniciar abaixo de:** Inicia a fabricação automática quando o material cai abaixo do valor configurado.
* **Parar acima de:** Para a fabricação automática quando o material sobe acima do valor configurado.
* **Por tarefa:** Define a quantidade solicitada por cada tarefa de fabricação automática.
* **Habilitado:** Habilita ou desabilita a regra de manutenção deste material.
* **Verificar agora:** Verifica imediatamente o estoque deste material.
* **Cancelar tarefa:** Cancela a tarefa de fabricação automática em execução.
* **Topologia de fabricação:** Configura a retenção de materiais para que os materiais especificados permaneçam em estoque.

Clique em qualquer entrada em **Topologia de fabricação** para definir quanto daquele material as tarefas de manutenção não podem consumir. Alterne de **Global Tianshu** para **Adicional da regra** para configurar uma reserva extra para esta regra. Uma reserva específica da regra só muda a proteção efetiva quando é maior que a reserva global correspondente; veja "Reservas Globais" abaixo.

> Materiais configurados mostram um marcador colorido nos terminais Tianshu: cinza significa regra desabilitada, verde significa meta de estoque satisfeita, laranja significa regra ociosa ou fabricando, e vermelho indica materiais faltantes.

<a name="global-reserves"></a>

## Reservas Globais

Uma reserva global protege uma quantidade de um item das tarefas automáticas de manutenção. Tarefas de fabricação solicitadas pelo jogador ainda podem usar esse estoque protegido.
Use a caixa de pesquisa para encontrar conteúdo armazenado na rede e clique num item para configurá-lo. Itens também podem ser arrastados do JEI ou EMI para o alvo no canto inferior esquerdo.
**Correspondência exata** protege apenas a variante de componente selecionada, incluindo propriedades como durabilidade e encantamentos. **Ignorar componentes** agrupa todas as variantes com o mesmo ID de item.
**Reserva** define a quantidade protegida. Defina-a como `-1` para reservar todo o estoque existente.

Se a visão geral virar uma página de recuperação, zere ou apague as entradas antigas uma a uma para revelar as entradas restantes.

<a name="settings"></a>

## Ajustes do Terminal

Abra **Ajustes do Terminal → Ajustes Tianshu** para habilitar **ingredientes sem fio do JEI**. Terminais com fio e sem fio compartilham este ajuste.

Este recurso fica desligado por padrão. Carregue um terminal Tianshu sem fio energizado e conectado no seu inventário ou no Curios. Ao transferir uma receita para uma bancada ou máquina com suporte a transferência do JEI, os itens faltantes são fornecidos pela rede. Módulos Tianshu num Terminal Universal Sem Fio também funcionam.

Mantenha espaço livre no inventário para os ingredientes. Um clique normal preenche uma receita; Shift preenche em massa. Apenas itens são fornecidos. Se a transferência falhar ou você fechar a tela, os itens extraídos permanecem no seu inventário.
