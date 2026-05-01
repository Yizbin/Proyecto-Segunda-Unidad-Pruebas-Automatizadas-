*** Settings ***
Documentation     Pruebas de selección de Checkboxes
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://the-internet.herokuapp.com/checkboxes
${CHECKBOX_1}     xpath=(//input[@type="checkbox"])[1]
${CHECKBOX_2}     xpath=(//input[@type="checkbox"])[2]

*** Test Cases ***
Escenario: Manejo de Checkboxes
    [Documentation]    Selecciona y valida ambos checkboxes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Select Checkbox    ${CHECKBOX_1}
    Checkbox Should Be Selected    ${CHECKBOX_1}

    Select Checkbox    ${CHECKBOX_2}
    Checkbox Should Be Selected    ${CHECKBOX_2}

    [Teardown]    Close Browser