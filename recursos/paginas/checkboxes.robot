*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_CHECKBOXES}    ${URL_BASE}/checkboxes
${CHECKBOX_1}        xpath=(//input[@type='checkbox'])[1]
${CHECKBOX_2}        xpath=(//input[@type='checkbox'])[2]

*** Keywords ***
Navegar A Pagina Checkboxes
    Go To    ${URL_CHECKBOXES}

Seleccionar Primer Checkbox
    Select Checkbox    ${CHECKBOX_1}

Seleccionar Segundo Checkbox
    Select Checkbox    ${CHECKBOX_2}

Verificar Primer Checkbox Seleccionado
    Checkbox Should Be Selected    ${CHECKBOX_1}

Verificar Segundo Checkbox Seleccionado
    Checkbox Should Be Selected    ${CHECKBOX_2}