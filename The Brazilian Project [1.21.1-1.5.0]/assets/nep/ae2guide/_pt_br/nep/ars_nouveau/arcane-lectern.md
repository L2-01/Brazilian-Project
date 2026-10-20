---
navigation:
  title: Atril Arcano
  icon: nep:arcane_lectern
  parent: nep/ars_nouveau/index.md
  position: 30
item_ids:
  - nep:arcane_lectern
---
# <Color id="gold">Atril Arcano</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Atril Arcano</Color>

  <ItemImage id="nep:arcane_lectern" scale="2"/>

  Um Atril de Armazenamento apresenta seus baús vinculados ao Ars Nouveau como um único inventário. O Atril Arcano apresenta uma rede ME da mesma forma, então qualquer coisa que pega itens de um inventário vizinho pode pegá-los da rede em vez disso.
</Column>

<Recipe id="nep:module_status/arcane_lectern"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="nep:arcane_lectern" y="0"/>
  <BlockAnnotation y="0" color="#88cc00">
    **Atril Arcano**, perto de uma Mesa do Escriba
  </BlockAnnotation>
</GameScene>

* Ligue o Atril a uma rede ME. Ele é uma máquina de rede, então precisa de canais e energia como qualquer outra.
* Posicione-o a menos de <nep:ConfigValue name="arcaneLecternScribesRange"/> blocos de uma Mesa do Escriba. A opção **Scribes Table Range** na configuração muda essa distância.
* Defina uma receita de glifo na mesa como de costume. O Atril envia os reagentes que a mesa ainda precisa, todos de uma vez, e não envia nada entre fabricações.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Mais Ele Atende</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Atril não é um acessório da Mesa do Escriba. Ele expõe um inventário comum, que é o que a maior parte da lógica de itens do Ars Nouveau lê, então o mesmo bloco alimenta várias coisas ao mesmo tempo:

| Leitor | O que ele pega |
|---|---|
| Mesa do Escriba | Reagentes de glifo |
| Caldeirão de Wixie | Ingredientes que sua Wixie busca |
| Starbuncle | Qualquer coisa em sua rota |
| Golem de Ametista | O que ele deposita e recolhe |
| Vitrine | Uma contagem para comparar |

Máquinas de addons construídas sobre qualquer uma dessas também o recebem. Um Caldeirão de Wixie de Encantamento é um Caldeirão de Wixie por baixo, então um Atril ao alcance fornece seus ingredientes de aparato sem padrão nenhum envolvido.

> <Color id="yellow">Isso corta nos dois sentidos.</Color> Um Starbuncle ao alcance vai alegremente carregar o conteúdo da rede para onde quer que tenha sido mandado colocar as coisas, então posicione o Atril onde você realmente quer que ele seja lido.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Custo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Atril nunca empurra. Ele espera ser lido, e tudo que o lê percorre a lista oferecida inteira uma vez por passada, então uma rede muito grande sai mais barato de servir com um limite menor. A opção `Maximum Item Types` na configuração define esse limite, e itens além dele simplesmente não são oferecidos.

Nada é inserido pelo Atril também. Ele é uma janela só de leitura para a rede, então qualquer coisa que precise ir no outro sentido precisa de sua própria rota para dentro.
