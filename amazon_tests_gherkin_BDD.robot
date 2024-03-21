*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br. Setup é executado antes da suite de teste, e Teardown é executado ao final da suite.
Resource    amazon_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Test Case 03 - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da amazon.com.br
    [Tags]             menus    categorias
    #Dado que estou na Home Page
    #Quando acessar o menu "Eletronicos"
    #Então o titulo da pagina exibe "Eletrônicos e Tecnologia | Amazon.com.br"
    #E o texto "Eletrônicos e Tecnologia" deve ser exibido na pagina
    #E a categoria "Computadores e Informática" deve ser exibido na pagina
   
Test Case 04 - Pesquisa de Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    #Dado que estou na Home Page
    #Quando pesquisar pelo produto "Xbox Series S"
    #Então o titulo da pagina exibe "Amazon.com.br : Xbox Series S"
    #E um produto da linha Xbox Series S deve ser mostrado
    