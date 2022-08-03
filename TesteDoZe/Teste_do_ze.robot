*** Settings ***
Library             SeleniumLibrary
Resource            ./PO/HomePO.robot
Resource            ./PO/ProdutosPO.robot
Resource            ./resource/resource_do_ze.robot
Test Setup          Vai Ze
Test Teardown       Xau Ze


*** Test Cases ***
Colocar o endereço sendo maior de 18
    Dado que eu insiro o endereco
    E sou maior de 18 anos
    Então o endereco deve ser visivel no header

Colocar o endereço sendo menor de 18
    Dado que eu insiro o endereco
    E sou menor de 18 anos
    Então deve ser exibido a mensagem de proibido bebida para menor de 18
