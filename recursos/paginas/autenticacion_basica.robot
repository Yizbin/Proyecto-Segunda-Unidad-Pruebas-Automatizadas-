*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${DOMINIO_AUTH}       the-internet.herokuapp.com/basic_auth
${MENSAJE_EXITO}      Congratulations! You must have the proper credentials.

*** Keywords ***
Ingresar Con Credenciales Basicas
    [Arguments]    ${usuario}    ${password}
    Go To    https://${usuario}:${password}@${DOMINIO_AUTH}

Verificar Autenticacion Exitosa
    Page Should Contain    ${MENSAJE_EXITO}

Verificar Autenticacion Fallida
    Page Should Not Contain    ${MENSAJE_EXITO}