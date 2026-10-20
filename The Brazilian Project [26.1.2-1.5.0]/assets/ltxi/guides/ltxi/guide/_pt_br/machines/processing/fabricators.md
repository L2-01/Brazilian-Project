---
navigation:
    title: "Fabricação"
    icon: fabricator
    parent: machines/processing/index.md
    position: 110
item_ids:
    - fabricator
    - auto_fabricator
    - empty_fabrication_blueprint
    - fabrication_blueprint
---

# Fabricação de Tecnologia

Algumas das melhorias e equipamentos são complexos demais para serem feitos em máquinas de processamento comuns ou numa bancada de trabalho.
Para isso, você precisará fazer um Fabricador. Receitas de Fabricação são únicas entre todos os tipos de receita da LTXI; consulte
a especificação de dados de receita abaixo.

## Especificação de Receita
- Entradas: 1-16 itens
- Saída: 1 item
- Custo de energia: varia por receita, **usado no lugar do tempo de fabricação**

Devido à ausência de tempo de fabricação, a velocidade do Fabricador é uma função muito mais simples do custo de energia da receita e do
atributo de máquina **Uso de Energia**. Você pode considerá-lo um atributo de sentimento positivo para esta máquina.

## Fabricador
<GameScene zoom={3} interactive={false}>
<Block id="fabricator" y="-1" x="0" />
<Block id="mesh_block" y="-1" x="-1" />
<Block id="mesh_block" y="0" x="0" />
<Block id="mesh_block" y="0" x="-1" />
<BlockAnnotation x="0" y="-1" z="0" color="#8bd1f0">
Itens e Energia só podem ser conectados à frente, à esquerda, à traseira e à base deste bloco!
</BlockAnnotation>
</GameScene>

Também chamado de Fabricador manual, esta é a primeira máquina de fabricação que você fará. Você pode ver as receitas
disponíveis na grade de visualização de receitas. Para selecionar uma receita, clique com o botão esquerdo uma vez. Uma vez selecionada, clique com o esquerdo de novo para fabricar ou com o
direito para codificar a receita num **Projeto de Fabricação Vazio**. Este Fabricador não tem espaços de entrada; ele pegará os
ingredientes direto do seu inventário para uma fabricação sem complicação.

## Projeto de Fabricação
<ItemGrid>
<ItemIcon id="empty_fabrication_blueprint" />
<ItemIcon id="fabrication_blueprint" />
</ItemGrid>

**Projetos de Fabricação** codificados guardam uma receita de Fabricação para uso no Autofabricador ou em Provedores de Padrões do AE2.
Segure Shift ao ver a dica para exibir as informações da receita. Shift + Clique direito para limpar a receita codificada.

## Autofabricador
<BlockImage id="auto_fabricator" scale="2" />

Uma versão mais especializada do Fabricador. Ele compensa a falta de variedade de receitas com facilidade de automação. Ao contrário
do fabricador comum, ele tem 16 espaços de entrada de ingredientes e não consegue puxar do seu inventário.

### Operação por projeto único

Coloque um Projeto de Fabricação codificado no espaço de projeto para operar neste modo. Você deve fornecer as quantidades corretas de
ingredientes via seu método preferido de transporte de itens. Enquanto tiver ingredientes e energia suficientes, ele fabricará
a receita do projeto continuamente.

### Integração com Provedor de Padrões do AE2
Os **Provedores de Padrões** do AE2 têm compatibilidade nativa com o Autofabricador e Projetos de Fabricação codificados. **Atenção!
O espaço de projeto deve estar vazio, senão o Provedor de Padrões não reconhecerá o Autofabricador como uma máquina
de fabricação válida.**

- Projetos são padrões. Insira-os diretamente nos espaços de padrão do Provedor de Padrões, sem precisar de padrões de Processamento.
- Suporte por padrão a ingredientes/tags/substituições compostos.
- Modo de bloqueio não é necessário; a alimentação de itens e projetos é gerenciada automaticamente.
- A Configuração de E/S de Itens é reconfigurada a cada envio de padrão. Ela fará saída automática no lado do provedor de padrões e desativará o resto.