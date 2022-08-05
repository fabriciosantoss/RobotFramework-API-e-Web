*** Settings ***
Resource        ./resource/ResourceAPI.robot
Suite Setup     Conectar a minha API


*** Test Cases ***
Realizar uma requisição válida
    Dado que eu faço uma requisição válida
    Então deve ser retornado o status code  200
Realizar requisição para validação de um campo obrigatório
    Dado que eu faço uma requisição inválida
    Então deve ser retornado o status code  400
Realizar requisição para validar a autenticação
    Dado que eu faço uma requisição com o appid inválido
    Então deve ser retornado o status code  401

