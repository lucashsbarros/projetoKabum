# Teste Kabum

Esse repositório contém testes automatizados através da ferramenta Robot Framework, com Selenium Labrary, sendo utilizado Keywords na sua base (*sendo Keywords palavras chaves para efetuar os testes automatizados*), foi criado os scripts de teste de forma **Procedural** e **GHERKIN com BDD**  e para a realização dos testes utilizamos o site da Kabum. 
## Tecnologias Utilizadas

 1. Python mais atual  *(versão 3.11.5)* Baixar do site:
    https://www.python.org/downloads/
 2. Robot Framework *(versão 6.1.1)*
	a) comando para baixar via CMD `pip install robotframework`
	b) caso já tenha instalado uma versão do robot framework utilizar o comando `pip install -U robotframework` para atualizar e `robot --version` para conferir a versão instalada.
	
 3. Instalando as Libraries
a) SeleniumLibrary *(versão 6.1.1)*
site: https://github.com/robotframework/SeleniumLibrary/#installation
comando instalar/atualizar: `pip install -U robotframework-seleniumlibrary`	

	b) RequestLibrary *(versão 1.0a4)*
site: https://github.com/MarketSquare/robotframework-requests#readme
comando instalar/atualizar: `pip install -U robotframework-requests`

	**Observação:** caso queira conferir quais versões estão instaladas digite o comando abaixo: `pip list`

 4. Instalando editor de Código

	a) DRACULA OFFICIAL
Pesquisar na parte de Plugins da sua IDE (no nosso caso foi o IntelliJ) 
	
	b) Robot Framework Language Server 1.11
Pesquisar na parte de Plugins da sua IDE (no nosso caso foi o IntelliJ) 

 5. Instalação de WebDrivers
	a) CHROME *(versão 116)*
	Link: 
	https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/116.0.5845.96/win64/chromedriver-win64.zip	
	
	b) FIREFOX *(versão 117)*
		link: https://github.com/mozilla/geckodriver/releases	
		
	**IMPORTANTE 1** - Deve baixar o WebDrive compativel com a versão do seu navegador.
	**IMPORTANTE 2** - Caso atualize o navegador é OBRIGATÓRIO atualizar os webdrivers
	
	c) Ir em "Editar variaveis do programa" ir até a opção PATH, dar dois cliques, copiar e colar o caminho que houver SCRIPTS no final. Por fim copiar os dois webdrivers .EXE dentro desse caminho 

	d) Conferir se as instalações estão corretas no CMD:

    chromedriver --version
    geckodriver --version

 6. Instalar extensão TRUEPATH (qaworld.ga) no seu navegador

	  link: https://chrome.google.com/webstore/detail/truepath/mgjhkhhbkkldiihlajcnlfchfcmhipmn?gclid=CjwKCAjwrranBhAEEiwAzbhNtXfzMkKUuClIwBabo0ibxFEoljG1MDnTvC2dTwbNl9TrYVFL8YagqhoCtC0QAvD_BwE

## Testes Automatizados
Nesse repositório consta os seguintes cenários de testes:

 - **Caso de Teste 01** - Validar um usuário inválido senha ou e-mail incorretos
 - **Caso de Teste 02** - Fazer a busca de produto
 - **Caso de Teste 03** - Adicionar um produto de categoria ao carrinho atalho "Carrinho"
 - **Caso de Teste 04** - Adicionar um produto de categoria ao carrinho botão "Comprar" 
 
 # Notas Gerais
 Referente ao **Caso de Teste 01**, existe outras formas de fazer uma validação de um usuário inválido, sendo elas: 
 
 - E-mail incorreto
 - Senha incorreta
 - Não preencher e-mail e preencher senha
 - Não preencher senha e preencher e-mail
 - Não preencher nenhum campo
 
 Referente aos **Casos de Teste 03** e **04**, ainda existe mais uma forma de comprar pelo site que seria clicando no produto, o site leva até a página do produto e por lá podemos clicar no botão COMPRAR. 
 Esse trecho de códifo que está comentado no arquivo kabum_teste.robot, o mesmo foi escrito de forma PROCEDURAL apenas.
