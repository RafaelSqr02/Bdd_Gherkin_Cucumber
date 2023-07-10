*** Settings ***
Resource        ../resource/resource.robot

*** Variables ***

#VARIABLES PAGE GLOBO ESPORTE
${URL}           https://ge.globo.com
${locatorFLA}    //input[@id='busca-campo']
${PageFLA}       //a[normalize-space()='flamengo']

#VARIABLES GOOGLE E SITE DO FLAMENGO
${URL1}          https://www.google.com.br/
${Google}        //textarea[@id='APjFqb']
${GoogleFLA}     //h3[normalize-space()='Clube de Regatas do Flamengo']
${SiteFLA}       //a[@title='Acesse a FlaTV+']//p[@class='pb-0 mb-0 text-uppercase']
${FlaTV}         //a[@title='Acesse a FlaTV+']//p[@class='pb-0 mb-0 text-uppercase']

#VARIABLES SAUCE DEMO
${URL2}             https://www.saucedemo.com/
${Login}            //input[@id='user-name']
${Senha}            //input[@id='password']
${Botao}            //input[@id='login-button']
${Produto}          //button[@id='add-to-cart-sauce-labs-backpack']                  
${Produto1}         //button[@id='add-to-cart-sauce-labs-bike-light']                
${Produto2}         //button[@id='add-to-cart-sauce-labs-bolt-t-shirt']              
${Produto3}         //button[@id='add-to-cart-sauce-labs-fleece-jacket']             
${Produto4}         //button[@id='add-to-cart-sauce-labs-onesie']                    
${Produto5}         //button[@id='add-to-cart-test.allthethings()-t-shirt-(red)']   
${CarrinhoAll}      //*[@id="shopping_cart_container"]
${BotaoCheckout}    //button[@id='checkout']




