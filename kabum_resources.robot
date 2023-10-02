*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}                              https://kabum.com.br
${ELEMENTO_LOGIN}                   //a[contains(.,'LOGIN')]
${BOTAO_ENTRAR}                     //button[@type='submit'][contains(.,'ENTRAR')]
${BOTAO_PESQUISA}                   //button[contains(@aria-label,'Buscar')]
${RESULTADO_PESQUISA}               //a[@href='https://www.kabum.com.br/celular-smartphone/smartphones/iphone'][contains(.,'IPhone')]
${MENU_DEPARTAMENTOS}               //span[contains(.,'DEPARTAMENTOS')]
${SUBCATEGORIA_HARDWARE}            //a[@href='https://www.kabum.com.br/hardware']
${SUBCATEGORIA_COOLERS}             //a[@href='https://www.kabum.com.br/hardware/coolers']
${SUBCATEGORIA_ACESSO_COOLERS}      //a[@href='https://www.kabum.com.br/hardware/coolers/acessorios-para-cooler']
${MOUSE}                            //img[contains(@title,'Controlador De Fan Bcf-03 Bluecase - Box Com Controle Remoto')]
${BOTAO_CARRINHO}                   //a[@data-smarthintproductid="183963"]//..//div//button[@class="sc-5b1e63c8-0 hneVTx"]
${TEXTO_CARRINHO}                   Produto adicionado com sucesso no carrinho
${BOTAO_COMPRAR}                    //a[@data-smarthintproductid="183963"]//..//div[@class="sc-6061e719-4 sc-6061e719-6 cvhwQf icTcdT availableFooterCard"]//button
${TEXTO_CARRINHO2}                  PRODUTO ADICIONADO NO CARRINHO
${TITULO}                           KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
${PRODUTO}                          //img[contains(@title,'Controlador De Fan Bcf-03 Bluecase - Box Com Controle Remoto')]
${PAGINA_PRODUTO}                   //span[@class='sc-16f86c3f-4 hezezy'][contains(.,'Código: 183963')]
${BOTAO_COMPRAR_PAG_PRODUTO}        //button[@class='sc-8b813326-0 dqSNwh'][contains(.,'COMPRAR')]
${MSG_PROD_ADICIONADO}              //strong[contains(.,'PRODUTO ADICIONADO NO CARRINHO')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome  options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Kabum.com.br
    Go To    url=${URL}
    Title Should Be    title=${TITULO}

Clicar no botão "Login"
    Click Element    locator=${ELEMENTO_LOGIN}

Preencher dados
    Input Text    locator=login      text=lucas@hotmail.com
    Input Text    locator=password   text=123456

Clicar no botão "Entrar"
    Click Button    locator=${BOTAO_ENTRAR}

O sistema deverá retornar a seguinte mensagem "${LOGIN_INVALIDO}"
   Wait Until Page Contains    text=${LOGIN_INVALIDO}

Digitar o nome "${PRODUTO_PESQUISADO}" no campo de pesquisa
    Input Text                          locator=input-busca    text=${PRODUTO_PESQUISADO}

Clicar no botão de pesquisa
    Click Element                       locator=${BOTAO_PESQUISA}

Verificar o resultado da pesquisa, listando o produto pesquisado
    Wait Until Element Is Visible       locator=${RESULTADO_PESQUISA}

Entrar no menu Departamentos > Hardware > Coolers > Acessórios para Cooler
    Mouse Over                          locator=${MENU_DEPARTAMENTOS}
    Wait Until Element Is Visible       locator=${SUBCATEGORIA_HARDWARE}
    Mouse Over                          locator=${SUBCATEGORIA_HARDWARE}
    Wait Until Element Is Visible       locator=${SUBCATEGORIA_COOLERS}
    Mouse Over                          locator=${SUBCATEGORIA_COOLERS}
    Wait Until Element Is Visible       locator=${SUBCATEGORIA_ACESSO_COOLERS}
    Click Element                       locator=${SUBCATEGORIA_ACESSO_COOLERS}

Adicionar produto no carrinho usando botao atalho "Carrinho"
    Execute Javascript  window.scroll(0,700)
    Mouse Over                          locator=${MOUSE}
    Sleep    1s
    Wait Until Element Is Visible       locator=${BOTAO_CARRINHO}
    Click Button                        locator=${BOTAO_CARRINHO}

Validar se o produto está no carrinho usando botao atalho "Carrinho"
    Wait Until Page Contains    text=${TEXTO_CARRINHO}

Adicionar produto no carrinho usando botao "Comprar"
    Execute Javascript  window.scroll(0,700)
    Sleep    1s
    Wait Until Element Is Visible       locator=${BOTAO_COMPRAR}
    Click Element    locator=${BOTAO_COMPRAR}


Validar se o produto está no carrinho usando botao "Comprar"
    Wait Until Page Contains    text=${TEXTO_CARRINHO2}

Clicar no produto
    Execute Javascript  window.scroll(0,700)
    Wait Until Element Is Visible       locator=${PRODUTO}
    Click Element    locator=${PRODUTO}

Validar página do produto
    Wait Until Element Is Visible   locator=${PAGINA_PRODUTO}

Clicar no botão comprar
    Wait Until Element Is Visible   locator=${BOTAO_COMPRAR_PAG_PRODUTO}
    Click Button                    locator=${BOTAO_COMPRAR_PAG_PRODUTO}
    
Validar produto no carrinho
    Wait Until Element Is Visible   locator=${MSG_PROD_ADICIONADO}

# ------------------------ GHERKIN STEPS ------------------------------

Dado que estou na home page da Kabum.com.br
    Acessar a home page do site Kabum.com.br

E clico no botão "login"
    Clicar no botão "Login"

E preencho os campos de login
    Preencher dados

Quando clicar no botão "Entrar"
    Clicar no botão "Entrar"

Então o sistema deverá retornar a seguinte mensagem "E-mail, CPF, CNPJ ou senha incorretos"
    O sistema deverá retornar a seguinte mensagem "E-mail, CPF, CNPJ ou senha incorretos"

Quando digito "Iphone" no campo de pesquisa
    Digitar o nome "Iphone" no campo de pesquisa

E clico no botão de pesquisar
    Clicar no botão de pesquisa

Então o sistema deverá retornar o item pesquisado
    Verificar o resultado da pesquisa, listando o produto pesquisado

Quando entro no menu "Departamentos" > Hardware > Coolers > Acessórios para Cooler
    Entrar no menu Departamentos > Hardware > Coolers > Acessórios para Cooler

E adiciono um produto no carrinho usando botao atalho "Carrinho"
    Adicionar produto no carrinho usando botao atalho "Carrinho"

Então o sistema deverá exibir uma mensagem informando que o produto foi adicionado com sucesso
    Validar se o produto está no carrinho usando botao atalho "Carrinho"

E adiciono um produto no carrinho usando botao atalho "Comprar"
    Adicionar produto no carrinho usando botao "Comprar"

Então o sistema deverá me direcionar para uma página informando que o produto foi adicionado com sucesso
    Validar se o produto está no carrinho usando botao "Comprar"