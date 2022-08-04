*** Settings ***
Library      SeleniumLibrary
*** Variables ***
${Div_Endereco}               id:address-container
${txt_Endereco}               Avenida Afrânio Peixoto, 57 Praia Grande, Salvador - BA
${txt_EnderecoEditado}        Rua Carlos Gomes, 5 Dois de Julho, Salvador - BA
${Btn_Maior18}                id:age-gate-button-yes
${Btn_Menor18}                id:age-gate-button-no
${Alert_menor18}              xpath://div[@class="css-zigog8"]//p[1]
${txt_ProibidoMenor18}        Você precisa ter 18 anos ou mais para consumir bebidas alcoólicas.
${Janela_Ambev}               Consumo Responsável - Ambev
${Janela_Principal}           Zé Delivery: Entrega de bebidas geladas a preço baixo
${View_Endereco}              xpath://*[@id="delivery-options-card"]/div[2]
${Btn_AlterarEndereço}        id:delivery-options-tool-tip-address
${Ipt_Endereco}               id:address-search-input-address
${Chkb_SemComplemento}        name:withoutComplement
${Li_EnderecoEditado}         xpath://ul//li[@id][1]
${Lbl_NumeroEndereco}         id:address-details-input-number
${Chkb_SemComplemento}        name:withoutComplement
${Btn_Localizacao}            id:address-details-button-others
${Btn_Produtos}               id:address-details-button-continue



*** Keywords ***

E sou maior de 18 anos
     Wait Until Element Is Enabled     ${Btn_Maior18}    10
     Click Button                      ${Btn_Maior18}
Então o endereco deve ser visivel no header
    Element Should Contain             ${Div_Endereco}    ${txt_Endereco}

E sou menor de 18 anos
     Wait Until Element Is Enabled     ${Btn_Menor18}     10
     Click Button                      ${Btn_Menor18}
     Sleep                             5
     Switch Window                     ${Janela_Ambev}     None    1
     Close Window
     
Então deve ser exibido a mensagem de proibido bebida para menor de 18
    Switch Window                     ${Janela_Principal}  None  1
    Wait Until Element Is Enabled     ${Alert_menor18}      10
    Element Should Contain            ${Alert_menor18}      ${txt_ProibidoMenor18}
Quando eu altero o endereço
     Click Element                    ${View_Endereco}
     Click Element                    ${Btn_AlterarEndereço}
     Input Text                       ${Ipt_Endereco}             Rua Carlos Gomes Centro, Salvador - BA, Brasil
     Wait Until Element Is Visible    ${Li_EnderecoEditado}       10
     Click Element                     ${Li_EnderecoEditado} 
     Wait Until Element Is Visible    ${Lbl_NumeroEndereco}       10
     Input Text                       ${Lbl_NumeroEndereco}       5
     Click Element                    ${Chkb_SemComplemento}
     Click Button                     ${Btn_Produtos}
Então o endereco editado deve ser visivel no header
    Wait Until Element Is Enabled      ${Div_Endereco}    10
    Element Should Contain             ${Div_Endereco}    ${txt_EnderecoEditado}
 
