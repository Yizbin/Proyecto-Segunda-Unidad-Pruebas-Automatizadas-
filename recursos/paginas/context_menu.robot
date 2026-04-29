*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_CONTEXT_MENU}    ${URL_BASE}/context_menu
${CAJA_CONTEXTUAL}     id=hot-spot

*** Keywords ***
Navegar A Pagina Context Menu
    Go To    ${URL_CONTEXT_MENU}

Hacer Clic Derecho En La Caja
    Open Context Menu    ${CAJA_CONTEXTUAL}

Verificar Alerta Y Aceptar
    ${mensaje_alerta}=    Handle Alert    action=ACCEPT
    Should Be Equal    ${mensaje_alerta}    You selected a context menu

Verificar Alerta Cerrada
    Alert Should Not Be Present