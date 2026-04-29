*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_LOGIN}         ${URL_BASE}/login
${INPUT_USUARIO}     id=username
${INPUT_PASSWORD}    id=password
${BTN_LOGIN}         css=button.radius
${BTN_LOGOUT}        css=a.button.secondary.radius
${MENSAJE_FLASH}     id=flash

*** Keywords ***
Navegar A Pagina De Login
    Go To    ${URL_LOGIN}

Ingresar Usuario
    [Arguments]    ${usuario}
    Input Text     ${INPUT_USUARIO}    ${usuario}

Ingresar Contrasena
    [Arguments]    ${password}
    Input Password    ${INPUT_PASSWORD}    ${password}

Hacer Clic En Login
    Click Button    ${BTN_LOGIN}

Hacer Clic En Logout
    Click Element   ${BTN_LOGOUT}

Verificar Mensaje De Alerta
    [Arguments]    ${mensaje_esperado}
    Element Should Contain    ${MENSAJE_FLASH}    ${mensaje_esperado}