*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVEGADOR}    chrome
${URL_BASE}     https://the-internet.herokuapp.com

*** Keywords ***
Abrir Navegador Principal
    Open Browser    ${URL_BASE}    ${NAVEGADOR}
    Maximize Browser Window

Cerrar Navegador Principal
    Close Browser