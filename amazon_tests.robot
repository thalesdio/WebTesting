*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br. Setup é executado antes da suite de teste, e Teardown é executado ao final da suite.
Resource    amazon_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Test Case 01 - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da amazon.com.br
    [Tags]             menus    categorias
    Acessar a home page do site amazon.com.br
    Entrar no menu "Eletronicos"
    Verificar se aparece a frase "Eletronicos e Tecnologia"
    Verificar se o titulo da pagina exibe "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Test Case 02 - Pesquisa de Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    Acessar a home page do site amazon.com.br
    Digitar o nome do produto "Xbox Series S"
    Clicar no botão de Pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"