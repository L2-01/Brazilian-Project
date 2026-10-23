---
navigation:
    title: Transceptor Sem Fio ME
    parent: aeadditions.md
item_ids:
  - ae2additions:me_wireless_transceiver
---
# Transceptor Sem Fio ME

## O que isso pode fazer?

Este bloco permite estender sua rede sem fio por qualquer distância, mas não entre dimensões. Eles podem transportar 32 canais no total. Quanto mais distantes os transceptores estiverem um do outro, maior será a demanda de energia.

O que o diferencia da ponte quântica é que você pode vincular transceptores a um canal nomeado. Uma vez que um transceptor esteja vinculado a um canal como transmissor, você pode assinar esse canal em qualquer transceptor que quiser, na mesma dimensão.

Se você quiser transmitir entre dimensões, a ponte quântica deve ser usada.

![](assets/wirelesstransceiver/transceiver_diagram.png)

# Configuração Básica

<GameScene zoom="4" interactive={true}>
    <ImportStructure src="assets/wirelesstransceiver/basic_setup.snbt" />
    <BoxAnnotation color="#dddddd" min="6 0 7" max="7 1 6">
        Este transceptor está configurado como transmissor:

        ![](assets/wirelesstransceiver/basic_setup_broadcaster.png)
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="10 0 7" max="11 1 6">
        Este transceptor está configurado como assinante:

        ![](assets/wirelesstransceiver/basic_setup_subscriber.png)
    </BoxAnnotation>
    <BoxAnnotation color="#dddddd" min="10.1 1.1 6.1" max="10.9 1.9 6">
        Este terminal agora está conectado ao controlador, desde que haja energia e o máximo de canais não esteja ocupado.
    </BoxAnnotation>
</GameScene>


# Receita
<RecipeFor id="me_wireless_transceiver"/>
