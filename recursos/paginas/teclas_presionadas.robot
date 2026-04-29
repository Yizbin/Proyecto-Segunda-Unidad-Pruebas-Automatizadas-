*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_TECLAS}        ${URL_BASE}/key_presses
${INPUT_OBJETIVO}    id=target
${RESULTADO_TEXTO}   id=result

*** Keywords ***
Navegar A Pagina Teclas Presionadas
    Go To    ${URL_TECLAS}

Presionar Tecla En Input
    [Arguments]    ${tecla}
    Press Keys     ${INPUT_OBJETIVO}    ${tecla}

Verificar Mensaje De Tecla
    [Arguments]    ${mensaje_esperado}
    Element Should Contain    ${RESULTADO_TEXTO}    ${mensaje_esperado}