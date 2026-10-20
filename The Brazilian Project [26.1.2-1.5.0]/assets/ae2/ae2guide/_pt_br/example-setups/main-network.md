---
navigation:
  parent: example-setups/example-setups-index.md
  title: Um Exemplo de "Rede Principal"
  icon: controller
---

# Um Exemplo de "Rede Principal"

Muitos outros esquemas fazem referência a uma "Rede Principal". Você também pode se perguntar como todos esses [dispositivos](../ae2-mechanics/devices.md) se
juntam num sistema funcional. Aqui está um exemplo:

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/small_base_network.snbt" />

    <BoxAnnotation color="#33dd33" min="5 1 10" max="9 7 14" thickness="0.05">
        Um grande conjunto de provedores de padrões e montadores dá muito espaço para padrões de fabricação, corte de pedra e ferraria.
        O padrão xadrez permite aos provedores utilizar vários montadores em paralelo mantendo tudo compacto.
        Grupos de 8 tornam impossível que os canais sejam roteados incorretamente.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 10 12" max="14 11 14" thickness="0.05">
        Você não precisa de um controlador tão grande de verdade; todos aqueles designs de anéis e cubos enormes que você vê nas bases
        das pessoas são principalmente só para ficar bonito.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 12 13" max="14 13 14" thickness="0.05">
        Toda boa rede tem uma célula de energia, para permitir maior entrada de energia por tique de jogo e
        suavizar as flutuações de energia.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="2 1 10" max="4 4 13" thickness="0.05">
        Você provavelmente vai querer usar a fonte de energia de algum outro mod, um reator ou painel solar ou gerador ou
        seja lá o que for. Câmaras de Vibração são mais ou menos, mas o AE2 é projetado para ser usado num modpack e usar o
        gerador de energia principal da sua base.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="15 1 9" max="16 3 14" thickness="0.05">
        Fachadas podem ser usadas para esconder coisas atrás de paredes.
    </BoxAnnotation>
    <BoxAnnotation color="#33dd33" min="15 3 12" max="16 10 14" thickness="0.05">
        Fachadas podem ser usadas para esconder coisas atrás de paredes.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 9 7" max="14 10 9" thickness="0.05">
        Você não precisa de tantos gabinetes e células para o seu armazenamento geral; 2–4 Gabinetes de células de 4k ou 16k
        quase sempre são suficientes.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 9 10" max="14 11 11" thickness="0.05">
        Para armazenamento em massa, você quer células grandes filtradas para itens específicos, em gabinetes separados com
        prioridade mais alta.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="10 9 13" max="11.7 13 14" thickness="0.05">
        Abastecimento automático baseado em interface.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="6 10 12" max="9 12 15" thickness="0.05">
        A expansão lógica do esquema de automação do carregador para vários carregadores.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="2 10 12" max="5 11 15" thickness="0.05">
        Outra forma de automatizar processadores, já que inscritores agora conseguem ejetar a saída automaticamente na 1.20.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="3 10 10" max="4 12 11" thickness="0.05">
        Outra forma de automatizar processadores, já que inscritores agora conseguem ejetar a saída automaticamente na 1.20.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="7.2 9.2 8.2" max="7.8 10 8.8" thickness="0.05">
        O ponto de acesso sem fio está no meio porque seu alcance é esférico.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="14 1 2" max="16 5 7" thickness="0.05">
        Normalmente você terá 1–2 CPUs de fabricação grandes para trabalhos grandes e algumas menores para cuidar de trabalhos
        secundários enquanto as CPUs grandes estão ocupadas.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="5 3 6" max="6 4 7" thickness="0.05">
        Às vezes sub-redes podem precisar do seu próprio controlador se houver mais de 8 dispositivos (como distribuir para mais
        de 8 lugares).
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="7.3 1 3.3" max="9.7 4 6" thickness="0.05">
        Farm de certus.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="10.3 1 2.3" max="12.7 3.7 5" thickness="0.05">
        Automação de jogar na água.
    </BoxAnnotation>

  <IsometricCamera yaw="135" pitch="15" />
</GameScene>
