*** Settings ***
Documentation   Essa suíte testa o site da Kabum.com.br
Resource        kabum_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Validar um usuário inválido senha ou e-mail incorretos
    [Documentation]     Esse teste verifica um usuário inválido no saite da Kabum.com.br
    [Tags]              logins
    Acessar a home page do site Kabum.com.br
    Clicar no botão "Login"
    Preencher dados
    Clicar no botão "Entrar"
    O sistema deverá retornar a seguinte mensagem "E-mail, CPF, CNPJ ou senha incorretos"

Caso de Teste 02 - Fazer a busca de produto
    [Documentation]     Esse teste efetua a busca de um produto e verifica o resultado da busca
    [Tags]              busca_produtos categorias
    Acessar a home page do site Kabum.com.br
    Digitar o nome "Iphone" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto pesquisado

Caso de Teste 03 - Adicionar um produto de categoria ao carrinho atalho "Carrinho"
    [Documentation]     Esse teste navega até a subcategoria Acessórios para Cooler
    ...                 e adiciona um produto no carrinho através do botão de atalho Carrinho
    [Tags]              adiciona_produto_carrinho
    Acessar a home page do site Kabum.com.br
    Entrar no menu Departamentos > Hardware > Coolers > Acessórios para Cooler
    Adicionar produto no carrinho usando botao atalho "Carrinho"
    Validar se o produto está no carrinho usando botao atalho "Carrinho"

Caso de Teste 04 - Adicionar um produto de categoria ao carrinho botão "Comprar"
    [Documentation]     Esse teste navega até a subcategoria Acessórios para Cooler
    ...                 e adiciona um produto no carrinho através do botão Comprar
    [Tags]              adiciona_produto_comprar
    Acessar a home page do site Kabum.com.br
    Entrar no menu Departamentos > Hardware > Coolers > Acessórios para Cooler
    Adicionar produto no carrinho usando botao "Comprar"
    Validar se o produto está no carrinho usando botao "Comprar"

#Caso de Teste 05 (Extra) - Adicionar um produto de categoria ao carrinho clicando no produto
#    [Documentation]     Esse teste navega até a subcategoria Acessórios para Cooler
#        ...             e adiciona um produto no carrinho através do botão Comprar
#    [Tags]              adiciona_produto
#    Acessar a home page do site Kabum.com.br
#    Entrar no menu Departamentos > Haqrdware > Coolers > Acessórios para Cooler
#    Clicar no produto
#    Validar página do produto
#    Clicar no botão comprar
#    Validar produto no carrinho




