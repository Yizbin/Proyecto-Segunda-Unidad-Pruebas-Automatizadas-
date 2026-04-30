*** Settings ***
Library    SeleniumLibrary
Resource   ../recursos/base.robot
Resource   ../recursos/paginas/context_menu.robot


*** Test Cases ***

Caso Normal

    [Documentation]    Es el caso promedio del caso de prueba
    [Tags]     normal prueba

    Navegar A Pagina Context Menu
    Hacer Clic Derecho En La Caja
    Verificar Alerta Y Aceptar
    Verificar Alerta Cerrada