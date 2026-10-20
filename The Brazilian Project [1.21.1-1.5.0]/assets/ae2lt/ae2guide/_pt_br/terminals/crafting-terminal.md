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

O <ItemLink id="ae2lt:tianshu_crafting_terminal" /> combina uma bancada de trabalho, mesa de ferraria, Bigorna de Liga de Sobrecarga, cortador de pedra e Bancada de Células num único terminal ME. Conecte-o a um cabo; **nenhum Vetor de Supercomputação Tianshu é necessário**.

<RecipeFor id="ae2lt:tianshu_crafting_terminal" />

A versão sem fio oferece as mesmas páginas de trabalho e também pode ser usada como módulo de Terminal Universal Sem Fio.

<RecipeFor id="ae2lt:wireless_tianshu_crafting_terminal" />

<a name="work-pages"></a>

## Páginas de Trabalho

Use as abas à direita para alternar entre as páginas:

* **Fabricação:** Faça itens na grade de fabricação 3×3.
* **Ferraria:** Insira um molde, uma base e uma adição, depois retire o resultado.
* **Bigorna:** Repare, combine encantamentos ou renomeie itens. Retirar o resultado custa a experiência exibida.
* **Corte de Pedra:** Insira um ingrediente, selecione uma receita e retire o resultado.
* **Bancada de Células:** Insira uma célula de armazenamento ME editável para configurar partições, cartões de melhoria e casamento fuzzy. Role as áreas de filtro e de melhorias separadamente; o modo de cópia controla se a configuração permanece após remover a célula.

As páginas de fabricação, ferraria, corte de pedra e bigorna suportam transferência de receitas do JEI. A **transferência com Ctrl+clique** usa primeiro os ingredientes disponíveis, depois abre a confirmação de fabricação para os materiais fabricáveis faltantes. Transfira novamente após o trabalho ser concluído.

## Entradas Salvas

Alternar de página ou fechar o terminal mantém suas entradas. As entradas e configurações de ferraria, bigorna, corte de pedra e Bancada de Células ficam com o terminal, então você pode continuar ao reabri-lo. Elas não retornam ao seu inventário ao fechar. Todos os jogadores usando o mesmo terminal com fio compartilham seus espaços de trabalho.

<a name="inventory-maintenance"></a>

## Manutenção de Inventário

Quando um Vetor de Supercomputação Tianshu formado está disponível na rede, o terminal pode configurar regras automáticas de reabastecimento por item: a fabricação começa quando a quantidade armazenada cai **abaixo** do limite inferior, para quando **atinge** o limite superior, e cada trabalho solicita o tamanho de lote configurado.

### Configuração

* **Shift + botão do meio** num item fabricável no terminal abre seu editor de Manutenção de Inventário, que funciona de forma parecida com um Solicitador ME.
* O botão **Manutenção de Inventário** abre uma visão geral listando cada entrada configurada, incluindo materiais cujo estoque atual é zero. Clique numa entrada para editar sua regra.
* A visão **Mantível** filtra a lista do terminal para os materiais configurados para manutenção de inventário, facilitando revisá-los juntos.

* **Iniciar abaixo de:** Inicia a fabricação automática quando o material cai abaixo do valor configurado.
* **Parar acima de:** Para a fabricação automática quando o material sobe acima do valor configurado.
* **Por trabalho:** Define a quantidade solicitada por cada trabalho de fabricação automática.
* **Ativado:** Ativa ou desativa a regra de manutenção deste material.
* **Verificar agora:** Verifica imediatamente o estoque deste material.
* **Cancelar trabalho:** Cancela o trabalho de fabricação automática em execução.
* **Topologia de fabricação:** Configura retenção de materiais para que materiais especificados permaneçam em estoque.

Clique em qualquer entrada em **Topologia de fabricação** para definir quanto daquele material os trabalhos de manutenção não podem consumir. Alterne **Tianshu global** para **Adicional da regra** para configurar uma reserva extra para esta regra. Uma reserva específica de regra só muda a proteção efetiva quando é maior que a reserva global correspondente; veja “Reservas Globais” abaixo.

> Materiais configurados mostram um marcador colorido nos terminais Tianshu: cinza significa regra desativada, verde significa alvo de estoque satisfeito, laranja significa regra ociosa ou fabricando, e vermelho indica materiais faltantes.

<a name="global-reserves"></a>

## Reservas Globais

Uma reserva global protege uma quantidade de um item dos trabalhos automáticos de manutenção. Trabalhos de fabricação solicitados pelo jogador ainda podem usar esse estoque protegido.
Use a caixa de busca para encontrar conteúdo armazenado na rede e clique num item para configurá-lo. Itens também podem ser arrastados do JEI ou EMI para o alvo no canto inferior esquerdo.
**Correspondência exata** protege apenas a variante de componente selecionada, incluindo propriedades como durabilidade e encantamentos. **Ignorar componentes** agrupa todas as variantes com o mesmo ID de item.
**Reserva** define a quantidade protegida. Defina-a como `-1` para reservar todo o estoque existente.

Se a visão geral virar uma página de recuperação, zere ou delete entradas antigas uma a uma para revelar as entradas restantes.

<a name="settings"></a>

## Configurações do Terminal

Abra **Configurações do Terminal → Configurações do Tianshu** para ativar **Ingredientes sem fio do JEI**. Terminais com fio e sem fio compartilham essa configuração.

Este recurso vem desativado por padrão. Carregue um terminal Tianshu sem fio energizado e conectado no seu inventário ou Curios. Ao transferir uma receita para uma bancada ou máquina com suporte a transferência do JEI, itens faltantes são fornecidos pela rede. Módulos Tianshu num Terminal Universal Sem Fio também funcionam.

Mantenha espaço livre no inventário para os ingredientes. Um clique normal preenche uma receita; Shift preenche em massa. Apenas itens são fornecidos. Se a transferência falhar ou você fechar a tela, os itens extraídos permanecem no seu inventário.
