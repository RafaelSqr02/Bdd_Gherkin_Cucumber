*** Settings ***
Resource        ../resource/resource.robot

*** Test Cases ***
1 - Pesquisando Flamengo no Globo Esporte
    Dado que o usuário acesse o site Globo Esporte
    Quando o mesmo pesquise Flamengo na barra de Pesquisa
    Então o usuário é redirecionado para as Notícias do Flamengo

2 - Pesquisando Flamengo no Google e entrando no site do time
    Dado que o usuário acesse o site do google e pesquise Flamengo
    Quando Eu encontrar o Site do Flamengo
    E acessar o mesmo
    Então acesse a FLA TV

3 - Realizar Login no Sauce Demo
    Dado que o usuário logue no Sauce Demo
    Então Espero que meu Login seja validado

4 - Por todos os produtos no carrinho 
    Dado que o usuário logue no Site
    E espero que o Login seja validado
    Quando o user por todos os produtos no carrinho
    E espero que os produtos sejam salvos no mesmo
    Então desejo finalizar a compra

5 - Logar com User incorreto
    Dado que o usuário utilize um user incorreto
    Então o sistema não deverá permitir Login do mesmo
    
6 - Logar com Senha incorreta
    Dado que o usuário utilize uma senha incorreta
    Então o sistema não deverá permitir Login do user