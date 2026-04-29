*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_DESAPARECEN}    ${URL_BASE}/disappearing_elements
${BTN_GALLERY}        xpath=//a[text()='Gallery']

*** Keywords ***
Navegar A Pagina Elementos Desaparecen
    Go To    ${URL_DESAPARECEN}

Recargar Pagina
    Reload Page

Verificar Boton Gallery Existe
    Page Should Contain Element    ${BTN_GALLERY}

Verificar Boton Gallery No Existe
    Page Should Not Contain Element    ${BTN_GALLERY}