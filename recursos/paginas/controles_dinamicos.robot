*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_DINAMICOS}     ${URL_BASE}/dynamic_controls
${BTN_REMOVE}        xpath=//button[text()='Remove']
${BTN_ENABLE}        xpath=//button[text()='Enable']
${CHECKBOX_DIV}      id=checkbox
${INPUT_TEXTO}       xpath=//form[@id='input-example']/input
${MENSAJE_CARGA}     id=loading

*** Keywords ***
Navegar A Pagina Controles Dinamicos
    Go To    ${URL_DINAMICOS}

Hacer Clic En Remover
    Click Button    ${BTN_REMOVE}
    Wait Until Element Is Not Visible    ${MENSAJE_CARGA}

Verificar Checkbox Removido
    Page Should Not Contain Element    ${CHECKBOX_DIV}

Hacer Clic En Habilitar
    Click Button    ${BTN_ENABLE}
    Wait Until Element Is Not Visible    ${MENSAJE_CARGA}

Verificar Input Habilitado
    Element Should Be Enabled    ${INPUT_TEXTO}