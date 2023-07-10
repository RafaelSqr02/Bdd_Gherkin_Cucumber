*** Settings ***
Documentation    Exemplos de cenários com BDD, Gherkim e Cucumber
Library          SeleniumLibrary
Library    Telnet
Resource         ../Tests/Tests.robot
Resource         ../variables/variables.robot

*** Keywords ***
1 - Pesquisando Flamengo no Globo Esporte
    [Tags]    Pesquisar Flamengo no GE

Dado que o usuário acesse o site Globo Esporte
    Open Browser    ${URL}
    Maximize Browser Window
Quando o mesmo pesquise Flamengo na barra de Pesquisa
    Wait Until Element Is Visible    ${locatorFLA}    20s
    Input Text                       ${locatorFLA}   Flamengo 
    Press Keys                       ${locatorFLA}    ENTER     
Então o usuário é redirecionado para as Notícias do Flamengo
    Wait Until Element Is Visible    ${PageFLA}    20s
    Close Browser

2 - Pesquisando Flamengo no Google e entrando no site do time
    [Tags]    Pesquisar Flamengo no Google e acessar o Site do mesmo

Dado que o usuário acesse o site do google e pesquise Flamengo
    Open Browser    ${URL1}
    Maximize Browser Window
Quando Eu encontrar o Site do Flamengo
    Wait Until Element Is Visible    ${Google}     20s
    Input Text                       ${Google}     Flamengo
    Press Keys                       ${Google}     ENTER 
E acessar o mesmo
    Wait Until Element Is Visible    ${GoogleFLA}     10s
    Click Element                    ${GoogleFLA}
Então acesse a FLA TV
    Wait Until Element Is Visible    ${SiteFLA}     
    Click Button                   ${FlaTV}

3 - Realizar Login no Sauce Demo
    [Tags]    Realizar Login 

Dado que o usuário logue no Sauce Demo
    Open Browser    ${URL2}
    Maximize Browser Window
    Wait Until Element Is Visible    ${Login}     10s

Então Espero que meu Login seja validado
    Input Text          ${Login}   standard_user
    Sleep    5s
    Input Password      ${Senha}    secret_sauce
    Click Button        ${Botao}
    Sleep    5s
    Close Browser

4 - Por todos os produtos no carrinho 
    [Tags]    Por todos os Produtos no Carrinho
Dado que o usuário logue no Site
    Open Browser                     ${URL2}
    Maximize Browser Window
    Wait Until Element Is Visible    ${Login}     10s
E espero que o Login seja validado
    Input Text          ${Login}   standard_user
    Sleep    5s
    Input Password      ${Senha}    secret_sauce
    Click Button        ${Botao}  
Quando o user por todos os produtos no carrinho
    Click Button    ${Produto}                  
    Click Button    ${Produto1}                
    Click Button    ${Produto2}             
    Click Button    ${Produto3}             
    Click Button    ${Produto4}                    
    Click Button    ${Produto5}     
E espero que os produtos sejam salvos no mesmo
    Click Element       ${CarrinhoAll}
    Sleep    3S
    Click Element       ${BotaoCheckout}
Então desejo finalizar a compra
    Input Text          //input[@id='first-name']     Zico
    Input Text          //input[@id='last-name']      Flamengo
    Input Text          //input[@id='postal-code']    1981
    Click Element       //input[@id='continue']  
    Sleep    3s
    Click Element       //button[@id='finish']  
    Close Browser

5 - Logar com User incorreto
    [Tags]    CENÁRIO NEGATIVO - Logar com User incorreto
Dado que o usuário utilize um user incorreto
    Open Browser                     ${URL2}
    Maximize Browser Window
    Wait Until Element Is Visible    ${Login}     10s
Então o sistema não deverá permitir Login do mesmo
    Input Text          ${Login}    Ribamar
    Sleep    3s
    Input Password      ${Senha}    secret_sauce
    Click Button        ${Botao} 
    Close Browser

6 - Logar com Senha incorreta
    [Tags]    CENÁRIO NEGATIVO - Logar com Senha incorreta
Dado que o usuário utilize uma senha incorreta
    Open Browser                     ${URL2}
    Maximize Browser Window
    Wait Until Element Is Visible    ${Login}     10s
Então o sistema não deverá permitir Login do user
    Input Text          ${Login}   standard_user
    Input Password      ${Senha}    Vasco
    Click Button        ${Botao} 
    Sleep    3s
    Close Browser