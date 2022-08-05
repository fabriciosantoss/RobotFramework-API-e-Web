*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     OperatingSystem


*** Variables ***
${URI}          https://api.openweathermap.org
${Lat}          35
${Lon}          139
${App_Id}       220693f84aa74081af281e57cf029989


*** Keywords ***
Conectar a minha API
    Create Session    weatherAPI    ${URI}

Conversor Json
    ${Json}        Get File    ./resource/schema.json
    ${Json} =   ${Json.json()}
    [Return]    ${Json}          
Dado que eu faço uma requisição válida
    ${Response}    GET On Session    weatherAPI    url=/data/2.5/weather    params=lat=${Lat}&lon=${Lon}&appid=${App_Id}    expected_status=any    
    Log    ${Response.text}
    Set Test Variable    ${Response}
Dado que eu faço uma requisição inválida
    ${Response}    GET On Session    weatherAPI    url=/data/2.5/weather    params=lat=&lon=${Lon}&appid=${App_Id}    expected_status=any    
    Log    ${Response.text}
    Set Test Variable    ${Response}
Dado que eu faço uma requisição com o appid inválido
    ${Response}    GET On Session    weatherAPI    url=/data/2.5/weather    params=lat=&lon=${Lon}&appid=2    expected_status=any    
    Log    ${Response.text}
    Set Test Variable    ${Response}

Então deve ser retornado o status code
    [Arguments]    ${StatusCode_Desejado}
    Should Be Equal As Strings    ${Response.status_code}    ${StatusCode_Desejado}