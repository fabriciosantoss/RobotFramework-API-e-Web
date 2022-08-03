*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}         http://www.ze.delivery
${Browser}     chrome

*** Keywords ***
Vai Ze
    Open Browser  ${URL}     ${Browser}
    Maximize Browser Window
    Set Selenium Speed    0.5
Xau Ze
    Close Browser