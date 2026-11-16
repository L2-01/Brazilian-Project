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

# Fabricação Tecnológica

Algumas das melhorias e equipamentos são complexos demais para serem feitos em máquinas de processamento comuns ou numa
bancada de trabalho. Para isso, você vai precisar fazer um Fabricador. As receitas de fabricação são únicas entre todos
os tipos de receita da LTXI; consulte a especificação de dados de receita abaixo.

## Especificação da Receita
- Entradas: 1-16 itens
- Saída: 1 item
- Custo de energia: varia por receita, **usado no lugar do tempo de fabricação**

Pela ausência de tempo de fabricação, a velocidade do Fabricador é uma função bem mais simples do custo de energia da
receita e do atributo de máquina **Uso de Energia**. Você pode considerá-lo um atributo de sentimento positivo nesta
máquina.

## Fabricador
<GameScene zoom={3} interactive={false}>
<Block id="fabricator" y="-1" x="0" />
<Block id="mesh_block" y="-1" x="-1" />
<Block id="mesh_block" y="0" x="0" />
<Block id="mesh_block" y="0" x="-1" />
<BlockAnnotation x="0" y="-1" z="0" color="#8bd1f0">
Itens e Energia só podem ser conectados na frente, à esquerda, atrás e embaixo deste bloco!
</BlockAnnotation>
</GameScene>

Também chamado de Fabricador manual, esta é a primeira máquina de fabricação que você fará. Você pode ver as receitas
disponíveis na grade de visualização de receitas. Para selecionar uma receita, clique esquerdo uma vez. Selecionada,
clique esquerdo de novo para fabricar ou clique direito para codificar a receita num **Projeto de Fabricação Vazio**.
Este Fabricador não tem espaços de entrada; ele pega os ingredientes direto do seu inventário para fabricação sem
complicações.

## Projeto de Fabricação
<ItemGrid>
<ItemIcon id="empty_fabrication_blueprint" />
<ItemIcon id="fabrication_blueprint" />
</ItemGrid>

**Projetos de Fabricação** codificados guardam uma receita de Fabricação para uso no Autofabricador ou em Provedores de
Padrão do AE2. Segure Shift ao ver o tooltip para exibir as informações da receita. Shift + clique direito para limpar
a receita codificada.

## Autofabricador
<BlockImage id="auto_fabricator" scale="2" />

Uma versão mais especializada do Fabricador. Compensa a falta de variedade de receitas com facilidade de automação.
Diferente do fabricador comum, ele tem 16 espaços de entrada de ingredientes e não pode puxar do seu inventário.

### Operação por projeto único

Coloque um Projeto de Fabricação codificado no espaço de projeto para operar neste modo. Você deve suprir as
quantidades corretas de ingredientes pelo seu método preferido de transporte de itens. Enquanto tiver ingredientes e
energia suficientes, ele fabricará a receita do projeto continuamente.

### Integração com Provedores de Padrão do AE2
Os **Provedores de Padrão** do AE2 têm compatibilidade nativa com o Autofabricador e com Projetos de Fabricação
codificados. **Atenção! O espaço de projeto precisa estar vazio, senão o Provedor de Padrão não reconhecerá o
Autofabricador como uma máquina de fabricação válida.**

- Projetos são padrões. Insira-os direto nos espaços de padrão do Provedor de Padrão, sem precisar de padrões de Processamento.
- Suporte a ingrediente/tag/substituição compostos por padrão.
- Modo de bloqueio não é necessário; a alimentação de itens e projetos é gerenciada automaticamente.
- A Configuração de E/S de Itens é reconfigurada a cada envio de padrão. Ela fará saída automática no lado do provedor de padrão e desativará os demais.
