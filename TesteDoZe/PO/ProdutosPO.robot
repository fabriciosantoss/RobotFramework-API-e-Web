*** Settings ***
Library      SeleniumLibrary
*** Variables ***
${Div_Endereco}              id:address-container
${texto}                     Avenida Afrânio Peixoto, 57 Praia Grande, Salvador - BA
${Btn_Maior18}               id:age-gate-button-yes
${Btn_Menor18}               id:age-gate-button-no

*** Keywords ***

E sou maior de 18 anos
     Wait Until Element Is Enabled     ${Btn_Maior18}    10
     Click Button                      ${Btn_Maior18}
Então o endereco deve ser visivel no header
    Element Should Contain         ${Div_Endereco}  ${texto}



