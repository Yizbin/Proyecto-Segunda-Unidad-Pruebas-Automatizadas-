*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_DRAG_DROP}    ${URL_BASE}/drag_and_drop
${CAJA_A}           id=column-a
${CAJA_B}           id=column-b
${HEADER_A}         css=#column-a header
${HEADER_B}         css=#column-b header

*** Keywords ***
Navegar A Pagina Drag And Drop
    Go To    ${URL_DRAG_DROP}

Arrastrar Caja A Hacia Caja B
    Drag And Drop    ${CAJA_A}    ${CAJA_B}

Arrastrar Caja B Hacia Caja A
    Drag And Drop    ${CAJA_B}    ${CAJA_A}

Verificar Intercambio De Cajas
    [Arguments]    ${texto_esperado_en_A}
    ${texto_actual}=    Get Text    ${HEADER_A}
    Should Be Equal    ${texto_actual}    ${texto_esperado_en_A}