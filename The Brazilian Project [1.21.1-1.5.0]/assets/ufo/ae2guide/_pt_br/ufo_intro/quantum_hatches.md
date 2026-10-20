---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Escotilhas Quânticas
  position: 46
item_ids:
  - ufo:quantum_pattern_hatch
  - ufo:quantum_pattern_buffer
  - ufo:quantum_pattern_proxy
  - ufo:quantum_pattern_provider_part
  - ufo:me_massive_output_hatch
  - ufo:me_massive_fluid_hatch
  - ufo:me_massive_input_hatch
  - ufo:ae_energy_input_hatch
---

# Escotilhas Quânticas

<BlockImage id="ufo:quantum_pattern_buffer" scale="3"></BlockImage>

Todo multibloco de processamento universal exige exatamente um **Buffer de Padrões
Quântico** ou **Proxy de Padrões Quântico** numa posição de carcaça compatível. O
Buffer armazena até **72 padrões**, conecta à rede ME e serve o
controlador da sua própria estrutura. Um Proxy não contém padrões e não precisa de
cabo ME; ele deixa outro multibloco usar os padrões de um Buffer vinculado.

A legada **Escotilha de Padrões Quântica** agora é exclusiva da automação de DMA
independente e não é uma peça de multibloco válida.

<ItemImage id="ufo:quantum_pattern_provider_part" scale="3" />

O **Fornecedor de Padrões Quântico** é a versão em peça de cabo do provedor expandido.

- A **Escotilha de Saída Massiva ME** devolve itens concluídos à rede ME.
- A **Escotilha de Fluido Massiva ME** também é a entrada de refrigerante compartilhada: ela combina um
  **tanque local de 16.000.000 mB** para fornecimento externo de refrigerante com suporte a saída de receitas pela ME.
- A **Escotilha de Entrada Massiva ME** alimenta os multiblocos com rendimento de itens em massa.
- A **Escotilha de Entrada de Energia AE** armazena FE fornecido externamente para o multibloco.

## Regras de Conexão AE2

As escotilhas massivas continuam sendo **portas de cabo ME**. A Escotilha de Fluido Massiva adicionalmente
expõe uma capacidade nativa de entrada de fluido NeoForge para automação de refrigerante.

- Conecte o cabo ME à face indicada pela orientação da escotilha. As outras
  cinco faces são intencionalmente isoladas da rede ME.
- Tubos de fluido podem encher a Escotilha de Fluido Massiva por qualquer face, incluindo a face
  usada por um cabo ME. O acesso por tubo é só de entrada e aceita Criotêmio Gélido,
  Refrigerante Estável ou Condensado de Bose-Einstein; ele não pode drenar o tanque nem misturar refrigerantes.
- Ponha as entradas de item e fluido da receita no armazenamento ME; o refrigerante precisa ser entregue ao tanque local.
- Saídas de item e fluido concluídas voltam ao armazenamento ME através da escotilha correspondente.
- A Escotilha de Entrada de Energia AE aceita FE de qualquer face através de um cabo de energia ou
  de outra saída de FE explicitamente configurada. Ela nunca puxa energia do AE2,
  de armazenamento do Applied Flux ou de baterias adjacentes. Apenas seu reservatório
  local salvo alimenta o multibloco; o processamento espera por um reabastecimento quando o combustível acaba.
  Uma conexão ME não é necessária para carregar nem para consumir esse reservatório.
  A conversão e o consumo internos ainda seguem a configuração de energia do AE2.
- Use o papel de escotilha que a estrutura pede: entrada de item, saída de item, saída de fluido ou energia AE.

Nexus Estelar, QMF, QPA, Fatiador e Crioforja exigem uma escotilha de refrigerante e uma
escotilha de energia em quaisquer posições de carcaça compatíveis. As prévias de montagem mostram exemplos. O refrigerante
vem exclusivamente do tanque local: não há fallback automático do armazenamento ME.
Use tubos ou um dispositivo de exportação explicitamente configurado para controlar a entrega de refrigerante.
Estruturas existentes podem manter suas posições de carcaça compatíveis atuais, mas uma
Escotilha de Padrões antiga precisa ser substituída por um Buffer ou Proxy.
Escotilhas suportadas adicionais podem substituir posições de carcaça; o Vidro Vibrante continua
sendo só vidro. Exatamente um Buffer ou Proxy de Padrões é exigido para QMF, QPA,
Fatiador e Crioforja.

## Compartilhando Padrões Entre Multiblocos

Instale um Buffer de Padrões no multibloco primário e ponha todos os padrões codificados
nele. Instale um Proxy de Padrões em cada multibloco adicional. Com a
Ferramenta Sem Fio Quântica, clique com o botão direito no Buffer e depois em cada Proxy. O Buffer primeiro
tenta seu próprio controlador; um padrão que não pertence ali, ou que não consegue começar
ali, é oferecido aos Proxies vinculados. Vínculos, inventário de padrões e vínculo ao controlador
persistem através de recarregamentos do mundo.

Clique com o botão direito numa escotilha massiva com a mão vazia para ver se ela está online e
vinculada a um controlador. Uma escotilha vizinha não cria uma conexão de cabo
invisível através da carcaça do multibloco.

## Propriedade dos Padrões

Quando o AE2 envia um padrão de processamento, os itens entregues com aquele padrão
passam a pertencer ao processo imediatamente. O controlador não cobra aqueles requisitos
de item uma segunda vez. Fluidos ou químicos suportados faltantes ainda podem ser
puxados pelos seus caminhos de armazenamento configurados.

O Buffer de Padrões detém os bônus sem fio do multibloco. A legada Escotilha de Padrões
detém apenas os bônus do DMA. Veja [Rede Sem Fio e Bônus](quantum_wireless_buffs.md)
para os valores configurados em config/ufo/wireless.toml e o alcance de fonte ajustável.
