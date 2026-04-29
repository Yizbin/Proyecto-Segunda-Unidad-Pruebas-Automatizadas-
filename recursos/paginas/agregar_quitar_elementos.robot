*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_AGREGAR_QUITAR}    ${URL_BASE}/add_remove_elements/
${BTN_AGREGAR}           xpath=//button[text()='Add Element']
${BTN_QUITAR}            xpath=//button[text()='Delete']

*** Keywords ***
Navegar A Pagina Agregar Quitar
    Go To    ${URL_AGREGAR_QUITAR}

Hacer Clic En Agregar Elemento
    Click Button    ${BTN_AGREGAR}

Hacer Clic En Quitar Elemento
    Click Button    ${BTN_QUITAR}

Verificar Elemento Agregado
    Page Should Contain Element    ${BTN_QUITAR}

Verificar Elemento Removido
    [Arguments]    ${cantidad_esperada}
    ${cantidad_actual}=    Get Element Count    ${BTN_QUITAR}
    Should Be Equal As Integers    ${cantidad_actual}    ${cantidad_esperada}