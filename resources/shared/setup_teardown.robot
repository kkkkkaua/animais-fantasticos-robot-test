*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://kkkkkaua-animais-fantasticos.netlify.app/
${BROWSER}    Chrome

*** Keywords ***
Abra o navegador na url do site animais fantásticos
    Open Browser    ${URL}    ${BROWSER}

E feche o navegador
    Close Browser
