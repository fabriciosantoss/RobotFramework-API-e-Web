*** Settings ***
Library      SeleniumLibrary
*** Variables ***
${Ipt_Endereco}             id:address-search-input-address
${Btn_Endereco}             id:fake-address-search-input
${Btn_Entrar}               id:welcome-button-sign-in
${Btn_Produtos}             id:address-details-button-continue
${Li_Endereco}              xpath://li[@itemid="google-address"][1]
${Chkb_SemComplemento}      name:withoutComplement
${Btn_Cookie}               id:onetrust-accept-btn-handler

*** Keywords ***
Dado que eu insiro o endereco
    Wait Until Element Is Enabled    ${Btn_Cookie}    10
    Click Element                    ${Btn_Cookie}    
    Click Element                    ${Btn_Endereco}    
    Input Text                       ${Ipt_Endereco}    Av. Afrânio Peixoto, 57b
    Wait Until Element Is Enabled    ${Li_Endereco}     10
    Click Element                    ${Li_Endereco}
    Wait Until Element Is Enabled    ${Chkb_SemComplemento}     10
    Click Element                    ${Chkb_SemComplemento}
    Click Element                    ${Btn_Produtos}

E clico no Botão Entrar
    Click Button        ${Li_Endereco}



