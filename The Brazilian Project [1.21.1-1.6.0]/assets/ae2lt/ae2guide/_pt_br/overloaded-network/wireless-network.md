---
navigation:
  title: Rede sem Fio
  icon: ae2lt:wireless_overloaded_controller
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:wireless_receiver
  - ae2lt:wireless_overloaded_controller
  - ae2lt:advanced_wireless_overloaded_controller
---

# Rede sem Fio

<ItemGrid>
  <ItemIcon id="ae2lt:wireless_overloaded_controller" />
  <ItemIcon id="ae2lt:advanced_wireless_overloaded_controller" />
  <ItemIcon id="ae2lt:wireless_receiver" />
</ItemGrid>

O sistema de Rede Sem Fio permite estender sua rede ME de Sobrecarga por longas distâncias — ou até entre dimensões — sem passar cabos. Um **Controlador Sobrecarregado Sem Fio** ou **Controlador Sobrecarregado Sem Fio Avançado** transmite sua rede, e **Receptores Sem Fio** a recebem em locais remotos.

## Componentes

### Controlador Sobrecarregado sem Fio

<Row>
  <BlockImage id="ae2lt:wireless_overloaded_controller" scale="4" />
</Row>

O **Controlador Sobrecarregado Sem Fio** é um [Controlador ME de Sobrecarga](overloaded-controller.md) que também funciona como transmissor sem fio. Ele transmite sua rede ME para Receptores Sem Fio na mesma dimensão.

* Fornece os mesmos canais extras e energia de um Controlador de Sobrecarga comum
* Um único Controlador Sobrecarregado Sem Fio ou Avançado basta para todo o multibloco de controladores de Sobrecarga; os demais blocos de controlador podem continuar comuns
* Cada controlador só pode transmitir em **uma frequência** por vez
* Uma frequência só pode ser ocupada por um transmissor por vez
* Apenas na mesma dimensão; cada vínculo de receptor tem capacidade de canais limitada (**32 canais** no modo de canais padrão do AE2)

### Controlador Sobrecarregado sem Fio Avançado

<Row>
  <BlockImage id="ae2lt:advanced_wireless_overloaded_controller" scale="4" />
</Row>

O **Controlador Sobrecarregado Sem Fio Avançado** oferece os seguintes recursos:

* **Suporte entre dimensões**: Receptores Sem Fio em outras dimensões podem se conectar a ele
* **Sem limite de canais por receptor**: a rede continua sujeita ao modo de canais do AE2 e à capacidade do controlador
* **Vínculos de cartão de frequência**: conecta dispositivos e partes ME diretamente com um [Cartão de Frequência de Sobrecarga](overloaded-frequency-card.md)
* **Energia FE sem fio**: com o Applied Flux instalado, alimenta máquinas compatíveis com o FE armazenado na rede
* **Gerenciamento de rede**: inspeciona dispositivos ME, registros de energia FE e conexões de frequência, com ações remotas para dispositivos suportados

### Receptor sem Fio

<Row>
  <BlockImage id="ae2lt:wireless_receiver" scale="4" />
</Row>

O **Receptor Sem Fio** é a contraparte que se conecta a um Controlador Sobrecarregado Sem Fio remoto. Coloque-o em qualquer lugar do mundo, ajuste-o para a mesma frequência e ele se conecta automaticamente.

* Consome 5 AE/t de energia em repouso
* Só pode se conectar a uma frequência por vez
* Conexões entre dimensões exigem um Controlador Sobrecarregado Sem Fio **Avançado** no lado transmissor

## Configuração

1. Coloque ou substitua um bloco do multibloco de controladores de Sobrecarga por um **Controlador Sobrecarregado Sem Fio**, depois clique com o botão direito nele para abrir a GUI de frequências
2. Selecione ou crie uma frequência
3. Coloque um **Receptor Sem Fio** no local remoto e clique com o botão direito nele para abrir sua GUI de frequências
4. Selecione a mesma frequência — o receptor estabelecerá automaticamente uma conexão virtual com a grade do controlador

Uma vez conectado, o receptor age como se estivesse fisicamente cabeado ao controlador. Dispositivos ligados à rede local do receptor ganham acesso à rede ME do controlador, incluindo canais, armazenamento e criação.

## Tela de Frequência

O Controlador Sobrecarregado Sem Fio Avançado e o Cartão de Frequência de Sobrecarga compartilham a mesma navegação superior. Passe o mouse sobre um ícone para exibir o nome da página.

| Página | Função |
|------|---------|
| Início | Inspeciona a frequência atual, o estado da conexão, o nível de acesso e os canais da rede; cartões também oferecem interruptores de conexão automática |
| Frequência | Busca e vincula uma frequência existente, cria uma frequência ou desconecta o vínculo atual |
| Membros | Inspeciona os membros e altera funções ou remove membros onde permitido |
| Gerenciamento de rede | Alterna entre as visões de dispositivos ME, energia FE e conexões de frequência |
| Configurações de frequência | Edita o nome, a cor e as configurações de segurança da frequência; donos podem apagar a frequência |

Configurações e ações sobre membros dependem do papel do jogador. Administradores podem editar nomes e cores e gerenciar membros de nível inferior. Alterar segurança, senhas, papéis de dono ou administrador e apagar frequências requer acesso de dono. Apagar uma frequência é irreversível e remove suas conexões sem fio associadas. Use **Desconectar** ao mudar apenas a frequência do dispositivo ou cartão atual, em vez de apagar a frequência.

### Gerenciamento de Rede

* **Dispositivos ME** lista os dispositivos da rede e seus estados de operação. Selecione um dispositivo para localizá-lo ou abrir sua tela nativa remotamente. A tela remota fornece um botão de retorno ao gerenciamento de rede.
* **Energia FE** lista caminhos de energia, origens, alvos e taxas reais de entrega. Os registros incluem energia sem fio por frequência e outros métodos de energia suportados. **Desvincular ponto final sem fio** remove apenas a conexão de energia sem fio da frequência selecionada, preservando os vínculos ME.
* **Conexões de frequência** lista os pontos de conexão de canais sem fio e seu estado de carregamento para inspecionar vínculos de receptor e de cartão de frequência.

As listas suportam busca, ordenação e agrupamento por tipo de dispositivo. Busque por nome, tipo, ID de mod, dimensão ou coordenadas, separando vários termos com espaços. Expanda um grupo para selecionar um dispositivo individual. **Localizar** exibe coordenadas e destaca um dispositivo localizável por 15 segundos; clique na mensagem de coordenada para copiá-la.

A visão de energia FE oferece janelas de medição de 1t, 1s, 5s, 30s e 1min. Todos os valores são médias de saída real em **FE/t**, incluindo períodos sem saída. Não representam energia armazenada nem o limite de entrada nominal de um dispositivo.

Ações remotas requerem um alvo disponível e permissões suficientes. Telas nativas suportadas podem ser abertas entre dimensões, mas o gerenciamento de rede não força o carregamento de chunks do alvo. Dispositivos sem suporte a menu remoto não podem ser configurados assim. Um cartão de frequência requer um transmissor sem fio avançado disponível para que o gerenciamento de rede possa ser aberto.

## Segurança de Frequência

Frequências suportam controle de acesso:

| Nível | Comportamento |
|------|----------|
| Pública | Qualquer um pode vincular um receptor a esta frequência |
| Privada | Apenas o dono da frequência e membros permitidos podem vincular |
| Criptografada | Requer uma senha para vincular |

Controladores e receptores desvinculados são sempre acessíveis independentemente do nível de segurança.

## Dicas

* Use a variante Avançada quando precisar interligar redes entre dimensões
* Use a variante Avançada quando um receptor precisar atender mais canais do que o vínculo sem fio comum permite
* Um único controlador pode atender muitos receptores — cada receptor cria sua própria conexão virtual
* Você não precisa substituir todos os blocos do multibloco por variantes sem fio; adicione mais controladores sem fio apenas quando quiser intencionalmente frequências extras de transmissores independentes
