*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia

*** Keywords ***
Abrir navegador
    Open Browser    browser=edge
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    
Entrar no menu "Eletronicos"
    Click Element    locator=${MENU_ELETRONICOS}
    
Verificar se aparece a frase "Eletronicos e Tecnologia"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o titulo da pagina exibe "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Wait Until Page Contains    text=${NOME_CATEGORIA}

Digitar o nome do produto "Xbox Series S"
    Input Text    locator=twotabsearchtextbox    text="Xbox Series S"

Clicar no botão de Pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Wait Until Element Is Visible    locator=(//span[contains(.,'Console Xbox Series S')])[3]
