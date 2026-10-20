---
navigation:
  title: Porta, Trabalhos e Planejamento Rápido
  icon: ae2lt:tianshu_supercomputer_port
  parent: tianshu/tianshu-index.md
  position: 30
item_ids:
  - ae2lt:tianshu_supercomputer_controller
  - ae2lt:tianshu_supercomputer_port
---

# Porta, Trabalhos e Planejamento Rápido

## Porta do Vetor de Supercomputação Tianshu

Após a formação, a <ItemLink id="ae2lt:tianshu_supercomputer_port" /> publica o multibloco na rede ME como uma CPU de fabricação chamada "Vetor de Supercomputação Tianshu". Cabos ME podem conectar nos seis lados apenas enquanto a estrutura está formada; eles não podem conectar enquanto ela está desformada. O multibloco formado consome **1 canal**. O consumo em repouso da Porta depende do Núcleo Principal instalado: Básico usa **256 AE/t**, Quântico usa **8.192 AE/t**, Sobrecarga usa **262.144 AE/t** e Multidimensional usa **8 AE/t**. Se a rede ME não puder fornecer essa energia, a porta não fica ativa e os terminais não podem se vincular ao conjunto.

O supercomputador não aceita novos trabalhos enquanto sua porta está offline, sua rede ME está sem energia, ou a estrutura está desformada. O estado dos trabalhos salvos persiste entre descarregamentos de chunk e pode continuar depois que a estrutura e a rede retornam.

O supercomputador não carrega à força nenhum chunk na sua área. Se qualquer chunk da estrutura for descarregado, a Porta desconecta e os trabalhos pausam. Ela reescaneia e retoma automaticamente depois que a estrutura completa é carregada de novo. Uma construção entre chunks precisa portanto de um carregador de chunks cobrindo a estrutura inteira.

## Terminal de Codificação de Padrões Tianshu

O [Terminal de Codificação de Padrões Tianshu](../terminals/pattern-encoding-terminal.md) estende o Terminal de Codificação de Padrões normal com codificação aprimorada de padrões de processamento, upload de padrões, autoria de padrões de circuito fechado e configuração de manutenção de inventário. É o ponto de entrada para autorar e gerenciar padrões específicos do Tianshu; veja sua página dedicada.

## Capacidade Compartilhada e Trabalhos Concorrentes

Diferente de uma CPU de fabricação convencional, o Vetor de Supercomputação Tianshu pode reter e executar vários trabalhos de fabricação de uma vez.

* Cada novo trabalho reserva o requisito de bytes do seu plano do armazenamento de fabricação total
* Trabalhos adicionais podem usar o mesmo supercomputador enquanto houver armazenamento não reservado suficiente
* Concluir ou cancelar um trabalho libera sua reserva
* Todos os trabalhos ativos compartilham o orçamento de despachos bem-sucedidos da configuração de núcleo; cada trabalho recebe seu próprio orçamento completo de cópias por tique, mas apenas padrões e alvos compatíveis com lotes podem usar mais de uma cópia por despacho

Se a tela de confirmação de fabricação reportar armazenamento de CPU insuficiente, espere os trabalhos ativos liberarem capacidade, adicione Unidades de Armazenamento Tianshu, ou instale um Núcleo Principal de nível mais alto.

## Tela do Controlador

Use o <ItemLink id="ae2lt:tianshu_supercomputer_controller" /> para ver:

* O estado de formação e o primeiro problema detectado quando desformada
* O nível atual do Núcleo Principal Tianshu
* As contagens de Unidades Paralelas, Amplificadoras e de Armazenamento, mais as contagens de Armazenamento de Padrões e de Sementes de Circuito Fechado
* O fator de amplificação `R` e os resultantes ganho de despacho `Gd` e ganho de armazenamento `Gs` (a tela usa esses símbolos)
* O valor bruto de despacho e o orçamento efetivo de despachos bem-sucedidos `D`, com um indicador quando o teto do Núcleo Principal é atingido
* A capacidade interna, a capacidade externa amplificada e o armazenamento de fabricação total
* O orçamento de cópias por tique `T` de cada trabalho; note que o paralelismo mostrado na confirmação de fabricação do AE2 conta apenas despachos bem-sucedidos, não o orçamento de cópias
* Controles para construção automática da carcaça e Planejamento Rápido

Substituir uma unidade da câmara do núcleo, ou remover armazenamento de circuito fechado de uma posição compatível com resfriamento, desforma temporariamente a estrutura enquanto a posição está vazia. Se a porta retiver trabalhos ativos, o novo perfil tem efeito depois que todos os trabalhos existentes terminam; restaurar a estrutura e a rede permite que os trabalhos retidos continuem. Uma Unidade de Resfriamento de Mudança de Fase é válida na mesma posição compatível com resfriamento, mas não fornece a capacidade de circuito fechado correspondente.

## Planejamento Rápido

O **Planejamento Rápido** fica ativado por padrão e reduz o tempo de cálculo de grandes planos de fabricação. Ele afeta apenas o planejamento antes da submissão do trabalho; não altera receitas, requisitos de materiais, armazenamento de fabricação ou velocidade de execução.

Quando um plano não é suportado pelo caminho rápido ou ocorre um erro, o cálculo volta automaticamente ao planejador padrão do AE2. Desative o Planejamento Rápido no controlador ao diagnosticar compatibilidade de padrões ou comparar resultados de cálculo.

A elegibilidade do planejamento rápido é agregada por toda a rede ME. Se outra CPU de fabricação ativa com suporte a planejamento rápido ainda permitir o recurso, aquela rede pode continuar usando o planejamento rápido. Desative a configuração correspondente ou desligue essas CPUs para forçar exclusivamente o planejador padrão.

## Resolução de Problemas

Enquanto a estrutura está desformada, a tela do controlador mostra diretamente o primeiro problema detectado; resolva essa dica primeiro.

**Estrutura e construção**

* **A estrutura não se forma:** Verifique cada ponto das [regras de construção manual](construction.md#manual-construction-rules) — revestimento e vidro completos, exatamente uma porta, todas as 17 posições compatíveis com resfriamento fora da porta preenchidas com Unidades de Resfriamento de Mudança de Fase ou armazenamento de circuito fechado, o Núcleo Principal Tianshu centrado na câmara do núcleo, e todas as 26 células periféricas preenchidas com unidades suportadas por aquele Núcleo Principal
* **A construção automática não inicia:** Limpe as coordenadas reportadas pelo controlador e garanta que todos os materiais estejam no inventário do jogador

**Rede e trabalhos**

* **A CPU está ausente da confirmação de fabricação:** Verifique a conexão do cabo da porta, a energia ME e o estado de formação da estrutura
* **A Porta fica offline após um carregamento entre chunks:** Garanta que o carregador de chunks cubra a estrutura Tianshu inteira e dê tempo para o reescaneamento automático
* **A CPU rejeita um novo trabalho:** O armazenamento de fabricação restante pode já estar reservado por outros trabalhos ativos; espere os trabalhos terminarem ou adicione Unidades de Armazenamento

**Desempenho abaixo do esperado**

* **Um orçamento alto de despacho não melhora a taxa de transferência:** O gargalo normalmente está no lado da execução — verifique as contagens de Fornecedores de Padrões e máquinas de processamento, a velocidade das máquinas, o suprimento de materiais e a capacidade de transferência da rede
* **Um orçamento alto de cópias ainda envia padrões de processamento comuns um de cada vez:** Máquinas de processamento gerais de AE2 aceitam uma cópia por chamada; cópias em lote exigem padrões, fornecedores e alvos compatíveis — veja [Cópias em Lote](computing-units.md#batch-copies)
