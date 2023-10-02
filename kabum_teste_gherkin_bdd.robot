*** Settings ***
Documentation   Essa suíte testa o site da Kabum.com.br
Resource        kabum_resources.robot
Test Setup      Abrir o navegador
#Test Teardown   Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Validar um usuário inválido senha ou e-mail incorretos
    [Documentation]     Esse teste verifica um usuário inválido no saite da Kabum.com.br
    [Tags]              logins
    Dado que estou na home page da Kabum.com.br
    E clico no botão "login"
    E preencho os campos de login
    Quando clicar no botão "Entrar"
    Então o sistema deverá retornar a seguinte mensagem "E-mail, CPF, CNPJ ou senha incorretos"

Caso de Teste 02 - Fazer a busca de produto
    [Documentation]     Esse teste efetua a busca de um produto e verifica o resultado da busca
    [Tags]              busca_produtos categorias
     Dado que estou na home page da Kabum.com.br
     Quando digito "Iphone" no campo de pesquisa
     E clico no botão de pesquisar
     Então o sistema deverá retornar o item pesquisado

Caso de Teste 03 - Adicionar um produto de categoria ao carrinho atalho "Carrinho"
    [Documentation]     Esse teste navega até a subcategoria Acessórios para Cooler
    ...                 e adiciona um produto no carrinho através do botão de atalho Carrinho
    [Tags]              adiciona_produto_carrinho
    Dado que estou na home page da Kabum.com.br
    Quando entro no menu "Departamentos" > Hardware > Coolers > Acessórios para Cooler
    E adiciono um produto no carrinho usando botao atalho "Carrinho"
    Então o sistema deverá exibir uma mensagem informando que o produto foi adicionado com sucesso

Caso de Teste 04 - Adicionar um produto de categoria ao carrinho botão "Comprar"
    [Documentation]     Esse teste navega até a subcategoria Acessórios para Cooler
    ...                 e adiciona um produto no carrinho através do botão Comprar
    [Tags]              adiciona_produto_comprar
    Dado que estou na home page da Kabum.com.br
    Quando entro no menu "Departamentos" > Hardware > Coolers > Acessórios para Cooler
    E adiciono um produto no carrinho usando botao atalho "Comprar"
    Então o sistema deverá me direcionar para uma página informando que o produto foi adicionado com sucesso
#
#




