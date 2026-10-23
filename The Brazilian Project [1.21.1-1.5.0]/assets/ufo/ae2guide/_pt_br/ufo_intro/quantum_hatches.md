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
Quântico** ou **Proxy de Padrões Quântico** em uma posição de carcaça compatível. O
Buffer armazena até **72 padrões**, conecta à grade ME e serve o
controlador na sua própria estrutura. Um Proxy não contém padrões e não precisa de cabo
ME; ele permite a outro multibloco usar os padrões de um Buffer vinculado.

A antiga **Escotilha de Padrões Quântica** agora é exclusiva da automação de DMA
autônomo e não é uma parte válida de multibloco.

<ItemImage id="ufo:quantum_pattern_provider_part" scale="3" />

O **Fornecedor de Padrões Quântico** é a versão em barramento de cabo do fornecedor expandido.

- **Escotilha de Saída Massiva ME** devolve itens concluídos à rede ME.
- **Escotilha de Fluido Massiva ME** também é a entrada de refrigerante compartilhada: combina um
  **tanque local de 16.000.000 mB** para suprimento externo de refrigerante com suporte a saída de receitas ME.
- **Escotilha de Entrada Massiva ME** alimenta vazão de itens em massa para os multiblocos.
- **Escotilha de Entrada de Energia AE** armazena FE fornecido externamente para o multibloco.

## Regras de Conexão AE2

As escotilhas massivas continuam sendo **portas de cabo ME**. A Escotilha de Fluido Massiva também
expõe uma capacidade nativa de entrada de fluido NeoForge para automação de refrigerante.

- Conecte o cabo ME à face indicada pela orientação da escotilha. As outras
  cinco faces são intencionalmente isoladas da grade ME.
- Tubos de fluido podem encher a Escotilha de Fluido Massiva por qualquer face, incluindo a face
  usada por um cabo ME. O acesso por tubo é somente entrada e aceita Criotêmio Gélido,
  Refrigerante Estável ou Condensado de Bose-Einstein; não pode drenar o tanque nem misturar refrigerantes.
- Coloque os insumos de itens e fluidos da receita no armazenamento ME; o refrigerante deve ser entregue ao tanque local.
- As saídas concluídas de itens e fluidos retornam ao armazenamento ME pela escotilha correspondente.
- A Escotilha de Entrada de Energia AE aceita FE de qualquer face por um cabo de energia ou
  outra saída de FE explicitamente configurada. Ela nunca puxa energia da AE2,
  do armazenamento do Applied Flux ou de baterias adjacentes. Apenas seu reservatório local salvo
  alimenta o multibloco; o processamento aguarda recarga quando o combustível acaba.
  Uma conexão ME não é necessária para carregar ou consumir esse reservatório.
  A conversão e o consumo internos ainda seguem a configuração de energia da AE2.
- Use o papel de escotilha que a estrutura pede: entrada de itens, saída de itens, saída de fluido ou energia AE.

Nexus Estelar, QMF, QPA, Fatiador e Crioforja exigem uma escotilha de refrigerante e uma
escotilha de energia em quaisquer posições de carcaça compatíveis. As prévias de montagem mostram exemplos. O refrigerante
vem exclusivamente do tanque local: não há fallback automático no armazenamento ME.
Use tubos ou um dispositivo de exportação explicitamente configurado para controlar a entrega de refrigerante.
Estruturas existentes podem manter suas posições de carcaça compatíveis atuais, mas uma
Escotilha de Padrões antiga deve ser substituída por um Buffer ou Proxy.
Escotilhas adicionais suportadas podem substituir posições de carcaça; o Vidro Vibrante permanece
apenas vidro. Exatamente um Buffer ou Proxy de Padrões é exigido para QMF, QPA,
Fatiador e Crioforja.

## Compartilhando Padrões Entre Multiblocos

Instale um Buffer de Padrões no multibloco principal e coloque todos os padrões codificados
nele. Instale um Proxy de Padrões em cada multibloco adicional. Com a Ferramenta
Sem Fio Quântica, clique com o botão direito no Buffer e depois em cada Proxy. O Buffer primeiro
tenta seu próprio controlador; um padrão que não pertence ali, ou não pode começar
ali, é oferecido aos Proxies vinculados. Vínculos, inventário de padrões e pertencimento
ao controlador persistem entre recarregamentos do mundo.

Clique com o botão direito em uma escotilha massiva de mão vazia para ver se ela está online e
vinculada a um controlador. Uma escotilha vizinha não cria uma conexão de cabo invisível
através do casco do multibloco.

## Propriedade dos Padrões

Quando a AE2 envia um padrão de processamento, os itens entregues com aquele padrão passam
a pertencer ao processo imediatamente. O controlador não cobra esses requisitos
de itens uma segunda vez. Fluidos ou químicos suportados faltantes ainda podem ser
puxados por seus caminhos de armazenamento configurados.

O Buffer de Padrões detém os bônus sem fio de multibloco. A antiga Escotilha de Padrões
detém apenas os bônus do DMA. Veja [Rede Sem Fio e Bônus](quantum_wireless_buffs.md)
para valores configurados em config/ufo/wireless.toml e o alcance ajustável da fonte.
