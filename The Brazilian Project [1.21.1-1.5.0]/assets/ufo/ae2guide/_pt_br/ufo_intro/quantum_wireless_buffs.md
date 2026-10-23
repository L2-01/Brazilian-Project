---
navigation:
  parent: ufo_intro/quantum_hatches.md
  title: Rede Sem Fio e Bônus
  position: 1
---

# Rede Sem Fio e Bônus

Para multiblocos, conecte um Buffer de Padrões Quântico a uma grade ME energizada e
instale padrões de processamento. O Buffer serve seu próprio multibloco e se vincula
aos Proxies de Padrões instalados em multiblocos adicionais. Para DMAs, use a antiga
Escotilha de Padrões Quântica e vincule-a diretamente às máquinas. Requisite receitas
pelo terminal ME; as saídas ainda precisam de um caminho de retorno ao armazenamento ME.

A ferramenta mostra a fonte selecionada e a prévia de novo vínculo em amarelo; conexões e faces salvas são azuis. Os destinos devem estar carregados, na mesma dimensão e dentro do alcance. O sem fio não energiza máquinas, não carrega chunks nem faz ponte entre grades ME separadas.

Use uma [Interface Quântica](quantum_interface.md) com refrigerante configurado e Exportação
Automática para suprimentos; vincule seus destinos separadamente. O **Buffer de Padrões
concede bônus de multibloco**, enquanto a antiga **Escotilha de Padrões concede bônus de DMA**.
A interface fornece apenas logística.

## Alcance ajustável

Toda escotilha/interface começa em **32 blocos**. Use sua engrenagem de alcance: clique adiciona um bloco, shift-clique remove um. O máximo do servidor limita o ajuste. Cada fonte salva seu próprio alcance.

O alcance se aplica a vínculos e transferências. Reduzi-lo suspende destinos distantes sem deletar vínculos; aumentá-lo os retoma. O servidor verifica a distância em cada resolução.

## Bônus automáticos de receita

Configure o **config/ufo/wireless.toml** uma vez na instância/servidor. Não há perfis nem alocação de pontos. Velocidade, desconto de energia e desconto de calor produtivo se aplicam juntos, com limites independentes para DMA e multiblocos.

Os máximos padrão são **+20% de velocidade, −10% de energia por receita e −15% de calor produtivo por receita**. Uma máquina elegível recebe fatores neutros; a força aumenta linearmente até o máximo em **10 DMAs** ou **4 multiblocos**. As famílias são contadas separadamente. Dois multiblocos recebem aproximadamente +6,67% de velocidade, −3,33% de energia e −5% de calor; três recebem +13,33%, −6,67% e −10%.

Só contam máquinas distintas, carregadas, vinculadas e não criativas que avançaram o processamento de receitas nos últimos **20 ticks (um segundo)**. Os padrões podem ser diferentes e os insumos podem chegar por sem fio, cabos ou manualmente. Estar vinculada, receber refrigerante ou aguardar ingredientes/energia não conta como atividade produtiva. Multiblocos devem estar formados; várias faces ou threads paralelas contam como uma máquina. A fonte deve ter o sem fio habilitado e um nó ME ativo. Fontes separadas não acumulam bônus: vence a fonte aplicável mais forte.

O painel da Escotilha de Padrões mostra apenas atividade e fatores de DMA; o painel do
Buffer de Padrões mostra apenas atividade e fatores de multibloco. Esses são os fatores disponíveis
para novas receitas. Cada máquina trava seus fatores ao iniciar uma receita (antes
da reserva de energia nos multiblocos) e os mantém até a conclusão, inclusive
entre saves. A primeira leva após o repouso pode não ter bônus; receitas subsequentes
se beneficiam conforme a atividade acumula. A atividade em si começa vazia após recarregar o mundo.

## Configuração

```toml
[wireless]
range = 128
maxLinks = 1024

[wireless.buffs]
enabled = true

[wireless.buffs.dma]
saturationMachines = 10
maxSpeedBonus = 0.20
maxEnergyDiscount = 0.10
maxHeatDiscount = 0.15

[wireless.buffs.multiblock]
saturationMachines = 4
maxSpeedBonus = 0.20
maxEnergyDiscount = 0.10
maxHeatDiscount = 0.15
```

range limita os ajustes locais de alcance; zero remove apenas esse teto do servidor. Fontes começam em 32. Um valor de 0.20 significa 20%; zero desabilita um efeito individual. Reinicie a instância/servidor após editar para aplicação previsível. O processamento em multiplayer usa os valores do servidor.

A velocidade preserva a energia total antes do desconto escolhido e pode aumentar a energia por tick. O calor produtivo é compensado pela velocidade antes do desconto de calor. Resfriamento passivo e eficiência de refrigerante permanecem inalterados. Receitas de um tick não podem ficar mais curtas.

Suportados: DMA, Fabricador de Matéria Quântica, Fatiador Quântico, Montador de Processador Quântico e Crioforja Quântica. O Nexus Estelar e máquinas de outros mods não recebem esses bônus.

A antiga configuração compartilhada wireless.buffs.saturationMachines foi substituída pelas duas configurações de família. Mova qualquer limiar antigo personalizado para as seções de família desejadas; os novos padrões são 10 e 4.

A antiga configuração activityTicks e o histórico de entrega por padrão não são mais usados. Mantenha seus limiares de família e tetos de efeito; nenhuma nova configuração é necessária.
