*** Settings ***
Library             SeleniumLibrary
Resource            ./PO/HomePO.robot
Resource            ./PO/ProdutosPO.robot
Resource            ./resource/resource_do_ze.robot
Test Setup          Vai Ze
Test Teardown       Xau Ze


*** Test Cases ***
Colocar o endereço
    Dado que eu insiro o endereco
    E sou maior de 18 anos
    Então o endereco deve ser visivel no header

