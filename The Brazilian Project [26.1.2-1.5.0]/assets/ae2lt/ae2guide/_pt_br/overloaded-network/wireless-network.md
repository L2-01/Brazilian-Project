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

O sistema de Rede Sem Fio permite estender sua rede ME de Sobrecarga por longas distâncias — ou até entre dimensões — sem passar cabos. Um **Controlador Sobrecarregado Sem Fio** transmite numa frequência, e um ou mais **Receptores Sem Fio** sintonizam para criar uma conexão de grid virtual.

## Componentes

### Controlador Sobrecarregado Sem Fio

<Row>
  <BlockImage id="ae2lt:wireless_overloaded_controller" scale="4" />
</Row>

O **Controlador Sobrecarregado Sem Fio** é um [Controlador ME de Sobrecarga](overloaded-controller.md) que funciona também como transmissor sem fio. Ele transmite seu nó de grid numa frequência selecionada para que Receptores Sem Fio remotos possam se conectar a ele.

* Fornece os mesmos canais extras e energia de um Controlador de Sobrecarga comum
* Cada controlador só pode transmitir em **uma frequência** por vez
* Uma frequência só pode ser ocupada por um transmissor por vez

### Controlador Sobrecarregado Sem Fio Avançado

<Row>
  <BlockImage id="ae2lt:advanced_wireless_overloaded_controller" scale="4" />
</Row>

O **Controlador Sobrecarregado Sem Fio Avançado** é a variante aprimorada com duas melhorias-chave:

* **Suporte entre dimensões**: Receptores Sem Fio em outras dimensões podem se conectar a ele
* **Capacidade de canais ilimitada**: remove completamente o limite de canais por receptor

### Receptor Sem Fio

<Row>
  <BlockImage id="ae2lt:wireless_receiver" scale="4" />
</Row>

O **Receptor Sem Fio** é a contraparte que se conecta a um Controlador Sobrecarregado Sem Fio remoto. Coloque-o em qualquer lugar do mundo, ajuste-o para a mesma frequência do controlador, e uma conexão de grid virtual é estabelecida automaticamente.

* Consome 5 AE/t de energia ociosa
* Só pode se conectar a uma frequência por vez
* Conexões entre dimensões exigem um Controlador Sobrecarregado Sem Fio **Avançado** no lado transmissor

## Configurando

1. Coloque um **Controlador Sobrecarregado Sem Fio** e clique com o botão direito nele para abrir a GUI de frequência
2. Selecione ou crie uma frequência
3. Coloque um **Receptor Sem Fio** no local remoto e clique com o botão direito nele para abrir sua GUI de frequência
4. Selecione a mesma frequência — o receptor estabelecerá automaticamente uma conexão virtual com o grid do controlador

Uma vez conectado, o receptor age como se estivesse fisicamente cabeado ao controlador. Dispositivos anexados à rede local do receptor ganham acesso à rede ME do controlador, incluindo canais, armazenamento e fabricação.

## Segurança de Frequência

As frequências suportam controle de acesso:

| Nível | Comportamento |
|-------|----------|
| Público | Qualquer um pode vincular um receptor a esta frequência |
| Privado | Só o dono da frequência e membros permitidos podem vincular |
| Criptografado | Exige uma senha para vincular |

Controladores e receptores desvinculados são sempre acessíveis, independentemente do nível de segurança.

## Dicas

* Use a variante Avançada quando precisar ligar redes entre dimensões
* Um único controlador pode servir a muitos receptores — cada receptor cria sua própria conexão virtual
