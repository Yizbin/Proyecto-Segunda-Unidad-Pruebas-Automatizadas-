*** Settings ***
Documentation     Pruebas de Autenticación Básica en Herokuapp
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            the-internet.herokuapp.com/basic_auth
${VALID_USER}     admin
${VALID_PASS}     admin
${INVALID_USER}   admin1
${INVALID_PASS}   admin1

*** Test Cases ***
Escenario 1: Log in con credenciales válidas
    [Documentation]    Valida que el acceso sea exitoso usando admin:admin

    Open Browser    https://${VALID_USER}:${VALID_PASS}@${URL}    ${BROWSER}
    Element Should Contain    tag=p    Congratulations! You must have the proper credentials.
    [Teardown]    Close Browser

Escenario 2: Log in con credenciales inválidas
    [Documentation]    Valida que la autenticación falle con credenciales erróneas

    Open Browser    https://${INVALID_USER}:${INVALID_PASS}@${URL}    ${BROWSER}
    Page Should Not Contain    Congratulations!