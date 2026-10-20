---
navigation:
  title: Rede Sem Fio
  icon: ae2lt:wireless_overloaded_controller
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:wireless_receiver
  - ae2lt:wireless_overloaded_controller
  - ae2lt:advanced_wireless_overloaded_controller
---

# Rede Sem Fio

<ItemGrid>
  <ItemIcon id="ae2lt:wireless_overloaded_controller" />
  <ItemIcon id="ae2lt:advanced_wireless_overloaded_controller" />
  <ItemIcon id="ae2lt:wireless_receiver" />
</ItemGrid>

O sistema de Rede Sem Fio permite estender sua rede ME de Sobrecarga por longas distâncias — ou até entre dimensões — sem passar cabos. Um **Controlador Sobrecarregado Sem Fio** transmite numa frequência, e um ou mais **Receptores Sem Fio** sintonizam nela para criar uma conexão de grade virtual.

## Componentes

### Controlador Sobrecarregado Sem Fio

<Row>
  <BlockImage id="ae2lt:wireless_overloaded_controller" scale="4" />
</Row>

O **Controlador Sobrecarregado Sem Fio** é um [Controlador ME de Sobrecarga](overloaded-controller.md) que também funciona como transmissor sem fio. Ele transmite seu nó de grade numa frequência selecionada para que Receptores Sem Fio remotos possam se conectar a ele.

* Fornece os mesmos canais extras e energia de um Controlador de Sobrecarga comum
* Um Controlador Sobrecarregado Sem Fio ou Avançado basta para o multibloco inteiro de Controladores de Sobrecarga; os outros blocos de controlador podem continuar sendo Controladores ME de Sobrecarga comuns
* Cada controlador só pode transmitir em **uma frequência** por vez
* Uma frequência só pode ser ocupada por um transmissor por vez
* Apenas na mesma dimensão; cada vínculo de receptor tem uma capacidade de canais limitada (**32 canais** no modo de canais padrão do AE2)

### Controlador Sobrecarregado Sem Fio Avançado

<Row>
  <BlockImage id="ae2lt:advanced_wireless_overloaded_controller" scale="4" />
</Row>

O **Controlador Sobrecarregado Sem Fio Avançado** é a variante aprimorada com duas melhorias-chave:

* **Suporte entre dimensões**: Receptores Sem Fio em outras dimensões podem se conectar a ele
* **Capacidade de canais ilimitada**: remove totalmente o limite de canais por receptor (isso não significa canais verdadeiramente infinitos; leia com atenção!)

### Receptor Sem Fio

<Row>
  <BlockImage id="ae2lt:wireless_receiver" scale="4" />
</Row>

O **Receptor Sem Fio** é a contraparte que se conecta a um Controlador Sobrecarregado Sem Fio remoto. Coloque-o em qualquer lugar do mundo, configure-o para a mesma frequência do controlador, e uma conexão de grade virtual é estabelecida automaticamente.

* Consome 5 AE/t em repouso
* Só pode se conectar a uma frequência por vez
* Conexões entre dimensões exigem um Controlador Sobrecarregado Sem Fio **Avançado** no lado do transmissor

## Configurando

1. Coloque ou substitua um bloco no multibloco de Controladores de Sobrecarga por um **Controlador Sobrecarregado Sem Fio**, depois clique com o botão direito nele para abrir a GUI de frequências
2. Selecione ou crie uma frequência
3. Coloque um **Receptor Sem Fio** no local remoto e clique com o botão direito nele para abrir sua GUI de frequências
4. Selecione a mesma frequência — o receptor estabelecerá automaticamente uma conexão virtual com a grade do controlador

Uma vez conectado, o receptor age como se estivesse fisicamente cabeado ao controlador. Dispositivos ligados à rede local do receptor ganham acesso à rede ME do controlador, incluindo canais, armazenamento e fabricação.

## Segurança de Frequência

As frequências suportam controle de acesso:

| Nível | Comportamento |
|-------|----------|
| Pública | Qualquer um pode vincular um receptor a esta frequência |
| Privada | Apenas o dono da frequência e membros permitidos podem vincular |
| Criptografada | Exige uma senha para vincular |

Controladores e receptores não vinculados são sempre acessíveis, independentemente do nível de segurança.

## Dicas

* Use a variante Avançada quando precisar ligar redes entre dimensões
* Use a variante Avançada quando um receptor precisar atender mais canais do que o vínculo sem fio comum permite
* Um único controlador pode atender muitos receptores — cada receptor cria sua própria conexão virtual
* Você não precisa substituir todo bloco do multibloco por uma variante sem fio; adicione mais controladores sem fio apenas quando quiser intencionalmente frequências de transmissão independentes extras
